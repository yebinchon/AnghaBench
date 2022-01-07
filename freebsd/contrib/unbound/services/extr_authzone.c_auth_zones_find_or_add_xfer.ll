; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_find_or_add_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_find_or_add_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32 }
%struct.auth_zones = type { i32 }
%struct.auth_zone = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_xfer* (%struct.auth_zones*, %struct.auth_zone*)* @auth_zones_find_or_add_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_xfer* @auth_zones_find_or_add_xfer(%struct.auth_zones* %0, %struct.auth_zone* %1) #0 {
  %3 = alloca %struct.auth_zones*, align 8
  %4 = alloca %struct.auth_zone*, align 8
  %5 = alloca %struct.auth_xfer*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %3, align 8
  store %struct.auth_zone* %1, %struct.auth_zone** %4, align 8
  %6 = load %struct.auth_zones*, %struct.auth_zones** %3, align 8
  %7 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %8 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %11 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %14 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones* %6, i32 %9, i32 %12, i32 %15)
  store %struct.auth_xfer* %16, %struct.auth_xfer** %5, align 8
  %17 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %18 = icmp ne %struct.auth_xfer* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.auth_zones*, %struct.auth_zones** %3, align 8
  %21 = load %struct.auth_zone*, %struct.auth_zone** %4, align 8
  %22 = call %struct.auth_xfer* @auth_xfer_create(%struct.auth_zones* %20, %struct.auth_zone* %21)
  store %struct.auth_xfer* %22, %struct.auth_xfer** %5, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %25 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %24, i32 0, i32 0
  %26 = call i32 @lock_basic_lock(i32* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  ret %struct.auth_xfer* %28
}

declare dso_local %struct.auth_xfer* @auth_xfer_find(%struct.auth_zones*, i32, i32, i32) #1

declare dso_local %struct.auth_xfer* @auth_xfer_create(%struct.auth_zones*, %struct.auth_zone*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
