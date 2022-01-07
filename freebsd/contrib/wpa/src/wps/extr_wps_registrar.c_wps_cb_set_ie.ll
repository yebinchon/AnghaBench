; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_set_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_set_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32 (i32, %struct.wpabuf*, %struct.wpabuf*)*, i32 }
%struct.wpabuf = type opaque
%struct.wpabuf.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_registrar*, %struct.wpabuf.0*, %struct.wpabuf.0*)* @wps_cb_set_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_cb_set_ie(%struct.wps_registrar* %0, %struct.wpabuf.0* %1, %struct.wpabuf.0* %2) #0 {
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca %struct.wpabuf.0*, align 8
  %6 = alloca %struct.wpabuf.0*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store %struct.wpabuf.0* %1, %struct.wpabuf.0** %5, align 8
  store %struct.wpabuf.0* %2, %struct.wpabuf.0** %6, align 8
  %7 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %8 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %7, i32 0, i32 0
  %9 = load i32 (i32, %struct.wpabuf*, %struct.wpabuf*)*, i32 (i32, %struct.wpabuf*, %struct.wpabuf*)** %8, align 8
  %10 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %11 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.wpabuf.0*, %struct.wpabuf.0** %5, align 8
  %14 = bitcast %struct.wpabuf.0* %13 to %struct.wpabuf*
  %15 = load %struct.wpabuf.0*, %struct.wpabuf.0** %6, align 8
  %16 = bitcast %struct.wpabuf.0* %15 to %struct.wpabuf*
  %17 = call i32 %9(i32 %12, %struct.wpabuf* %14, %struct.wpabuf* %16)
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
