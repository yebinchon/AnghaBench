; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_option_blksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-options.c_option_blksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@options = common dso_local global %struct.TYPE_2__* null, align 8
@OPT_BLKSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"net.inet.udp.maxdgram\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"sysctl: net.inet.udp.maxdgram\00", align 1
@acting_as_client = common dso_local global i64 0, align 8
@BLKSIZE_MIN = common dso_local global i32 0, align 4
@BLKSIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid blocksize (%d bytes), aborting\00", align 1
@EBADOP = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid blocksize (%d bytes), ignoring request\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"Invalid blocksize (%d bytes), net.inet.udp.maxdgram sysctl limits it to %ld bytes.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@segsize = common dso_local global i32 0, align 4
@pktsize = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_OPTIONS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Setting blksize to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_blksize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %8 = load i64, i64* @OPT_BLKSIZE, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

14:                                               ; preds = %1
  store i64 4, i64* %5, align 8
  %15 = call i64 @sysctlbyname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %4, i64* %5, i32* null, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 (i32, i8*, ...) @tftp_log(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @acting_as_client, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %14
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %26 = load i64, i64* @OPT_BLKSIZE, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @atoi(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BLKSIZE_MIN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BLKSIZE_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34, %24
  %39 = load i64, i64* @acting_as_client, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, ...) @tftp_log(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @EBADOP, align 4
  %47 = call i32 @send_error(i32 %45, i32 %46)
  store i32 1, i32* %2, align 4
  br label %97

48:                                               ; preds = %38
  %49 = load i32, i32* @LOG_WARNING, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i8*, ...) @tftp_log(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 0, i32* %2, align 4
  br label %97

52:                                               ; preds = %34
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i64, i64* @acting_as_client, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32, i8*, ...) @tftp_log(i32 %60, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @EBADOP, align 4
  %66 = call i32 @send_error(i32 %64, i32 %65)
  store i32 1, i32* %2, align 4
  br label %97

67:                                               ; preds = %56
  %68 = load i32, i32* @LOG_WARNING, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, ...) @tftp_log(i32 %68, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %76 = load i64, i64* @OPT_BLKSIZE, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @asprintf(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* @segsize, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* @pktsize, align 4
  %84 = load i32, i32* @debug, align 4
  %85 = load i32, i32* @DEBUG_OPTIONS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %74
  %89 = load i32, i32* @LOG_DEBUG, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %91 = load i64, i64* @OPT_BLKSIZE, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @tftp_log(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %88, %74
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %59, %48, %41, %17, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @tftp_log(i32, i8*, ...) #1

declare dso_local i32 @atoi(i32*) #1

declare dso_local i32 @send_error(i32, i32) #1

declare dso_local i32 @asprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
