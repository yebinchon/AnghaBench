; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32 }
%struct.module_env = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.auth_xfer = type { i32 }
%struct.auth_master = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zones_notify(%struct.auth_zones* %0, %struct.module_env* %1, i32* %2, i64 %3, i32 %4, %struct.sockaddr_storage* %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.auth_zones*, align 8
  %13 = alloca %struct.module_env*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_storage*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.auth_xfer*, align 8
  %23 = alloca %struct.auth_master*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %12, align 8
  store %struct.module_env* %1, %struct.module_env** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.sockaddr_storage* %5, %struct.sockaddr_storage** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store %struct.auth_master* null, %struct.auth_master** %23, align 8
  %24 = load %struct.auth_zones*, %struct.auth_zones** %12, align 8
  %25 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %24, i32 0, i32 0
  %26 = call i32 @lock_rw_rdlock(i32* %25)
  %27 = load %struct.auth_zones*, %struct.auth_zones** %12, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones* %27, i32* %28, i64 %29, i32 %30)
  store %struct.auth_xfer* %31, %struct.auth_xfer** %22, align 8
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %22, align 8
  %33 = icmp ne %struct.auth_xfer* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %10
  %35 = load %struct.auth_zones*, %struct.auth_zones** %12, align 8
  %36 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %35, i32 0, i32 0
  %37 = call i32 @lock_rw_unlock(i32* %36)
  %38 = load i32*, i32** %21, align 8
  store i32 1, i32* %38, align 4
  store i32 0, i32* %11, align 4
  br label %63

39:                                               ; preds = %10
  %40 = load %struct.auth_xfer*, %struct.auth_xfer** %22, align 8
  %41 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %40, i32 0, i32 0
  %42 = call i32 @lock_basic_lock(i32* %41)
  %43 = load %struct.auth_zones*, %struct.auth_zones** %12, align 8
  %44 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %43, i32 0, i32 0
  %45 = call i32 @lock_rw_unlock(i32* %44)
  %46 = load %struct.auth_xfer*, %struct.auth_xfer** %22, align 8
  %47 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %17, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @az_xfr_allowed_notify(%struct.auth_xfer* %46, %struct.sockaddr_storage* %47, i32 %48, %struct.auth_master** %23)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = load %struct.auth_xfer*, %struct.auth_xfer** %22, align 8
  %53 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %52, i32 0, i32 0
  %54 = call i32 @lock_basic_unlock(i32* %53)
  %55 = load i32*, i32** %21, align 8
  store i32 1, i32* %55, align 4
  store i32 0, i32* %11, align 4
  br label %63

56:                                               ; preds = %39
  %57 = load %struct.auth_xfer*, %struct.auth_xfer** %22, align 8
  %58 = load %struct.module_env*, %struct.module_env** %13, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load %struct.auth_master*, %struct.auth_master** %23, align 8
  %62 = call i32 @xfr_process_notify(%struct.auth_xfer* %57, %struct.module_env* %58, i32 %59, i32 %60, %struct.auth_master* %61)
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %56, %51, %34
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @az_xfr_allowed_notify(%struct.auth_xfer*, %struct.sockaddr_storage*, i32, %struct.auth_master**) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @xfr_process_notify(%struct.auth_xfer*, %struct.module_env*, i32, i32, %struct.auth_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
