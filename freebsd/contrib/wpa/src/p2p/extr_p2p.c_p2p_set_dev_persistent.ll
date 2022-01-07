; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_dev_persistent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_dev_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_device = type { i32 }

@P2P_DEV_PREFER_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_DEV_PREFER_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_device*, i32)* @p2p_set_dev_persistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_set_dev_persistent(%struct.p2p_device* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_device*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_device* %0, %struct.p2p_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %35 [
    i32 0, label %6
    i32 1, label %15
    i32 2, label %27
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_GROUP, align 4
  %8 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_RECONN, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %12 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_GROUP, align 4
  %17 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %18 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_RECONN, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %24 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_GROUP, align 4
  %29 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_RECONN, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.p2p_device*, %struct.p2p_device** %3, align 8
  %32 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %2, %27, %15, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
