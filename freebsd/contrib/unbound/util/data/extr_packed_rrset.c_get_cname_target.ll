; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_get_cname_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_get_cname_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.packed_rrset_data = type { i32, i32*, i32** }

@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_cname_target(%struct.ub_packed_rrset_key* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %10 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ntohs(i32 %12)
  %14 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ntohs(i32 %20)
  %22 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %83

25:                                               ; preds = %16, %3
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %30, %struct.packed_rrset_data** %7, align 8
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %83

36:                                               ; preds = %25
  %37 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %38 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %83

44:                                               ; preds = %36
  %45 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %46 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @sldns_read_uint16(i32* %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 4
  %59 = icmp ne i64 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %83

61:                                               ; preds = %44
  %62 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %63 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %62, i32 0, i32 2
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @dname_valid(i32* %67, i64 %68)
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %75 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32**, i32*** %5, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %73, %72, %60, %43, %35, %24
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i64 @dname_valid(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
