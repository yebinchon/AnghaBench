; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_find_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_find_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.auth_zones = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth_zone* @auth_zones_find_zone(%struct.auth_zones* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.auth_zone*, align 8
  %6 = alloca %struct.auth_zones*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.auth_zone*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @auth_zone_find_less_equal(%struct.auth_zones* %15, i32* %16, i64 %17, i32 %18, %struct.auth_zone** %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load %struct.auth_zone*, %struct.auth_zone** %12, align 8
  store %struct.auth_zone* %22, %struct.auth_zone** %5, align 8
  br label %58

23:                                               ; preds = %4
  %24 = load %struct.auth_zone*, %struct.auth_zone** %12, align 8
  %25 = icmp ne %struct.auth_zone* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store %struct.auth_zone* null, %struct.auth_zone** %5, align 8
  br label %58

27:                                               ; preds = %23
  %28 = load %struct.auth_zone*, %struct.auth_zone** %12, align 8
  %29 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @dname_get_shared_topdomain(i32 %30, i32* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @dname_count_size_labels(i32* %33, i64* %11)
  store %struct.auth_zone* null, %struct.auth_zone** %12, align 8
  br label %35

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %55, %35
  %37 = load %struct.auth_zone*, %struct.auth_zone** %12, align 8
  %38 = icmp ne %struct.auth_zone* %37, null
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.auth_zone* @auth_zone_find(%struct.auth_zones* %41, i32* %42, i64 %43, i32 %44)
  store %struct.auth_zone* %45, %struct.auth_zone** %12, align 8
  %46 = load %struct.auth_zone*, %struct.auth_zone** %12, align 8
  %47 = icmp ne %struct.auth_zone* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load %struct.auth_zone*, %struct.auth_zone** %12, align 8
  store %struct.auth_zone* %49, %struct.auth_zone** %5, align 8
  br label %58

50:                                               ; preds = %40
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @dname_is_root(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  %56 = call i32 @dname_remove_label(i32** %10, i64* %11)
  br label %36

57:                                               ; preds = %54, %36
  store %struct.auth_zone* null, %struct.auth_zone** %5, align 8
  br label %58

58:                                               ; preds = %57, %48, %26, %21
  %59 = load %struct.auth_zone*, %struct.auth_zone** %5, align 8
  ret %struct.auth_zone* %59
}

declare dso_local i64 @auth_zone_find_less_equal(%struct.auth_zones*, i32*, i64, i32, %struct.auth_zone**) #1

declare dso_local i32* @dname_get_shared_topdomain(i32, i32*) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local %struct.auth_zone* @auth_zone_find(%struct.auth_zones*, i32*, i64, i32) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
