; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ctl_be_block_lun = type { i32, i32, i32, i32 }
%struct.ctl_be_lun = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@CTL_IO_SCSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Non-SCSI I/O (type %#x) encountered\00", align 1
@links = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_be_block_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_submit(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_lun*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %5 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %7 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %6)
  store %struct.ctl_be_lun* %7, %struct.ctl_be_lun** %4, align 8
  %8 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %4, align 8
  %9 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ctl_be_block_lun*
  store %struct.ctl_be_block_lun* %11, %struct.ctl_be_block_lun** %3, align 8
  %12 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CTL_IO_SCSI, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %20 = bitcast %union.ctl_io* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %18, i8* %23)
  %25 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %26 = call %struct.TYPE_4__* @PRIV(%union.ctl_io* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %28, i32 0, i32 2
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %31, i32 0, i32 3
  %33 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_3__*
  %35 = load i32, i32* @links, align 4
  %36 = call i32 @STAILQ_INSERT_TAIL(i32* %32, %struct.TYPE_3__* %34, i32 %35)
  %37 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %37, i32 0, i32 2
  %39 = call i32 @mtx_unlock(i32* %38)
  %40 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %41 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %43, i32 0, i32 0
  %45 = call i32 @taskqueue_enqueue(i32 %42, i32* %44)
  %46 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %46
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
