; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_wpa_driver_bsd_get_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_bsd.c_wpa_driver_bsd_get_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { i32 }
%struct.bsd_driver_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpa_driver_capa*)* @wpa_driver_bsd_get_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_bsd_get_capa(i8* %0, %struct.wpa_driver_capa* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_driver_capa*, align 8
  %5 = alloca %struct.bsd_driver_data*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wpa_driver_capa* %1, %struct.wpa_driver_capa** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bsd_driver_data*
  store %struct.bsd_driver_data* %7, %struct.bsd_driver_data** %5, align 8
  %8 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %4, align 8
  %9 = load %struct.bsd_driver_data*, %struct.bsd_driver_data** %5, align 8
  %10 = getelementptr inbounds %struct.bsd_driver_data, %struct.bsd_driver_data* %9, i32 0, i32 0
  %11 = call i32 @os_memcpy(%struct.wpa_driver_capa* %8, i32* %10, i32 4)
  ret i32 0
}

declare dso_local i32 @os_memcpy(%struct.wpa_driver_capa*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
