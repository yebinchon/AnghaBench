; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { %struct.netif* }
%struct.netif = type { i32, %struct.netif_driver* }
%struct.netif_driver = type { i8*, i64 (%struct.iodesc.0*, i8*, i64)* }
%struct.iodesc.0 = type opaque

@netif_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @netif_put(%struct.iodesc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.iodesc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netif_driver*, align 8
  %8 = alloca i64, align 8
  store %struct.iodesc* %0, %struct.iodesc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.iodesc*, %struct.iodesc** %4, align 8
  %10 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %9, i32 0, i32 0
  %11 = load %struct.netif*, %struct.netif** %10, align 8
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %11, i32 0, i32 1
  %13 = load %struct.netif_driver*, %struct.netif_driver** %12, align 8
  store %struct.netif_driver* %13, %struct.netif_driver** %7, align 8
  %14 = load %struct.netif_driver*, %struct.netif_driver** %7, align 8
  %15 = getelementptr inbounds %struct.netif_driver, %struct.netif_driver* %14, i32 0, i32 1
  %16 = load i64 (%struct.iodesc.0*, i8*, i64)*, i64 (%struct.iodesc.0*, i8*, i64)** %15, align 8
  %17 = load %struct.iodesc*, %struct.iodesc** %4, align 8
  %18 = bitcast %struct.iodesc* %17 to %struct.iodesc.0*
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 %16(%struct.iodesc.0* %18, i8* %19, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
