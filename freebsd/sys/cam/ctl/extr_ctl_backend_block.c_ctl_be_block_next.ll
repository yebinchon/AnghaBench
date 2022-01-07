; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_io = type { %struct.ctl_be_block_lun*, %union.ctl_io* }
%struct.ctl_be_block_lun = type { i32, i32, i32, i32 }
%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_io*)* @ctl_be_block_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_next(%struct.ctl_be_block_io* %0) #0 {
  %2 = alloca %struct.ctl_be_block_io*, align 8
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %union.ctl_io*, align 8
  store %struct.ctl_be_block_io* %0, %struct.ctl_be_block_io** %2, align 8
  %5 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %6 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %5, i32 0, i32 1
  %7 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  store %union.ctl_io* %7, %union.ctl_io** %4, align 8
  %8 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %9 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %8, i32 0, i32 0
  %10 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %9, align 8
  store %struct.ctl_be_block_lun* %10, %struct.ctl_be_block_lun** %3, align 8
  %11 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %12 = call i32 @ctl_free_beio(%struct.ctl_be_block_io* %11)
  %13 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %1
  %21 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CTL_STATUS_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CTL_STATUS_NONE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %31 = bitcast %union.ctl_io* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CTL_STATUS_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CTL_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29, %1
  %39 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %40 = call i32 @ctl_data_submit_done(%union.ctl_io* %39)
  br label %73

41:                                               ; preds = %29, %20
  %42 = load i32, i32* @CTL_STATUS_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %45 = bitcast %union.ctl_io* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @CTL_STATUS_NONE, align 4
  %50 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %51 = bitcast %union.ctl_io* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %56 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %55, i32 0, i32 2
  %57 = call i32 @mtx_lock(i32* %56)
  %58 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %59 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %58, i32 0, i32 3
  %60 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %61 = bitcast %union.ctl_io* %60 to %struct.TYPE_2__*
  %62 = load i32, i32* @links, align 4
  %63 = call i32 @STAILQ_INSERT_TAIL(i32* %59, %struct.TYPE_2__* %61, i32 %62)
  %64 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %65 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %64, i32 0, i32 2
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %68 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %71 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %70, i32 0, i32 0
  %72 = call i32 @taskqueue_enqueue(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @ctl_free_beio(%struct.ctl_be_block_io*) #1

declare dso_local i32 @ctl_data_submit_done(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
