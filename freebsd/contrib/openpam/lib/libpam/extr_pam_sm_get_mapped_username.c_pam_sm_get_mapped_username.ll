; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_sm_get_mapped_username.c_pam_sm_get_mapped_username.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_sm_get_mapped_username.c_pam_sm_get_mapped_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_sm_get_mapped_username(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8** %6, i32 %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8** %6, i8*** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8** %8, i8*** %19, align 8
  %20 = call i32 (...) @ENTER()
  %21 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  %22 = call i32 @RETURNC(i32 %21)
  %23 = load i32, i32* %10, align 4
  ret i32 %23
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @RETURNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
