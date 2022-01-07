; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_rrset_add_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_rrset_add_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32, i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64, i32*, i64* }

@sec_status_bogus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_rrset_add_ns(%struct.delegpt* %0, %struct.regional* %1, %struct.ub_packed_rrset_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca i64, align 8
  store %struct.delegpt* %0, %struct.delegpt** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %13 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %16, %struct.packed_rrset_data** %10, align 8
  %17 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %18 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @log_assert(i32 %22)
  %24 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %25 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @sec_status_bogus, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %31 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %4
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %88, %32
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %36 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %33
  %40 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %88

48:                                               ; preds = %39
  %49 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %50 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 2
  %56 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %57 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 2
  %63 = call i64 @dname_valid(i64 %55, i32 %62)
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %65 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @sldns_read_uint16(i64 %69)
  %71 = icmp ne i64 %63, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %48
  br label %88

73:                                               ; preds = %48
  %74 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %75 = load %struct.regional*, %struct.regional** %7, align 8
  %76 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %77 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 2
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @delegpt_add_ns(%struct.delegpt* %74, %struct.regional* %75, i64 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %92

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %72, %47
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %33

91:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @dname_valid(i64, i32) #1

declare dso_local i64 @sldns_read_uint16(i64) #1

declare dso_local i32 @delegpt_add_ns(%struct.delegpt*, %struct.regional*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
