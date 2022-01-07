; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_end_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_end_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logged_in = common dso_local global i64 0, align 8
@dowtmp = common dso_local global i64 0, align 8
@wtmpid = common dso_local global i32 0, align 4
@pw = common dso_local global i32* null, align 8
@guest = common dso_local global i64 0, align 8
@dochroot = common dso_local global i64 0, align 8
@LOGIN_SETALL = common dso_local global i32 0, align 4
@LOGIN_SETENV = common dso_local global i32 0, align 4
@LOGIN_SETGROUP = common dso_local global i32 0, align 4
@LOGIN_SETLOGIN = common dso_local global i32 0, align 4
@LOGIN_SETPATH = common dso_local global i32 0, align 4
@LOGIN_SETUSER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@PAM_DELETE_CRED = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@pamh = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @end_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_login() #0 {
  %1 = call i32 @seteuid(i32 0)
  %2 = load i64, i64* @logged_in, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @dowtmp, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @wtmpid, align 4
  %9 = call i32 @ftpd_logwtmp(i32 %8, i32* null, i32* null)
  br label %10

10:                                               ; preds = %7, %4, %0
  store i32* null, i32** @pw, align 8
  store i64 0, i64* @logged_in, align 8
  store i64 0, i64* @guest, align 8
  store i64 0, i64* @dochroot, align 8
  ret void
}

declare dso_local i32 @seteuid(i32) #1

declare dso_local i32 @ftpd_logwtmp(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
