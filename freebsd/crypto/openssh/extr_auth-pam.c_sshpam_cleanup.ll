; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_sshpam_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_sshpam_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sshpam_handle = common dso_local global i32* null, align 8
@use_privsep = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"PAM: cleanup\00", align 1
@PAM_CONV = common dso_local global i32 0, align 4
@null_conv = common dso_local global i32 0, align 4
@sshpam_session_open = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"PAM: closing session\00", align 1
@PAM_SILENT = common dso_local global i32 0, align 4
@sshpam_cred_established = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"PAM: deleting credentials\00", align 1
@PAM_DELETE_CRED = common dso_local global i32 0, align 4
@sshpam_authenticated = common dso_local global i64 0, align 8
@sshpam_err = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshpam_cleanup() #0 {
  %1 = load i32*, i32** @sshpam_handle, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @use_privsep, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = call i32 (...) @mm_is_monitor()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %0
  br label %34

10:                                               ; preds = %6, %3
  %11 = call i32 @debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** @sshpam_handle, align 8
  %13 = load i32, i32* @PAM_CONV, align 4
  %14 = call i32 @pam_set_item(i32* %12, i32 %13, i8* bitcast (i32* @null_conv to i8*))
  %15 = load i64, i64* @sshpam_session_open, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** @sshpam_handle, align 8
  %20 = load i32, i32* @PAM_SILENT, align 4
  %21 = call i32 @pam_close_session(i32* %19, i32 %20)
  store i64 0, i64* @sshpam_session_open, align 8
  br label %22

22:                                               ; preds = %17, %10
  %23 = load i64, i64* @sshpam_cred_established, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** @sshpam_handle, align 8
  %28 = load i32, i32* @PAM_DELETE_CRED, align 4
  %29 = call i32 @pam_setcred(i32* %27, i32 %28)
  store i64 0, i64* @sshpam_cred_established, align 8
  br label %30

30:                                               ; preds = %25, %22
  store i64 0, i64* @sshpam_authenticated, align 8
  %31 = load i32*, i32** @sshpam_handle, align 8
  %32 = load i32, i32* @sshpam_err, align 4
  %33 = call i32 @pam_end(i32* %31, i32 %32)
  store i32* null, i32** @sshpam_handle, align 8
  br label %34

34:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @mm_is_monitor(...) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @pam_set_item(i32*, i32, i8*) #1

declare dso_local i32 @pam_close_session(i32*, i32) #1

declare dso_local i32 @pam_setcred(i32*, i32) #1

declare dso_local i32 @pam_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
