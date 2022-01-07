; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_UI_UTIL_read_pw.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_UI_UTIL_read_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_UTIL_read_pw(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %56

17:                                               ; preds = %5
  %18 = call i32* (...) @UI_new()
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i32*, i32** %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @UI_add_input_string(i32* %22, i8* %23, i32 0, i8* %24, i32 0, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @UI_add_verify_string(i32* %34, i8* %35, i32 0, i8* %36, i32 0, i32 %38, i8* %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %33, %30, %21
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @UI_process(i32* %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @UI_free(i32* %48)
  br label %50

50:                                               ; preds = %47, %17
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %16
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32* @UI_new(...) #1

declare dso_local i32 @UI_add_input_string(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @UI_add_verify_string(i32*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @UI_process(i32*) #1

declare dso_local i32 @UI_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
