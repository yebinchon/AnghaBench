; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_libfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_usbd.c_usbd_libfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@usbd_functbl = common dso_local global %struct.TYPE_6__* null, align 8
@usbd_ioinvalid_wrap = common dso_local global i32 0, align 4
@usbd_iodispatch_wrap = common dso_local global i32 0, align 4
@usbd_pnp_wrap = common dso_local global i32 0, align 4
@usbd_power_wrap = common dso_local global i32 0, align 4
@usbd_irpcancel_wrap = common dso_local global i32 0, align 4
@usbd_task_wrap = common dso_local global i32 0, align 4
@usbd_xfertask_wrap = common dso_local global i32 0, align 4
@usbd_driver = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_libfini() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @usbd_functbl, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  br label %3

3:                                                ; preds = %8, %0
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @windrv_unwrap(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 1
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %1, align 8
  br label %3

15:                                               ; preds = %3
  %16 = load i32, i32* @usbd_ioinvalid_wrap, align 4
  %17 = call i32 @windrv_unwrap(i32 %16)
  %18 = load i32, i32* @usbd_iodispatch_wrap, align 4
  %19 = call i32 @windrv_unwrap(i32 %18)
  %20 = load i32, i32* @usbd_pnp_wrap, align 4
  %21 = call i32 @windrv_unwrap(i32 %20)
  %22 = load i32, i32* @usbd_power_wrap, align 4
  %23 = call i32 @windrv_unwrap(i32 %22)
  %24 = load i32, i32* @usbd_irpcancel_wrap, align 4
  %25 = call i32 @windrv_unwrap(i32 %24)
  %26 = load i32, i32* @usbd_task_wrap, align 4
  %27 = call i32 @windrv_unwrap(i32 %26)
  %28 = load i32, i32* @usbd_xfertask_wrap, align 4
  %29 = call i32 @windrv_unwrap(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @usbd_driver, i32 0, i32 0, i32 0), align 4
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @windrv_unwrap(i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
