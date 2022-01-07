; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_new_local_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_new_local_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_rrset = type { %struct.ub_packed_rrset_key*, %struct.local_rrset* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { %struct.packed_rrset_data*, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i32, i32 }
%struct.regional = type { i32 }
%struct.local_data = type { i32, i32, %struct.local_rrset* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@rrset_trust_prim_noglue = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.local_rrset* (%struct.regional*, %struct.local_data*, i32, i32)* @new_local_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.local_rrset* @new_local_rrset(%struct.regional* %0, %struct.local_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.local_rrset*, align 8
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.local_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca %struct.local_rrset*, align 8
  store %struct.regional* %0, %struct.regional** %6, align 8
  store %struct.local_data* %1, %struct.local_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.regional*, %struct.regional** %6, align 8
  %13 = call i64 @regional_alloc_zero(%struct.regional* %12, i32 16)
  %14 = inttoptr i64 %13 to %struct.local_rrset*
  store %struct.local_rrset* %14, %struct.local_rrset** %11, align 8
  %15 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %16 = icmp ne %struct.local_rrset* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.local_rrset* null, %struct.local_rrset** %5, align 8
  br label %99

19:                                               ; preds = %4
  %20 = load %struct.local_data*, %struct.local_data** %7, align 8
  %21 = getelementptr inbounds %struct.local_data, %struct.local_data* %20, i32 0, i32 2
  %22 = load %struct.local_rrset*, %struct.local_rrset** %21, align 8
  %23 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %24 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %23, i32 0, i32 1
  store %struct.local_rrset* %22, %struct.local_rrset** %24, align 8
  %25 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %26 = load %struct.local_data*, %struct.local_data** %7, align 8
  %27 = getelementptr inbounds %struct.local_data, %struct.local_data* %26, i32 0, i32 2
  store %struct.local_rrset* %25, %struct.local_rrset** %27, align 8
  %28 = load %struct.regional*, %struct.regional** %6, align 8
  %29 = call i64 @regional_alloc_zero(%struct.regional* %28, i32 40)
  %30 = inttoptr i64 %29 to %struct.ub_packed_rrset_key*
  %31 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %32 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %31, i32 0, i32 0
  store %struct.ub_packed_rrset_key* %30, %struct.ub_packed_rrset_key** %32, align 8
  %33 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %34 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %33, i32 0, i32 0
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %34, align 8
  %36 = icmp ne %struct.ub_packed_rrset_key* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %19
  %38 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.local_rrset* null, %struct.local_rrset** %5, align 8
  br label %99

39:                                               ; preds = %19
  %40 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %41 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %40, i32 0, i32 0
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %41, align 8
  %43 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %44 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %43, i32 0, i32 0
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %44, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %42, %struct.ub_packed_rrset_key** %47, align 8
  %48 = load %struct.regional*, %struct.regional** %6, align 8
  %49 = call i64 @regional_alloc_zero(%struct.regional* %48, i32 8)
  %50 = inttoptr i64 %49 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %50, %struct.packed_rrset_data** %10, align 8
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %52 = icmp ne %struct.packed_rrset_data* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %39
  %54 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.local_rrset* null, %struct.local_rrset** %5, align 8
  br label %99

55:                                               ; preds = %39
  %56 = load i32, i32* @rrset_trust_prim_noglue, align 4
  %57 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %58 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @sec_status_insecure, align 4
  %60 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %61 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %63 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %64 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %63, i32 0, i32 0
  %65 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %64, align 8
  %66 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.packed_rrset_data* %62, %struct.packed_rrset_data** %67, align 8
  %68 = load %struct.local_data*, %struct.local_data** %7, align 8
  %69 = getelementptr inbounds %struct.local_data, %struct.local_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %72 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %71, i32 0, i32 0
  %73 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %72, align 8
  %74 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %70, i32* %75, align 4
  %76 = load %struct.local_data*, %struct.local_data** %7, align 8
  %77 = getelementptr inbounds %struct.local_data, %struct.local_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %80 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %79, i32 0, i32 0
  %81 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %80, align 8
  %82 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %78, i32* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @htons(i32 %84)
  %86 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %87 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %86, i32 0, i32 0
  %88 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %87, align 8
  %89 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i8* %85, i8** %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i8* @htons(i32 %91)
  %93 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  %94 = getelementptr inbounds %struct.local_rrset, %struct.local_rrset* %93, i32 0, i32 0
  %95 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %94, align 8
  %96 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  %98 = load %struct.local_rrset*, %struct.local_rrset** %11, align 8
  store %struct.local_rrset* %98, %struct.local_rrset** %5, align 8
  br label %99

99:                                               ; preds = %55, %53, %37, %17
  %100 = load %struct.local_rrset*, %struct.local_rrset** %5, align 8
  ret %struct.local_rrset* %100
}

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
