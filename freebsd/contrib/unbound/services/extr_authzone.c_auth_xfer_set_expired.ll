; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_set_expired.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_set_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32, i32, i32, i32 }
%struct.module_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.auth_zone = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*, i32)* @auth_xfer_set_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_xfer_set_expired(%struct.auth_xfer* %0, %struct.module_env* %1, i32 %2) #0 {
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store %struct.module_env* %1, %struct.module_env** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %9 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %8, i32 0, i32 4
  %10 = call i32 @lock_basic_lock(i32* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %13 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %15 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %14, i32 0, i32 4
  %16 = call i32 @lock_basic_unlock(i32* %15)
  %17 = load %struct.module_env*, %struct.module_env** %5, align 8
  %18 = getelementptr inbounds %struct.module_env, %struct.module_env* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @lock_rw_rdlock(i32* %20)
  %22 = load %struct.module_env*, %struct.module_env** %5, align 8
  %23 = getelementptr inbounds %struct.module_env, %struct.module_env* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %26 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %29 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %32 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.auth_zone* @auth_zone_find(%struct.TYPE_2__* %24, i32 %27, i32 %30, i32 %33)
  store %struct.auth_zone* %34, %struct.auth_zone** %7, align 8
  %35 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %36 = icmp ne %struct.auth_zone* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %3
  %38 = load %struct.module_env*, %struct.module_env** %5, align 8
  %39 = getelementptr inbounds %struct.module_env, %struct.module_env* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @lock_rw_unlock(i32* %41)
  br label %58

43:                                               ; preds = %3
  %44 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %45 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %44, i32 0, i32 1
  %46 = call i32 @lock_rw_wrlock(i32* %45)
  %47 = load %struct.module_env*, %struct.module_env** %5, align 8
  %48 = getelementptr inbounds %struct.module_env, %struct.module_env* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @lock_rw_unlock(i32* %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %54 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %56 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %55, i32 0, i32 1
  %57 = call i32 @lock_rw_unlock(i32* %56)
  br label %58

58:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
