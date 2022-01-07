; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_pk1.c_RSA_padding_add_PKCS1_type_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_pk1.c_RSA_padding_add_PKCS1_type_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_F_RSA_PADDING_ADD_PKCS1_TYPE_2 = common dso_local global i32 0, align 4
@RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_padding_add_PKCS1_type_2(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %18 = load i32, i32* @RSA_F_RSA_PADDING_ADD_PKCS1_TYPE_2, align 4
  %19 = load i32, i32* @RSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE, align 4
  %20 = call i32 @RSAerr(i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %72

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
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @RAND_bytes(i8* %31, i32 %32)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %72

36:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @RAND_bytes(i8* %48, i32 1)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %72

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %47, label %58

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %37

65:                                               ; preds = %37
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  store i8 0, i8* %66, align 1
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %51, %35, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
