; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_x931.c_RSA_padding_add_X931.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_x931.c_RSA_padding_add_X931.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_RSA_PADDING_ADD_X931 = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_add_X931(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sub nsw i32 %14, 2
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @RSA_F_RSA_PADDING_ADD_X931, align 4
  %20 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE, align 4
  %21 = call i32 @RSAerr(i32 %19, i32 %20)
  store i32 -1, i32* %5, align 4
  br label %57

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %11, align 8
  store i8 106, i8* %27, align 1
  br label %47

29:                                               ; preds = %22
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %11, align 8
  store i8 107, i8* %30, align 1
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @memset(i8* %35, i32 187, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i8*, i8** %11, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %34, %29
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %11, align 8
  store i8 -70, i8* %45, align 1
  br label %47

47:                                               ; preds = %44, %26
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  store i8 -52, i8* %56, align 1
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
