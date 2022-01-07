; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_connect_work_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_connect_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_radio_work* }
%struct.wpa_radio_work = type { %struct.wpa_connect_work* }
%struct.wpa_connect_work = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_connect_work_done(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_connect_work*, align 8
  %4 = alloca %struct.wpa_radio_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 0
  %7 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %6, align 8
  store %struct.wpa_radio_work* %7, %struct.wpa_radio_work** %4, align 8
  %8 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %4, align 8
  %9 = icmp ne %struct.wpa_radio_work* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %13, align 8
  %14 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %14, i32 0, i32 0
  %16 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %15, align 8
  store %struct.wpa_connect_work* %16, %struct.wpa_connect_work** %3, align 8
  %17 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %17, i32 0, i32 0
  store %struct.wpa_connect_work* null, %struct.wpa_connect_work** %18, align 8
  %19 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %3, align 8
  %20 = call i32 @wpas_connect_work_free(%struct.wpa_connect_work* %19)
  %21 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %4, align 8
  %22 = call i32 @radio_work_done(%struct.wpa_radio_work* %21)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @wpas_connect_work_free(%struct.wpa_connect_work*) #1

declare dso_local i32 @radio_work_done(%struct.wpa_radio_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
