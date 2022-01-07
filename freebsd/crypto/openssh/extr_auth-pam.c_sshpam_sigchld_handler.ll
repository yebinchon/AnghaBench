; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_sshpam_sigchld_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_sshpam_sigchld_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@cleanup_ctxt = common dso_local global %struct.TYPE_2__* null, align 8
@sshpam_thread_status = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"PAM: authentication thread exited unexpectedly\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PAM: authentication thread exited uncleanly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sshpam_sigchld_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sshpam_sigchld_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SIGCHLD, align 4
  %4 = load i32, i32* @SIG_DFL, align 4
  %5 = call i32 @signal(i32 %3, i32 %4)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cleanup_ctxt, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cleanup_ctxt, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WNOHANG, align 4
  %14 = call i32 @waitpid(i32 %12, i32* @sshpam_thread_status, i32 %13)
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cleanup_ctxt, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @SIGTERM, align 8
  %21 = call i32 @kill(i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %32, %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cleanup_ctxt, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @waitpid(i32 %25, i32* @sshpam_thread_status, i32 0)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %22

33:                                               ; preds = %28
  br label %57

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32, i32* @sshpam_thread_status, align 4
  %37 = call i64 @WIFSIGNALED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @sshpam_thread_status, align 4
  %41 = call i64 @WTERMSIG(i32 %40)
  %42 = load i64, i64* @SIGTERM, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %57

45:                                               ; preds = %39, %35
  %46 = load i32, i32* @sshpam_thread_status, align 4
  %47 = call i32 @WIFEXITED(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 @sigdie(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* @sshpam_thread_status, align 4
  %53 = call i64 @WEXITSTATUS(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @sigdie(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %8, %33, %44, %55, %51
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @kill(i32, i64) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @sigdie(i8*) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
