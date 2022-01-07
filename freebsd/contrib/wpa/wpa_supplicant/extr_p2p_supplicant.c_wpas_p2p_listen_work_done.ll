; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_listen_work_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_listen_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpas_p2p_listen_work* }
%struct.wpas_p2p_listen_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_p2p_listen_work_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_listen_work_done(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpas_p2p_listen_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %13, align 8
  store %struct.wpas_p2p_listen_work* %14, %struct.wpas_p2p_listen_work** %3, align 8
  %15 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %3, align 8
  %16 = call i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work* %15)
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @radio_work_done(%struct.TYPE_2__* %19)
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %22, align 8
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work*) #1

declare dso_local i32 @radio_work_done(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
