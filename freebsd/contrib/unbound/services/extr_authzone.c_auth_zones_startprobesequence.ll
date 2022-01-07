; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_startprobesequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_startprobesequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32 }
%struct.module_env = type { i32 }
%struct.auth_xfer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zones_startprobesequence(%struct.auth_zones* %0, %struct.module_env* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zones*, align 8
  %8 = alloca %struct.module_env*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %7, align 8
  store %struct.module_env* %1, %struct.module_env** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.auth_zones*, %struct.auth_zones** %7, align 8
  %14 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %13, i32 0, i32 0
  %15 = call i32 @lock_rw_rdlock(i32* %14)
  %16 = load %struct.auth_zones*, %struct.auth_zones** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones* %16, i32* %17, i64 %18, i32 %19)
  store %struct.auth_xfer* %20, %struct.auth_xfer** %12, align 8
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %12, align 8
  %22 = icmp ne %struct.auth_xfer* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load %struct.auth_zones*, %struct.auth_zones** %7, align 8
  %25 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %24, i32 0, i32 0
  %26 = call i32 @lock_rw_unlock(i32* %25)
  store i32 0, i32* %6, align 4
  br label %37

27:                                               ; preds = %5
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %12, align 8
  %29 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %28, i32 0, i32 0
  %30 = call i32 @lock_basic_lock(i32* %29)
  %31 = load %struct.auth_zones*, %struct.auth_zones** %7, align 8
  %32 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %31, i32 0, i32 0
  %33 = call i32 @lock_rw_unlock(i32* %32)
  %34 = load %struct.auth_xfer*, %struct.auth_xfer** %12, align 8
  %35 = load %struct.module_env*, %struct.module_env** %8, align 8
  %36 = call i32 @xfr_process_notify(%struct.auth_xfer* %34, %struct.module_env* %35, i32 0, i32 0, i32* null)
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %27, %23
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @xfr_process_notify(%struct.auth_xfer*, %struct.module_env*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
