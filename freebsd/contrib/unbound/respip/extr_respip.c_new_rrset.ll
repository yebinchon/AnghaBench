; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_new_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_new_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { %struct.packed_rrset_data*, %struct.ub_packed_rrset_key* }
%struct.packed_rrset_data = type { i32, i32 }
%struct.regional = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@rrset_trust_prim_noglue = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.regional*, i32, i32)* @new_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @new_rrset(%struct.regional* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.regional* %0, %struct.regional** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.regional*, %struct.regional** %5, align 8
  %11 = call i8* @regional_alloc_zero(%struct.regional* %10, i32 48)
  %12 = bitcast i8* %11 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %12, %struct.ub_packed_rrset_key** %9, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %14 = icmp ne %struct.ub_packed_rrset_key* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %18, %struct.ub_packed_rrset_key** %21, align 8
  %22 = load %struct.regional*, %struct.regional** %5, align 8
  %23 = call i8* @regional_alloc_zero(%struct.regional* %22, i32 8)
  %24 = bitcast i8* %23 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %24, %struct.packed_rrset_data** %8, align 8
  %25 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %26 = icmp ne %struct.packed_rrset_data* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %67

29:                                               ; preds = %17
  %30 = load i32, i32* @rrset_trust_prim_noglue, align 4
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @sec_status_insecure, align 4
  %34 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %35 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.packed_rrset_data* %36, %struct.packed_rrset_data** %39, align 8
  %40 = load %struct.regional*, %struct.regional** %5, align 8
  %41 = call i8* @regional_alloc_zero(%struct.regional* %40, i32 1)
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i8* %41, i8** %44, align 8
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %29
  %51 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %67

52:                                               ; preds = %29
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @htons(i32 %56)
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %59 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @htons(i32 %61)
  %63 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %64 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  store %struct.ub_packed_rrset_key* %66, %struct.ub_packed_rrset_key** %4, align 8
  br label %67

67:                                               ; preds = %52, %50, %27, %15
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  ret %struct.ub_packed_rrset_key* %68
}

declare dso_local i8* @regional_alloc_zero(%struct.regional*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
