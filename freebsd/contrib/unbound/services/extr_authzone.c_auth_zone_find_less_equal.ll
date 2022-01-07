; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_find_less_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_find_less_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32 }
%struct.auth_zone = type { i64, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auth_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zones*, i32*, i64, i32, %struct.auth_zone**)* @auth_zone_find_less_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zone_find_less_equal(%struct.auth_zones* %0, i32* %1, i64 %2, i32 %3, %struct.auth_zone** %4) #0 {
  %6 = alloca %struct.auth_zones*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.auth_zone**, align 8
  %11 = alloca %struct.auth_zone, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.auth_zone** %4, %struct.auth_zone*** %10, align 8
  %12 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.auth_zone* %11, %struct.auth_zone** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %11, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %11, i32 0, i32 2
  store i32* %16, i32** %17, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %11, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @dname_count_labels(i32* %20)
  %22 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %11, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.auth_zones*, %struct.auth_zones** %6, align 8
  %24 = getelementptr inbounds %struct.auth_zones, %struct.auth_zones* %23, i32 0, i32 0
  %25 = load %struct.auth_zone**, %struct.auth_zone*** %10, align 8
  %26 = bitcast %struct.auth_zone** %25 to i32**
  %27 = call i32 @rbtree_find_less_equal(i32* %24, %struct.auth_zone* %11, i32** %26)
  ret i32 %27
}

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @rbtree_find_less_equal(i32*, %struct.auth_zone*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
