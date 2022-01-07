; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_setcred.c_pam_setcred.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_setcred.c_pam_setcred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_SILENT = common dso_local global i32 0, align 4
@PAM_ESTABLISH_CRED = common dso_local global i32 0, align 4
@PAM_DELETE_CRED = common dso_local global i32 0, align 4
@PAM_REINITIALIZE_CRED = common dso_local global i32 0, align 4
@PAM_REFRESH_CRED = common dso_local global i32 0, align 4
@PAM_BAD_CONSTANT = common dso_local global i32 0, align 4
@PAM_SM_SETCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_setcred(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @ENTER()
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PAM_SILENT, align 4
  %10 = load i32, i32* @PAM_ESTABLISH_CRED, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PAM_DELETE_CRED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PAM_REINITIALIZE_CRED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PAM_REFRESH_CRED, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %8, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @PAM_BAD_CONSTANT, align 4
  %23 = call i32 @RETURNC(i32 %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @PAM_SM_SETCRED, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @openpam_dispatch(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RETURNC(i32 %29)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i32 @openpam_dispatch(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
