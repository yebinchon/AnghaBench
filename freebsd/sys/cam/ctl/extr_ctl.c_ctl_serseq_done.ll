; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_serseq_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_serseq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CTL_LUN_SERSEQ_OFF = common dso_local global i64 0, align 8
@CTL_FLAG_SERSEQ_DONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_serseq_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_lun*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = call %struct.ctl_lun* @CTL_LUN(%union.ctl_io* %4)
  store %struct.ctl_lun* %5, %struct.ctl_lun** %3, align 8
  %6 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %7 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CTL_LUN_SERSEQ_OFF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %1
  br label %36

19:                                               ; preds = %10
  %20 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load i32, i32* @CTL_FLAG_SERSEQ_DONE, align 4
  %24 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %25 = bitcast %union.ctl_io* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %30 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @ctl_try_unblock_others(%struct.ctl_lun* %29, %union.ctl_io* %30, i32 %31)
  %33 = load %struct.ctl_lun*, %struct.ctl_lun** %3, align 8
  %34 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  br label %36

36:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_try_unblock_others(%struct.ctl_lun*, %union.ctl_io*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
