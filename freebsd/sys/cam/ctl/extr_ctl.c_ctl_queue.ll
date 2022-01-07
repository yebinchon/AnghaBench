; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_6__, [16 x i8] }
%struct.TYPE_6__ = type { i32* }
%struct.ctl_port = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ctl_queue cdb[0]=%02X\0A\00", align 1
@ctl_debug = common dso_local global i32 0, align 4
@CTL_DEBUG_CDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ctl_queue: unknown I/O type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_queue(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_port*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %5 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %6 = call %struct.ctl_port* @CTL_PORT(%union.ctl_io* %5)
  store %struct.ctl_port* %6, %struct.ctl_port** %4, align 8
  %7 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %8 = bitcast %union.ctl_io* %7 to %struct.TYPE_6__*
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @CTL_DEBUG_PRINT(i8* %14)
  %16 = load %struct.ctl_port*, %struct.ctl_port** %4, align 8
  %17 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %18 = bitcast %union.ctl_io* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ctl_lun_map_from_port(%struct.ctl_port* %16, i32 %21)
  %23 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %28 = bitcast %union.ctl_io* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %42 [
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %1, %1
  %32 = load i32, i32* @ctl_debug, align 4
  %33 = load i32, i32* @CTL_DEBUG_CDB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %38 = call i32 @ctl_io_print(%union.ctl_io* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %41 = call i32 @ctl_enqueue_incoming(%union.ctl_io* %40)
  br label %49

42:                                               ; preds = %1
  %43 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %44 = bitcast %union.ctl_io* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ctl_port* @CTL_PORT(%union.ctl_io*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @ctl_lun_map_from_port(%struct.ctl_port*, i32) #1

declare dso_local i32 @ctl_io_print(%union.ctl_io*) #1

declare dso_local i32 @ctl_enqueue_incoming(%union.ctl_io*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
