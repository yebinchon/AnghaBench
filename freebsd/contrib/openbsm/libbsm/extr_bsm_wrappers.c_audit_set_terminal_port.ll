; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_set_terminal_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_wrappers.c_audit_set_terminal_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@kAUBadParamErr = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fstat() failed (%s)\00", align 1
@kAUStatErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"stat() failed (%s)\00", align 1
@kAUNoErr = common dso_local global i32 0, align 4
@NODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_set_terminal_port(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @kAUBadParamErr, align 4
  store i32 %8, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = call i64 @fstat(i32 %11, %struct.stat* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EBADF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @strerror(i64 %20)
  %22 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @kAUStatErr, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %14
  %25 = call i64 @stat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i64, i64* @errno, align 8
  %30 = call i32 @strerror(i64 %29)
  %31 = call i32 @syslog(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @kAUStatErr, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %9
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %3, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @kAUNoErr, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %27, %18, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
