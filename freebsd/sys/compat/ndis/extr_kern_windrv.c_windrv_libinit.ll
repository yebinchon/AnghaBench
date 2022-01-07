; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c_windrv_libinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c_windrv_libinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drvdb_head = common dso_local global i32 0, align 4
@drvdb_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Windows driver DB lock\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Windows internal lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@fpu_free_head = common dso_local global i32 0, align 4
@fpu_busy_head = common dso_local global i32 0, align 4
@fpu_free_mtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"free fpu context list lock\00", align 1
@fpu_busy_mtx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"busy fpu context list lock\00", align 1
@fake_pci_driver = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"PCI Bus\00", align 1
@fake_pccard_driver = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"PCCARD Bus\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@my_tids = common dso_local global i32* null, align 8
@x86_newldt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @windrv_libinit() #0 {
  %1 = call i32 @STAILQ_INIT(i32* @drvdb_head)
  %2 = load i32, i32* @MTX_DEF, align 4
  %3 = call i32 @mtx_init(i32* @drvdb_mtx, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = call i32 @LIST_INIT(i32* @fpu_free_head)
  %5 = call i32 @LIST_INIT(i32* @fpu_busy_head)
  %6 = load i32, i32* @MTX_DEF, align 4
  %7 = call i32 @mtx_init(i32* @fpu_free_mtx, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 %6)
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = call i32 @mtx_init(i32* @fpu_busy_mtx, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 %8)
  %10 = call i32 @windrv_bus_attach(i32* @fake_pci_driver, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @windrv_bus_attach(i32* @fake_pccard_driver, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @windrv_bus_attach(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
