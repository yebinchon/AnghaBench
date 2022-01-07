; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_do_pam_chauthtok.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth-pam.c_do_pam_chauthtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_privsep = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Password expired (unable to change with privsep)\00", align 1
@sshpam_handle = common dso_local global i32 0, align 4
@PAM_CONV = common dso_local global i32 0, align 4
@tty_conv = common dso_local global i32 0, align 4
@sshpam_err = common dso_local global i64 0, align 8
@PAM_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"PAM: failed to set PAM_CONV: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PAM: changing password\00", align 1
@PAM_CHANGE_EXPIRED_AUTHTOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"PAM: pam_chauthtok(): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_pam_chauthtok() #0 {
  %1 = load i64, i64* @use_privsep, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @sshpam_handle, align 4
  %7 = load i32, i32* @PAM_CONV, align 4
  %8 = call i64 @pam_set_item(i32 %6, i32 %7, i8* bitcast (i32* @tty_conv to i8*))
  store i64 %8, i64* @sshpam_err, align 8
  %9 = load i64, i64* @sshpam_err, align 8
  %10 = load i64, i64* @PAM_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load i32, i32* @sshpam_handle, align 4
  %14 = load i64, i64* @sshpam_err, align 8
  %15 = call i32 @pam_strerror(i32 %13, i64 %14)
  %16 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12, %5
  %18 = call i32 @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @sshpam_handle, align 4
  %20 = load i32, i32* @PAM_CHANGE_EXPIRED_AUTHTOK, align 4
  %21 = call i64 @pam_chauthtok(i32 %19, i32 %20)
  store i64 %21, i64* @sshpam_err, align 8
  %22 = load i64, i64* @sshpam_err, align 8
  %23 = load i64, i64* @PAM_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* @sshpam_handle, align 4
  %27 = load i64, i64* @sshpam_err, align 8
  %28 = call i32 @pam_strerror(i32 %26, i64 %27)
  %29 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @pam_set_item(i32, i32, i8*) #1

declare dso_local i32 @pam_strerror(i32, i64) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i64 @pam_chauthtok(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
