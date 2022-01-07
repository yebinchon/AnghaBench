; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_util.c_proc_list_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_util.c_proc_list_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@ProcListSize = common dso_local global i32 0, align 4
@ProcListVec = common dso_local global %struct.TYPE_3__* null, align 8
@NO_PID = common dso_local global i64 0, align 8
@CurrentPid = common dso_local global i64 0, align 8
@LogLevel = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@CurEnv = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"proc_list_probe: lost pid %d\00", align 1
@PROC_QUEUE = common dso_local global i64 0, align 8
@CurRunners = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"proc_list_probe\00", align 1
@CurChildren = common dso_local global i32 0, align 4
@DaemonPid = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@NOQID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"proc_list_probe: found %d children, expected %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_list_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @SIGCHLD, align 4
  %6 = call i32 @sm_blocksignal(i32 %5)
  store i32 %6, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %7

7:                                                ; preds = %94, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @ProcListSize, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %97

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NO_PID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @CurrentPid, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %11
  br label %94

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @kill(i64 %27, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %26
  %31 = load i32, i32* @LogLevel, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* @LOG_DEBUG, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurEnv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i32, i8*, i32, ...) @sm_syslog(i32 %34, i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %33, %30
  %47 = load i64, i64* @NO_PID, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SM_FREE_CLR(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PROC_QUEUE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %46
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @CurRunners, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* @CurRunners, align 4
  %79 = load i32, i32* %1, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcListVec, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @CHK_CUR_RUNNERS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %85)
  br label %87

87:                                               ; preds = %68, %46
  %88 = load i32, i32* @CurChildren, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* @CurChildren, align 4
  br label %93

90:                                               ; preds = %26
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %25
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %7

97:                                               ; preds = %7
  %98 = load i32, i32* @CurChildren, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* @CurChildren, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @SIGCHLD, align 4
  %106 = call i32 @sm_releasesignal(i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* @LogLevel, align 4
  %109 = icmp sgt i32 %108, 10
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @CurChildren, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i64, i64* @CurrentPid, align 8
  %116 = load i64, i64* @DaemonPid, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @LOG_ERR, align 4
  %120 = load i32, i32* @NOQID, align 4
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @CurChildren, align 4
  %123 = call i32 (i32, i32, i8*, i32, ...) @sm_syslog(i32 %119, i32 %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %114, %110, %107
  ret void
}

declare dso_local i32 @sm_blocksignal(i32) #1

declare dso_local i64 @kill(i64, i32) #1

declare dso_local i32 @sm_syslog(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @SM_FREE_CLR(i32) #1

declare dso_local i32 @CHK_CUR_RUNNERS(i8*, i32, i64) #1

declare dso_local i32 @sm_releasesignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
