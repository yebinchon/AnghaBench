; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c_windrv_libfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c_windrv_libfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drvdb_ent = type { i32 }
%struct.fpu_cc_ent = type { i32 }

@drvdb_mtx = common dso_local global i32 0, align 4
@drvdb_head = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@fake_pci_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@fake_pccard_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@fpu_free_head = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@fpu_free_mtx = common dso_local global i32 0, align 4
@fpu_busy_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"busy fpu context list is not empty\00", align 1
@fpu_busy_mtx = common dso_local global i32 0, align 4
@my_tids = common dso_local global i32 0, align 4
@x86_oldldt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @windrv_libfini() #0 {
  %1 = alloca %struct.drvdb_ent*, align 8
  %2 = alloca %struct.fpu_cc_ent*, align 8
  %3 = call i32 @mtx_lock(i32* @drvdb_mtx)
  br label %4

4:                                                ; preds = %7, %0
  %5 = call %struct.fpu_cc_ent* @STAILQ_FIRST(i32* @drvdb_head)
  %6 = icmp ne %struct.fpu_cc_ent* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = call %struct.fpu_cc_ent* @STAILQ_FIRST(i32* @drvdb_head)
  %9 = bitcast %struct.fpu_cc_ent* %8 to %struct.drvdb_ent*
  store %struct.drvdb_ent* %9, %struct.drvdb_ent** %1, align 8
  %10 = load i32, i32* @link, align 4
  %11 = call i32 @STAILQ_REMOVE_HEAD(i32* @drvdb_head, i32 %10)
  %12 = load %struct.drvdb_ent*, %struct.drvdb_ent** %1, align 8
  %13 = bitcast %struct.drvdb_ent* %12 to %struct.fpu_cc_ent*
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = call i32 @free(%struct.fpu_cc_ent* %13, i32 %14)
  br label %4

16:                                               ; preds = %4
  %17 = call i32 @mtx_unlock(i32* @drvdb_mtx)
  %18 = call i32 @RtlFreeUnicodeString(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fake_pci_driver, i32 0, i32 0))
  %19 = call i32 @RtlFreeUnicodeString(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fake_pccard_driver, i32 0, i32 0))
  %20 = call i32 @mtx_destroy(i32* @drvdb_mtx)
  br label %21

21:                                               ; preds = %24, %16
  %22 = call %struct.fpu_cc_ent* @LIST_FIRST(i32* @fpu_free_head)
  store %struct.fpu_cc_ent* %22, %struct.fpu_cc_ent** %2, align 8
  %23 = icmp ne %struct.fpu_cc_ent* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %26 = load i32, i32* @entries, align 4
  %27 = call i32 @LIST_REMOVE(%struct.fpu_cc_ent* %25, i32 %26)
  %28 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %29 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fpu_kern_free_ctx(i32 %30)
  %32 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.fpu_cc_ent* %32, i32 %33)
  br label %21

35:                                               ; preds = %21
  %36 = call i32 @mtx_destroy(i32* @fpu_free_mtx)
  %37 = call %struct.fpu_cc_ent* @LIST_FIRST(i32* @fpu_busy_head)
  store %struct.fpu_cc_ent* %37, %struct.fpu_cc_ent** %2, align 8
  %38 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %2, align 8
  %39 = icmp eq %struct.fpu_cc_ent* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @mtx_destroy(i32* @fpu_busy_mtx)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.fpu_cc_ent* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.fpu_cc_ent*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @RtlFreeUnicodeString(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local %struct.fpu_cc_ent* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.fpu_cc_ent*, i32) #1

declare dso_local i32 @fpu_kern_free_ctx(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
