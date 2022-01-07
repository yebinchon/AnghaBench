; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_queue.c_restart_marked_work_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_queue.c_restart_marked_work_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@NoMoreRunners = common dso_local global i64 0, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@NumWorkGroups = common dso_local global i32 0, align 4
@WorkGrp = common dso_local global %struct.TYPE_2__* null, align 8
@LogLevel = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@NOQID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"restart queue runner=%d due to signal 0x%x\00", align 1
@RestartWorkGroup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restart_marked_work_groups() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @NoMoreRunners, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %48

6:                                                ; preds = %0
  %7 = load i32, i32* @SIGCHLD, align 4
  %8 = call i32 @sm_blocksignal(i32 %7)
  store i32 %8, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %39, %6
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @NumWorkGroups, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WorkGrp, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = load i32, i32* @LogLevel, align 4
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load i32, i32* @NOQID, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WorkGrp, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sm_syslog(i32 %25, i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %33)
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @restart_work_group(i32 %36)
  br label %38

38:                                               ; preds = %35, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %9

42:                                               ; preds = %9
  store i32 0, i32* @RestartWorkGroup, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @SIGCHLD, align 4
  %47 = call i32 @sm_releasesignal(i32 %46)
  br label %48

48:                                               ; preds = %5, %45, %42
  ret void
}

declare dso_local i32 @sm_blocksignal(i32) #1

declare dso_local i32 @sm_syslog(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @restart_work_group(i32) #1

declare dso_local i32 @sm_releasesignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
