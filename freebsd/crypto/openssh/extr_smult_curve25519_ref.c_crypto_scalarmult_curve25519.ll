; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_smult_curve25519_ref.c_crypto_scalarmult_curve25519.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_smult_curve25519_ref.c_crypto_scalarmult_curve25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_scalarmult_curve25519(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [96 x i32], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %10

25:                                               ; preds = %10
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 248
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 16
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 31
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 127
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 31
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, 64
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %54, %25
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %42, 32
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %41

57:                                               ; preds = %41
  %58 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %60 = call i32 @mainloop(i32* %58, i8* %59)
  %61 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %62 = getelementptr inbounds i32, i32* %61, i64 32
  %63 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %64 = getelementptr inbounds i32, i32* %63, i64 32
  %65 = call i32 @recip(i32* %62, i32* %64)
  %66 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %67 = getelementptr inbounds i32, i32* %66, i64 64
  %68 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %69 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 32
  %71 = call i32 @mult(i32* %67, i32* %68, i32* %70)
  %72 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 64
  %74 = call i32 @freeze(i32* %73)
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %89, %57
  %76 = load i32, i32* %9, align 4
  %77 = icmp ult i32 %76, 32
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = add i32 64, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [96 x i32], [96 x i32]* %7, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %75

92:                                               ; preds = %75
  ret i32 0
}

declare dso_local i32 @mainloop(i32*, i8*) #1

declare dso_local i32 @recip(i32*, i32*) #1

declare dso_local i32 @mult(i32*, i32*, i32*) #1

declare dso_local i32 @freeze(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
