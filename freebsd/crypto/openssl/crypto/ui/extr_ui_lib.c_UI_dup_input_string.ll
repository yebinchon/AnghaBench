; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_dup_input_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_dup_input_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UI_F_UI_DUP_INPUT_STRING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@UIT_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_dup_input_string(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %6
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @OPENSSL_strdup(i8* %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @UI_F_UI_DUP_INPUT_STRING, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @UIerr(i32 %23, i32 %24)
  store i32 0, i32* %7, align 4
  br label %36

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %6
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* @UIT_PROMPT, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @general_allocate_string(i32* %28, i8* %29, i32 1, i32 %30, i32 %31, i8* %32, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27, %22
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local i32 @general_allocate_string(i32*, i8*, i32, i32, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
