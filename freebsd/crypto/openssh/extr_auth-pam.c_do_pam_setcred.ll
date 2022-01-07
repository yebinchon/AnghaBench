; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_do_pam_setcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_do_pam_setcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sshpam_handle = common dso_local global i32 0, align 4
@PAM_CONV = common dso_local global i32 0, align 4
@store_conv = common dso_local global i32 0, align 4
@sshpam_err = common dso_local global i64 0, align 8
@PAM_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"PAM: failed to set PAM_CONV: %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PAM: establishing credentials\00", align 1
@PAM_ESTABLISH_CRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PAM: reinitializing credentials\00", align 1
@PAM_REINITIALIZE_CRED = common dso_local global i32 0, align 4
@sshpam_cred_established = common dso_local global i32 0, align 4
@sshpam_authenticated = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"PAM: pam_setcred(): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_pam_setcred(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @sshpam_handle, align 4
  %4 = load i32, i32* @PAM_CONV, align 4
  %5 = call i64 @pam_set_item(i32 %3, i32 %4, i8* bitcast (i32* @store_conv to i8*))
  store i64 %5, i64* @sshpam_err, align 8
  %6 = load i64, i64* @sshpam_err, align 8
  %7 = load i64, i64* @PAM_SUCCESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @sshpam_handle, align 4
  %11 = load i64, i64* @sshpam_err, align 8
  %12 = call i32 @pam_strerror(i32 %10, i64 %11)
  %13 = call i32 @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @sshpam_handle, align 4
  %20 = load i32, i32* @PAM_ESTABLISH_CRED, align 4
  %21 = call i64 @pam_setcred(i32 %19, i32 %20)
  store i64 %21, i64* @sshpam_err, align 8
  br label %27

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @sshpam_handle, align 4
  %25 = load i32, i32* @PAM_REINITIALIZE_CRED, align 4
  %26 = call i64 @pam_setcred(i32 %24, i32 %25)
  store i64 %26, i64* @sshpam_err, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i64, i64* @sshpam_err, align 8
  %29 = load i64, i64* @PAM_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* @sshpam_cred_established, align 4
  br label %45

32:                                               ; preds = %27
  %33 = load i64, i64* @sshpam_authenticated, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @sshpam_handle, align 4
  %37 = load i64, i64* @sshpam_err, align 8
  %38 = call i32 @pam_strerror(i32 %36, i64 %37)
  %39 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %45

40:                                               ; preds = %32
  %41 = load i32, i32* @sshpam_handle, align 4
  %42 = load i64, i64* @sshpam_err, align 8
  %43 = call i32 @pam_strerror(i32 %41, i64 %42)
  %44 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %31, %40, %35
  ret void
}

declare dso_local i64 @pam_set_item(i32, i32, i8*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @pam_strerror(i32, i64) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i64 @pam_setcred(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
