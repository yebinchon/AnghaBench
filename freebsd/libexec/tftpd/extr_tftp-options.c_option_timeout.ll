; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_option_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_option_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@options = common dso_local global %struct.TYPE_2__* null, align 8
@OPT_TIMEOUT = common dso_local global i64 0, align 8
@TIMEOUT_MIN = common dso_local global i32 0, align 4
@TIMEOUT_MAX = common dso_local global i32 0, align 4
@acting_as_client = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Received bad value for timeout. Should be between %d and %d, received %d\00", align 1
@EBADOP = common dso_local global i32 0, align 4
@timeoutpacket = common dso_local global i32 0, align 4
@timeoutnetwork = common dso_local global i32 0, align 4
@maxtimeouts = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_OPTIONS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Setting timeout to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %6 = load i64, i64* @OPT_TIMEOUT, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %14 = load i64, i64* @OPT_TIMEOUT, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @atoi(i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TIMEOUT_MIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TIMEOUT_MAX, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22, %12
  %27 = load i64, i64* @acting_as_client, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @LOG_ERR, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @LOG_WARNING, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* @TIMEOUT_MIN, align 4
  %36 = load i32, i32* @TIMEOUT_MAX, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %34, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @EBADOP, align 4
  %41 = call i32 @send_error(i32 %39, i32 %40)
  %42 = load i64, i64* @acting_as_client, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %77

45:                                               ; preds = %33
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %22
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* @timeoutpacket, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %50 = load i64, i64* @OPT_TIMEOUT, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strdup(i32* %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %56 = load i64, i64* @OPT_TIMEOUT, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @timeoutpacket, align 4
  %61 = load i32, i32* @timeoutnetwork, align 4
  %62 = load i32, i32* @maxtimeouts, align 4
  %63 = call i32 @settimeouts(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @debug, align 4
  %65 = load i32, i32* @DEBUG_OPTIONS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i32, i32* @LOG_DEBUG, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %71 = load i64, i64* @OPT_TIMEOUT, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, i32, ...) @tftp_log(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %68, %59
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %44, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @atoi(i32*) #1

declare dso_local i32 @tftp_log(i32, i8*, i32, ...) #1

declare dso_local i32 @send_error(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strdup(i32*) #1

declare dso_local i32 @settimeouts(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
