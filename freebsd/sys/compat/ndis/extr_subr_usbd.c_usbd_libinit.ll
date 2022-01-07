; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_libinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_libinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i8** }

@usbd_functbl = common dso_local global %struct.TYPE_5__* null, align 8
@usbd_ioinvalid = common dso_local global i64 0, align 8
@usbd_ioinvalid_wrap = common dso_local global i64 0, align 8
@WINDRV_WRAP_STDCALL = common dso_local global i32 0, align 4
@usbd_iodispatch = common dso_local global i64 0, align 8
@usbd_iodispatch_wrap = common dso_local global i64 0, align 8
@usbd_pnp = common dso_local global i64 0, align 8
@usbd_pnp_wrap = common dso_local global i64 0, align 8
@usbd_power = common dso_local global i64 0, align 8
@usbd_power_wrap = common dso_local global i64 0, align 8
@usbd_irpcancel = common dso_local global i64 0, align 8
@usbd_irpcancel_wrap = common dso_local global i32 0, align 4
@usbd_task = common dso_local global i64 0, align 8
@usbd_task_wrap = common dso_local global i32 0, align 4
@usbd_xfertask = common dso_local global i64 0, align 8
@usbd_xfertask_wrap = common dso_local global i32 0, align 4
@usbd_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"USB Bus\00", align 1
@IRP_MJ_MAXIMUM_FUNCTION = common dso_local global i32 0, align 4
@IRP_MJ_INTERNAL_DEVICE_CONTROL = common dso_local global i64 0, align 8
@IRP_MJ_DEVICE_CONTROL = common dso_local global i64 0, align 8
@IRP_MJ_POWER = common dso_local global i64 0, align 8
@IRP_MJ_PNP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_libinit() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @usbd_functbl, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  br label %4

4:                                                ; preds = %9, %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @windrv_wrap(i32 %13, i32* %15, i32 %18, i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 1
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %1, align 8
  br label %4

25:                                               ; preds = %4
  %26 = load i64, i64* @usbd_ioinvalid, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %29 = call i32 @windrv_wrap(i32 %27, i32* bitcast (i64* @usbd_ioinvalid_wrap to i32*), i32 2, i32 %28)
  %30 = load i64, i64* @usbd_iodispatch, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %33 = call i32 @windrv_wrap(i32 %31, i32* bitcast (i64* @usbd_iodispatch_wrap to i32*), i32 2, i32 %32)
  %34 = load i64, i64* @usbd_pnp, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %37 = call i32 @windrv_wrap(i32 %35, i32* bitcast (i64* @usbd_pnp_wrap to i32*), i32 2, i32 %36)
  %38 = load i64, i64* @usbd_power, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %41 = call i32 @windrv_wrap(i32 %39, i32* bitcast (i64* @usbd_power_wrap to i32*), i32 2, i32 %40)
  %42 = load i64, i64* @usbd_irpcancel, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %45 = call i32 @windrv_wrap(i32 %43, i32* @usbd_irpcancel_wrap, i32 2, i32 %44)
  %46 = load i64, i64* @usbd_task, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %49 = call i32 @windrv_wrap(i32 %47, i32* @usbd_task_wrap, i32 2, i32 %48)
  %50 = load i64, i64* @usbd_xfertask, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @WINDRV_WRAP_STDCALL, align 4
  %53 = call i32 @windrv_wrap(i32 %51, i32* @usbd_xfertask_wrap, i32 2, i32 %52)
  %54 = call i32 @windrv_bus_attach(%struct.TYPE_6__* @usbd_driver, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %66, %25
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @IRP_MJ_MAXIMUM_FUNCTION, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i64, i64* @usbd_ioinvalid_wrap, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @usbd_driver, i32 0, i32 0), align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load i64, i64* @usbd_iodispatch_wrap, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @usbd_driver, i32 0, i32 0), align 8
  %73 = load i64, i64* @IRP_MJ_INTERNAL_DEVICE_CONTROL, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* %71, i8** %74, align 8
  %75 = load i64, i64* @usbd_iodispatch_wrap, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @usbd_driver, i32 0, i32 0), align 8
  %78 = load i64, i64* @IRP_MJ_DEVICE_CONTROL, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %76, i8** %79, align 8
  %80 = load i64, i64* @usbd_power_wrap, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @usbd_driver, i32 0, i32 0), align 8
  %83 = load i64, i64* @IRP_MJ_POWER, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  store i8* %81, i8** %84, align 8
  %85 = load i64, i64* @usbd_pnp_wrap, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @usbd_driver, i32 0, i32 0), align 8
  %88 = load i64, i64* @IRP_MJ_PNP, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  store i8* %86, i8** %89, align 8
  ret i32 0
}

declare dso_local i32 @windrv_wrap(i32, i32*, i32, i32) #1

declare dso_local i32 @windrv_bus_attach(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
