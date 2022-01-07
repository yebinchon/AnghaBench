; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_cli_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_cli_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_supplicant*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_supplicant* (%struct.wpa_supplicant*)* @wpas_p2p_get_cli_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_supplicant* @wpas_p2p_get_cli_group(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  store %struct.wpa_supplicant* %8, %struct.wpa_supplicant** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = icmp ne %struct.wpa_supplicant* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = call i64 @p2p_is_active_persistent_cli(%struct.wpa_supplicant* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_supplicant* %17, %struct.wpa_supplicant** %2, align 8
  br label %24

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %21, align 8
  store %struct.wpa_supplicant* %22, %struct.wpa_supplicant** %3, align 8
  br label %9

23:                                               ; preds = %9
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %2, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  ret %struct.wpa_supplicant* %25
}

declare dso_local i64 @p2p_is_active_persistent_cli(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
