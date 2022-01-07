; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/libmilter/extr_main.c_smfi_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/libmilter/extr_main.c_smfi_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@conn = common dso_local global i32* null, align 8
@SMI_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: missing connection information\00", align 1
@smfi = common dso_local global %struct.TYPE_3__* null, align 8
@MI_FAILURE = common dso_local global i32 0, align 4
@mi_clean_signals = common dso_local global i32 0, align 4
@MI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Couldn't start signal thread\00", align 1
@dbg = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smfi_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SIGPIPE, align 4
  %4 = load i32, i32* @SIG_IGN, align 4
  %5 = call i32 @signal(i32 %3, i32 %4)
  %6 = load i32*, i32** @conn, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @SMI_LOG_FATAL, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smfi, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @smi_log(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @MI_FAILURE, align 4
  store i32 %14, i32* %1, align 4
  br label %45

15:                                               ; preds = %0
  %16 = load i32, i32* @mi_clean_signals, align 4
  %17 = call i32 @atexit(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smfi, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mi_control_startup(i32 %20)
  %22 = load i64, i64* @MI_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i32, i32* @SMI_LOG_FATAL, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smfi, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @smi_log(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @MI_FAILURE, align 4
  store i32 %30, i32* %1, align 4
  br label %45

31:                                               ; preds = %15
  %32 = call i32 (...) @MI_MONITOR_INIT()
  store i32 %32, i32* %2, align 4
  %33 = load i32*, i32** @conn, align 8
  %34 = load i32, i32* @dbg, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smfi, align 8
  %36 = load i32, i32* @timeout, align 4
  %37 = load i32, i32* @backlog, align 4
  %38 = call i64 @mi_listener(i32* %33, i32 %34, %struct.TYPE_3__* %35, i32 %36, i32 %37)
  %39 = load i64, i64* @MI_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @MI_FAILURE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %31
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %24, %8
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @smi_log(i32, i8*, i32) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i64 @mi_control_startup(i32) #1

declare dso_local i32 @MI_MONITOR_INIT(...) #1

declare dso_local i64 @mi_listener(i32*, i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
