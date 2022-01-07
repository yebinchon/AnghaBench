; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_config_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_block_lun = type { i32, i32, i32, i32 }
%struct.ctl_be_lun = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@SGLS_SERVICE_ACTION = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@CTL_RETVAL_QUEUED = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_be_block_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_config_read(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_lun*, align 8
  %5 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %8 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %7)
  store %struct.ctl_be_lun* %8, %struct.ctl_be_lun** %4, align 8
  %9 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ctl_be_block_lun*
  store %struct.ctl_be_block_lun* %12, %struct.ctl_be_block_lun** %3, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %55 [
    i32 128, label %19
  ]

19:                                               ; preds = %1
  %20 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %21 = bitcast %union.ctl_io* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SGLS_SERVICE_ACTION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %19
  %29 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %29, i32 0, i32 2
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %32, i32 0, i32 3
  %34 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %35 = bitcast %union.ctl_io* %34 to i32*
  %36 = load i32, i32* @links, align 4
  %37 = call i32 @STAILQ_INSERT_TAIL(i32* %33, i32* %35, i32 %36)
  %38 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %38, i32 0, i32 2
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %45 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %44, i32 0, i32 0
  %46 = call i32 @taskqueue_enqueue(i32 %43, i32* %45)
  %47 = load i32, i32* @CTL_RETVAL_QUEUED, align 4
  store i32 %47, i32* %5, align 4
  br label %62

48:                                               ; preds = %19
  %49 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %50 = bitcast %union.ctl_io* %49 to %struct.TYPE_3__*
  %51 = call i32 @ctl_set_invalid_field(%struct.TYPE_3__* %50, i32 1, i32 1, i32 1, i32 1, i32 4)
  %52 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %53 = call i32 @ctl_config_read_done(%union.ctl_io* %52)
  %54 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %1
  %56 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_3__*
  %58 = call i32 @ctl_set_invalid_opcode(%struct.TYPE_3__* %57)
  %59 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %60 = call i32 @ctl_config_read_done(%union.ctl_io* %59)
  %61 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %48, %28
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_config_read_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
