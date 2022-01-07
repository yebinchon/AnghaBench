; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_setup_endpoint_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_setup_endpoint_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"warning: ifidx > 0 isn't supported.\0A\00", align 1
@usbd_default_epconfig = common dso_local global i32* null, align 8
@USBD_CTRL_READ_PIPE = common dso_local global i64 0, align 8
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@USBD_CTRL_WRITE_PIPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @usbd_setup_endpoint_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbd_setup_endpoint_default(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndis_softc*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @IRP_NDIS_DEV(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ndis_softc* @device_get_softc(i32 %11)
  store %struct.ndis_softc* %12, %struct.ndis_softc** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %22 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** @usbd_default_epconfig, align 8
  %24 = load i64, i64* @USBD_CTRL_READ_PIPE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i64 @usbd_setup_endpoint_one(i32* %19, i64 %20, i32* %22, i32* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %3, align 8
  br label %42

32:                                               ; preds = %18
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.ndis_softc*, %struct.ndis_softc** %7, align 8
  %36 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** @usbd_default_epconfig, align 8
  %38 = load i64, i64* @USBD_CTRL_WRITE_PIPE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i64 @usbd_setup_endpoint_one(i32* %33, i64 %34, i32* %36, i32* %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @IRP_NDIS_DEV(i32*) #1

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @usbd_setup_endpoint_one(i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
