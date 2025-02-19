; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_UI_UTIL_read_pw_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_UI_UTIL_read_pw_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_UTIL_read_pw_string(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @BUFSIZ, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @BUFSIZ, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @UI_UTIL_read_pw(i8* %16, i8* %15, i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @BUFSIZ, align 4
  %30 = call i32 @OPENSSL_cleanse(i8* %15, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %32)
  ret i32 %31
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UI_UTIL_read_pw(i8*, i8*, i32, i8*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
