; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/rijndael/extr_test00.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/rijndael/extr_test00.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LL = common dso_local global i32 0, align 4
@MODE_CBC = common dso_local global i32 0, align 4
@DIR_DECRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error: inplace decryption fails in %d places\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @LL, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @LL, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load i32, i32* @MODE_CBC, align 4
  %23 = call i32 @rijndael_cipherInit(i32* %7, i32 %22, i32* null)
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %32, %2
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load i32, i32* @DIR_DECRYPT, align 4
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %38 = call i32 @rijndael_makeKey(i32* %6, i32 %36, i32 128, i32* %37)
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %48, %35
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @LL, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %18, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %39

51:                                               ; preds = %39
  %52 = load i32, i32* @LL, align 4
  %53 = mul nsw i32 %52, 8
  %54 = call i32 @rijndael_blockDecrypt(i32* %7, i32* %6, i32* %18, i32 %53, i32* %21)
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %65, %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @LL, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %21, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %55

68:                                               ; preds = %55
  %69 = call i32 @putchar(i8 signext 10)
  %70 = load i32, i32* @LL, align 4
  %71 = mul nsw i32 %70, 8
  %72 = call i32 @rijndael_blockDecrypt(i32* %7, i32* %6, i32* %18, i32 %71, i32* %18)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %96, %68
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @LL, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %18, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %18, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %21, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %77
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %73

99:                                               ; preds = %73
  %100 = call i32 @putchar(i8 signext 10)
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %108

107:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rijndael_cipherInit(i32*, i32, i32*) #2

declare dso_local i32 @rijndael_makeKey(i32*, i32, i32, i32*) #2

declare dso_local i32 @rijndael_blockDecrypt(i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
