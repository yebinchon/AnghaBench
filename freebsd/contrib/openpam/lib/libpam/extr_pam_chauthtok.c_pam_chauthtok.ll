; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_chauthtok.c_pam_chauthtok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_chauthtok.c_pam_chauthtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_SILENT = common dso_local global i32 0, align 4
@PAM_CHANGE_EXPIRED_AUTHTOK = common dso_local global i32 0, align 4
@PAM_BAD_CONSTANT = common dso_local global i32 0, align 4
@PAM_SM_CHAUTHTOK = common dso_local global i32 0, align 4
@PAM_PRELIM_CHECK = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_UPDATE_AUTHTOK = common dso_local global i32 0, align 4
@PAM_OLDAUTHTOK = common dso_local global i32 0, align 4
@PAM_AUTHTOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_chauthtok(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @ENTER()
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PAM_SILENT, align 4
  %10 = load i32, i32* @PAM_CHANGE_EXPIRED_AUTHTOK, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @PAM_BAD_CONSTANT, align 4
  %17 = call i32 @RETURNC(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @PAM_SM_CHAUTHTOK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PAM_PRELIM_CHECK, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @openpam_dispatch(i32* %19, i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAM_SUCCESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @PAM_SM_CHAUTHTOK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PAM_UPDATE_AUTHTOK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @openpam_dispatch(i32* %29, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %18
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @PAM_OLDAUTHTOK, align 4
  %38 = call i32 @pam_set_item(i32* %36, i32 %37, i32* null)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @PAM_AUTHTOK, align 4
  %41 = call i32 @pam_set_item(i32* %39, i32 %40, i32* null)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @RETURNC(i32 %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i32 @openpam_dispatch(i32*, i32, i32) #1

declare dso_local i32 @pam_set_item(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
