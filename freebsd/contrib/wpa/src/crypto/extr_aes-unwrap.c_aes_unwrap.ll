; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-unwrap.c_aes_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-unwrap.c_aes_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_unwrap(i32* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @os_memcpy(i32* %25, i32* %26, i32 8)
  %28 = load i32*, i32** %11, align 8
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 8, %32
  %34 = call i32 @os_memcpy(i32* %29, i32* %31, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @aes_decrypt_init(i32* %35, i64 %36)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %120

41:                                               ; preds = %5
  store i32 5, i32* %17, align 4
  br label %42

42:                                               ; preds = %99, %41
  %43 = load i32, i32* %17, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %102

45:                                               ; preds = %42
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %13, align 8
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %95, %45
  %54 = load i32, i32* %16, align 4
  %55 = icmp sge i32 %54, 1
  br i1 %55, label %56, label %98

56:                                               ; preds = %53
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %58 = call i32 @os_memcpy(i32* %24, i32* %57, i32 8)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %17, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = getelementptr inbounds i32, i32* %24, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %19, align 4
  %69 = lshr i32 %68, 8
  %70 = getelementptr inbounds i32, i32* %24, i64 6
  %71 = load i32, i32* %70, align 8
  %72 = xor i32 %71, %69
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %19, align 4
  %74 = lshr i32 %73, 16
  %75 = getelementptr inbounds i32, i32* %24, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %19, align 4
  %79 = lshr i32 %78, 24
  %80 = getelementptr inbounds i32, i32* %24, i64 4
  %81 = load i32, i32* %80, align 16
  %82 = xor i32 %81, %79
  store i32 %82, i32* %80, align 16
  %83 = getelementptr inbounds i32, i32* %24, i64 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @os_memcpy(i32* %83, i32* %84, i32 8)
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @aes_decrypt(i8* %86, i32* %24, i32* %24)
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %89 = call i32 @os_memcpy(i32* %88, i32* %24, i32 8)
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %24, i64 8
  %92 = call i32 @os_memcpy(i32* %90, i32* %91, i32 8)
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 -8
  store i32* %94, i32** %13, align 8
  br label %95

95:                                               ; preds = %56
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %16, align 4
  br label %53

98:                                               ; preds = %53
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %17, align 4
  br label %42

102:                                              ; preds = %42
  %103 = load i8*, i8** %18, align 8
  %104 = call i32 @aes_decrypt_deinit(i8* %103)
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %116, %102
  %106 = load i32, i32* %16, align 4
  %107 = icmp slt i32 %106, 8
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 166
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %120

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %105

119:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %120

120:                                              ; preds = %119, %114, %40
  %121 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i8* @aes_decrypt_init(i32*, i64) #2

declare dso_local i32 @aes_decrypt(i8*, i32*, i32*) #2

declare dso_local i32 @aes_decrypt_deinit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
