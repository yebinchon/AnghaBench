; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ssl.c_RSA_padding_add_SSLv23.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ssl.c_RSA_padding_add_SSLv23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_RSA_PADDING_ADD_SSLV23 = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_add_SSLv23(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 11
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @RSA_F_RSA_PADDING_ADD_SSLV23, align 4
  %19 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE, align 4
  %20 = call i32 @RSAerr(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %77

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %12, align 8
  store i8 0, i8* %23, align 1
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  store i8 2, i8* %25, align 1
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 3
  %29 = sub nsw i32 %28, 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @RAND_bytes(i8* %32, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %77

37:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i8*, i8** %12, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %54, %47
  %49 = load i8*, i8** %12, align 8
  %50 = call i64 @RAND_bytes(i8* %49, i32 1)
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %77

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %48, label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @memset(i8* %67, i32 3, i32 8)
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 8
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  store i8 0, i8* %71, align 1
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %66, %52, %36, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
