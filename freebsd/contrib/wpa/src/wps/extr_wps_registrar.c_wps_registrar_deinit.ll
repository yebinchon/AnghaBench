; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i32, i32 }

@wps_registrar_pbc_timeout = common dso_local global i32 0, align 4
@wps_registrar_set_selected_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_registrar_deinit(%struct.wps_registrar* %0) #0 {
  %2 = alloca %struct.wps_registrar*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %2, align 8
  %3 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %4 = icmp eq %struct.wps_registrar* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load i32, i32* @wps_registrar_pbc_timeout, align 4
  %8 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %9 = call i32 @eloop_cancel_timeout(i32 %7, %struct.wps_registrar* %8, i32* null)
  %10 = load i32, i32* @wps_registrar_set_selected_timeout, align 4
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %10, %struct.wps_registrar* %11, i32* null)
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %14 = call i32 @wps_registrar_flush(%struct.wps_registrar* %13)
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wpabuf_clear_free(i32 %17)
  %19 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %20 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %23 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bin_clear_free(i32 %21, i32 %24)
  %26 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %27 = call i32 @os_free(%struct.wps_registrar* %26)
  br label %28

28:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_registrar*, i32*) #1

declare dso_local i32 @wps_registrar_flush(%struct.wps_registrar*) #1

declare dso_local i32 @wpabuf_clear_free(i32) #1

declare dso_local i32 @bin_clear_free(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
