; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_daemon.c_restart_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_daemon.c_restart_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RestartRequest = common dso_local global i8* null, align 8
@PendingSignal = common dso_local global i64 0, align 8
@SaveArgv = common dso_local global i8** null, align 8
@LogLevel = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@NOQID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not restart: need full path\00", align 1
@EX_OSFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"restarting %s due to %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"implicit call\00", align 1
@UseMSP = common dso_local global i64 0, align 8
@RunAsUid = common dso_local global i64 0, align 8
@RealUid = common dso_local global i64 0, align 8
@EX_OK = common dso_local global i64 0, align 8
@LOG_ALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not drop privileges: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i64 0, align 8
@DtableSize = external dso_local global i32, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@ExternalEnviron = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"could not exec %s: %s\00", align 1
@DaemonPid = common dso_local global i64 0, align 8
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restart_daemon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @sm_clear_events()
  %8 = call i32 @sm_allsignals(i32 1)
  %9 = load i8*, i8** @RestartRequest, align 8
  store i8* %9, i8** %3, align 8
  store i8* null, i8** @RestartRequest, align 8
  store i64 0, i64* @PendingSignal, align 8
  %10 = load i8**, i8*** @SaveArgv, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 47
  br i1 %16, label %17, label %27

17:                                               ; preds = %0
  %18 = load i32, i32* @LogLevel, align 4
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @LOG_INFO, align 4
  %22 = load i32, i32* @NOQID, align 4
  %23 = call i32 (i32, i32, i8*, ...) @sm_syslog(i32 %21, i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @EX_OSFILE, align 4
  %26 = call i32 @finis(i32 0, i32 1, i32 %25)
  br label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* @LogLevel, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* @LOG_INFO, align 4
  %32 = load i32, i32* @NOQID, align 4
  %33 = load i8**, i8*** @SaveArgv, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %38 ], [ %40, %39 ]
  %43 = call i32 (i32, i32, i8*, ...) @sm_syslog(i32 %31, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %42)
  br label %44

44:                                               ; preds = %41, %27
  %45 = call i32 @closecontrolsocket(i32 1)
  %46 = call i32 (...) @close_sendmail_pid()
  %47 = load i64, i64* @UseMSP, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i64, i64* @RunAsUid, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i64, i64* @RealUid, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @RealUid, align 8
  %57 = load i64, i64* @RunAsUid, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i1 [ true, %52 ], [ %58, %55 ]
  br label %61

61:                                               ; preds = %59, %49, %44
  %62 = phi i1 [ false, %49 ], [ false, %44 ], [ %60, %59 ]
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i64 @drop_privileges(i32 %65)
  %67 = load i64, i64* @EX_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load i32, i32* @LogLevel, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @LOG_ALERT, align 4
  %74 = load i32, i32* @NOQID, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i8* @sm_errstring(i32 %75)
  %77 = call i32 (i32, i32, i8*, ...) @sm_syslog(i32 %73, i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* @EX_OSERR, align 4
  %80 = call i32 @finis(i32 0, i32 1, i32 %79)
  br label %81

81:                                               ; preds = %78, %61
  %82 = load i64, i64* @STDERR_FILENO, align 8
  %83 = add nsw i64 %82, 1
  %84 = load i32, i32* @DtableSize, align 4
  %85 = call i32 @sm_close_on_exec(i64 %83, i32 %84)
  %86 = load i32, i32* @SIGALRM, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @SM_NOOP_SIGNAL(i32 %86, i32 %87)
  %89 = load i32, i32* @SIGCHLD, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @SM_NOOP_SIGNAL(i32 %89, i32 %90)
  %92 = load i32, i32* @SIGHUP, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @SM_NOOP_SIGNAL(i32 %92, i32 %93)
  %95 = load i32, i32* @SIGINT, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @SM_NOOP_SIGNAL(i32 %95, i32 %96)
  %98 = load i32, i32* @SIGPIPE, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @SM_NOOP_SIGNAL(i32 %98, i32 %99)
  %101 = load i32, i32* @SIGTERM, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @SM_NOOP_SIGNAL(i32 %101, i32 %102)
  %104 = call i32 @sm_allsignals(i32 0)
  %105 = load i8**, i8*** @SaveArgv, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i8**, i8*** @SaveArgv, align 8
  %109 = ptrtoint i8** %108 to i32
  %110 = load i64, i64* @ExternalEnviron, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @execve(i8* %107, i32 %109, i32 %111)
  %113 = load i32, i32* @errno, align 4
  store i32 %113, i32* %2, align 4
  %114 = call i32 @sm_allsignals(i32 1)
  %115 = load i32, i32* @SIGALRM, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @sm_signal(i32 %115, i32 %116)
  %118 = load i32, i32* %2, align 4
  store i32 %118, i32* @errno, align 4
  %119 = load i32, i32* @LogLevel, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %81
  %122 = load i32, i32* @LOG_ALERT, align 4
  %123 = load i32, i32* @NOQID, align 4
  %124 = load i8**, i8*** @SaveArgv, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @errno, align 4
  %128 = call i8* @sm_errstring(i32 %127)
  %129 = call i32 (i32, i32, i8*, ...) @sm_syslog(i32 %122, i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %126, i8* %128)
  br label %130

130:                                              ; preds = %121, %81
  %131 = load i32, i32* @EX_OSFILE, align 4
  %132 = call i32 @finis(i32 0, i32 1, i32 %131)
  ret void
}

declare dso_local i32 @sm_clear_events(...) #1

declare dso_local i32 @sm_allsignals(i32) #1

declare dso_local i32 @sm_syslog(i32, i32, i8*, ...) #1

declare dso_local i32 @finis(i32, i32, i32) #1

declare dso_local i32 @closecontrolsocket(i32) #1

declare dso_local i32 @close_sendmail_pid(...) #1

declare dso_local i64 @drop_privileges(i32) #1

declare dso_local i8* @sm_errstring(i32) #1

declare dso_local i32 @sm_close_on_exec(i64, i32) #1

declare dso_local i32 @SM_NOOP_SIGNAL(i32, i32) #1

declare dso_local i32 @execve(i8*, i32, i32) #1

declare dso_local i32 @sm_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
