; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ctr.c_aes_ctr_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ctr.c_aes_ctr_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_ctr_encrypt(i64* %0, i64 %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i64*, i64** %10, align 8
  store i64* %23, i64** %17, align 8
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i8* @aes_encrypt_init(i64* %31, i64 %32)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %106

37:                                               ; preds = %5
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %40 = call i32 @os_memcpy(i64* %27, i64* %38, i32 %39)
  br label %41

41:                                               ; preds = %102, %37
  %42 = load i64, i64* %15, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @aes_encrypt(i8* %45, i64* %27, i64* %30)
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* %15, align 8
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %55 = sext i32 %54 to i64
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i64 [ %52, %51 ], [ %55, %53 ]
  store i64 %57, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %71, %56
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i64, i64* %30, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %17, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = xor i64 %69, %65
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %58

74:                                               ; preds = %58
  %75 = load i64, i64* %14, align 8
  %76 = load i64*, i64** %17, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 %75
  store i64* %77, i64** %17, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %15, align 8
  %81 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %99, %74
  %84 = load i32, i32* %16, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %27, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %27, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %102

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %16, align 4
  br label %83

102:                                              ; preds = %97, %83
  br label %41

103:                                              ; preds = %41
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @aes_encrypt_deinit(i8* %104)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %106

106:                                              ; preds = %103, %36
  %107 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @aes_encrypt_init(i64*, i64) #2

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #2

declare dso_local i32 @aes_encrypt(i8*, i64*, i64*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
