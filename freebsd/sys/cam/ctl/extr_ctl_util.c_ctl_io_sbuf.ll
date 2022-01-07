; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_io_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_io_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sbuf = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c" Tag: %#x/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown Task Action %d (%#x)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Task Action: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_io_sbuf(%union.ctl_io* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %7 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %9 = call i32 @ctl_scsi_path_string(%union.ctl_io* %7, i8* %8, i32 64)
  %10 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %11 = bitcast %union.ctl_io* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %76 [
    i32 130, label %14
    i32 129, label %32
  ]

14:                                               ; preds = %2
  %15 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %17 = call i32 @sbuf_cat(%struct.sbuf* %15, i8* %16)
  %18 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %19 = bitcast %union.ctl_io* %18 to %struct.TYPE_6__*
  %20 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %21 = call i32 @ctl_scsi_command_string(%struct.TYPE_6__* %19, i32* null, %struct.sbuf* %20)
  %22 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %23 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %28 = bitcast %union.ctl_io* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  br label %77

32:                                               ; preds = %2
  %33 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %35 = call i32 @sbuf_cat(%struct.sbuf* %33, i8* %34)
  %36 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %37 = bitcast %union.ctl_io* %36 to %struct.TYPE_5__*
  %38 = call i8* @ctl_scsi_task_string(%struct.TYPE_5__* %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %43 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %44 = bitcast %union.ctl_io* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %48 = bitcast %union.ctl_io* %47 to %struct.TYPE_5__*
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %50)
  br label %56

52:                                               ; preds = %32
  %53 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %58 = bitcast %union.ctl_io* %57 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %72 [
    i32 128, label %61
  ]

61:                                               ; preds = %56
  %62 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %63 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %64 = bitcast %union.ctl_io* %63 to %struct.TYPE_5__*
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70)
  br label %75

72:                                               ; preds = %56
  %73 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %74 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %61
  br label %77

76:                                               ; preds = %2
  br label %77

77:                                               ; preds = %76, %75, %14
  ret void
}

declare dso_local i32 @ctl_scsi_path_string(%union.ctl_io*, i8*, i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @ctl_scsi_command_string(%struct.TYPE_6__*, i32*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i8* @ctl_scsi_task_string(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
