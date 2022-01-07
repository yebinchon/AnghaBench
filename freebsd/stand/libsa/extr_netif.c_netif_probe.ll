; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, %struct.netif_driver* }
%struct.netif_driver = type { i8*, i32 (%struct.netif.0*, i8*)* }
%struct.netif.0 = type opaque

@netif_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_probe(%struct.netif* %0, i8* %1) #0 {
  %3 = alloca %struct.netif*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netif_driver*, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.netif*, %struct.netif** %3, align 8
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %6, i32 0, i32 1
  %8 = load %struct.netif_driver*, %struct.netif_driver** %7, align 8
  store %struct.netif_driver* %8, %struct.netif_driver** %5, align 8
  %9 = load %struct.netif_driver*, %struct.netif_driver** %5, align 8
  %10 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %9, i32 0, i32 1
  %11 = load i32 (%struct.netif.0*, i8*)*, i32 (%struct.netif.0*, i8*)** %10, align 8
  %12 = load %struct.netif*, %struct.netif** %3, align 8
  %13 = bitcast %struct.netif* %12 to %struct.netif.0*
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 %11(%struct.netif.0* %13, i8* %14)
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
