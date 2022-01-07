; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_option_rollover.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_option_rollover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@options = common dso_local global %struct.TYPE_2__* null, align 8
@OPT_ROLLOVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@acting_as_client = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Bad value for rollover, should be either 0 or 1, received '%s', ignoring request\00", align 1
@EBADOP = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_OPTIONS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Setting rollover to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_rollover(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %5 = load i64, i64* @OPT_ROLLOVER, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %13 = load i64, i64* @OPT_ROLLOVER, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @strcmp(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %21 = load i64, i64* @OPT_ROLLOVER, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @strcmp(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %19
  %28 = load i64, i64* @acting_as_client, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @LOG_ERR, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LOG_WARNING, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %37 = load i64, i64* @OPT_ROLLOVER, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @tftp_log(i32 %35, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = load i64, i64* @acting_as_client, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @EBADOP, align 4
  %47 = call i32 @send_error(i32 %45, i32 %46)
  store i32 1, i32* %2, align 4
  br label %73

48:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %73

49:                                               ; preds = %19, %11
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %51 = load i64, i64* @OPT_ROLLOVER, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @strdup(i32* %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %57 = load i64, i64* @OPT_ROLLOVER, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32* %55, i32** %59, align 8
  %60 = load i32, i32* @debug, align 4
  %61 = load i32, i32* @DEBUG_OPTIONS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load i32, i32* @LOG_DEBUG, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %67 = load i64, i64* @OPT_ROLLOVER, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @tftp_log(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %70)
  br label %72

72:                                               ; preds = %64, %49
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %48, %44, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @tftp_log(i32, i8*, i32*) #1

declare dso_local i32 @send_error(i32, i32) #1

declare dso_local i32* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
