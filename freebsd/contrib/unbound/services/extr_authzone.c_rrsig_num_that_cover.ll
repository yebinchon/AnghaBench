; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rrsig_num_that_cover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rrsig_num_that_cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_rrset = type { i64, %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i64, i64, i64*, i32* }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.auth_rrset*, i64, i64*)* @rrsig_num_that_cover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rrsig_num_that_cover(%struct.auth_rrset* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.auth_rrset*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.auth_rrset* %0, %struct.auth_rrset** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %11 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %10, i32 0, i32 1
  %12 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  store %struct.packed_rrset_data* %12, %struct.packed_rrset_data** %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %15 = icmp ne %struct.packed_rrset_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %18 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @log_assert(i32 %24)
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %65, %22
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %29 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = icmp ult i64 %27, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %26
  %37 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %38 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @rrsig_rdata_get_type_covered(i32 %42, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %56 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %60
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %52, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %26

68:                                               ; preds = %26
  %69 = load i64, i64* %9, align 8
  ret i64 %69
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @rrsig_rdata_get_type_covered(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
