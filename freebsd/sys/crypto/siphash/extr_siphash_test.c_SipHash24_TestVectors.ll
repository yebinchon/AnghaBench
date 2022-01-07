; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/siphash/extr_siphash_test.c_SipHash24_TestVectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/siphash/extr_siphash_test.c_SipHash24_TestVectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLEN = common dso_local global i32 0, align 4
@vectors = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SipHash24_TestVectors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @MAXLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %20, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %12

23:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @MAXLEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %11, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = call i32 @SipHash24_Init(i32* %7)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %35 = call i32 @SipHash_SetKey(i32* %7, i32* %34)
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @SipHash_Update(i32* %7, i32* %11, i32 %36)
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %39 = call i32 @SipHash_Final(i32* %38, i32* %7)
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %41 = load i32*, i32** @vectors, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @memcmp(i32* %40, i32 %45, i32 8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %28
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SipHash24_Init(i32*) #2

declare dso_local i32 @SipHash_SetKey(i32*, i32*) #2

declare dso_local i32 @SipHash_Update(i32*, i32*, i32) #2

declare dso_local i32 @SipHash_Final(i32*, i32*) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
