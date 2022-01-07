; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_register_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd.c_register_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@auditd_relay_signal = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Could not set signal handler for SIGTERM\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not set signal handler for SIGCHLD\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not set signal handler for SIGHUP\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not set signal handler for SIGALRM\00", align 1
@AUDITD_PIDFILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not open PID file\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"PID file is locked (is another auditd running?).\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_daemon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @auditd_relay_signal, align 4
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  %10 = call i32 @sigemptyset(i32* %9)
  %11 = load i32, i32* @SIGTERM, align 4
  %12 = call i64 @sigaction(i32 %11, %struct.sigaction* %2, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = call i32 @auditd_log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @fail_exit()
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i32, i32* @SIGCHLD, align 4
  %19 = call i64 @sigaction(i32 %18, %struct.sigaction* %2, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32 @auditd_log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @fail_exit()
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* @SIGHUP, align 4
  %26 = call i64 @sigaction(i32 %25, %struct.sigaction* %2, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = call i32 @auditd_log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 (...) @fail_exit()
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* @SIGALRM, align 4
  %33 = call i64 @sigaction(i32 %32, %struct.sigaction* %2, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i32 @auditd_log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 (...) @fail_exit()
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @AUDITD_PIDFILE, align 4
  %40 = call i32* @fopen(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %3, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call i32 @auditd_log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %44 = call i32 (...) @audit_warn_tmpfile()
  store i32 -1, i32* %1, align 4
  br label %70

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fileno(i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @LOCK_EX, align 4
  %50 = load i32, i32* @LOCK_NB, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @flock(i32 %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = call i32 @auditd_log_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %56 = call i32 (...) @audit_warn_ebusy()
  store i32 -1, i32* %1, align 4
  br label %70

57:                                               ; preds = %45
  %58 = call i32 (...) @getpid()
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ftruncate(i32 %59, i32 0)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @fprintf(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 (...) @fail_exit()
  br label %67

67:                                               ; preds = %65, %57
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @fflush(i32* %68)
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %67, %54, %42
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @auditd_log_err(i8*) #1

declare dso_local i32 @fail_exit(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @audit_warn_tmpfile(...) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @flock(i32, i32) #1

declare dso_local i32 @audit_warn_ebusy(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
