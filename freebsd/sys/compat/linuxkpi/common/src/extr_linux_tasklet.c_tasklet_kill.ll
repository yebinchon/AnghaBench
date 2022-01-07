; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_tasklet.c_tasklet_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_tasklet.c_tasklet_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tasklet_struct = type { i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tasklet_kill() can sleep\00", align 1
@TASKLET_ST_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"W\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tasklet_kill(%struct.tasklet_struct* %0) #0 {
  %2 = alloca %struct.tasklet_struct*, align 8
  store %struct.tasklet_struct* %0, %struct.tasklet_struct** %2, align 8
  %3 = load i32, i32* @WARN_GIANTOK, align 4
  %4 = load i32, i32* @WARN_SLEEPOK, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @WITNESS_WARN(i32 %5, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.tasklet_struct*, %struct.tasklet_struct** %2, align 8
  %9 = call i64 @TASKLET_ST_GET(%struct.tasklet_struct* %8)
  %10 = load i64, i64* @TASKLET_ST_IDLE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @pause(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %7

14:                                               ; preds = %7
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i64 @TASKLET_ST_GET(%struct.tasklet_struct*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
