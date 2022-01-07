; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_can_fallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_can_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32 }
%struct.auth_zone = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zones_can_fallback(%struct.auth_zones* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auth_zones*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.auth_zone*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %13 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %12, i32 0, i32 0
  %14 = call i32 @lock_rw_rdlock(i32* %13)
  %15 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.auth_zone* @auth_zone_find(%struct.auth_zones* %15, i32* %16, i64 %17, i32 %18)
  store %struct.auth_zone* %19, %struct.auth_zone** %11, align 8
  %20 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %21 = icmp ne %struct.auth_zone* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %24 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %23, i32 0, i32 0
  %25 = call i32 @lock_rw_unlock(i32* %24)
  store i32 1, i32* %5, align 4
  br label %50

26:                                               ; preds = %4
  %27 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %28 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %27, i32 0, i32 0
  %29 = call i32 @lock_rw_rdlock(i32* %28)
  %30 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %31 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %30, i32 0, i32 0
  %32 = call i32 @lock_rw_unlock(i32* %31)
  %33 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %34 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %39 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %26
  %44 = phi i1 [ true, %26 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.auth_zone*, %struct.auth_zone** %11, align 8
  %47 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %46, i32 0, i32 0
  %48 = call i32 @lock_rw_unlock(i32* %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
