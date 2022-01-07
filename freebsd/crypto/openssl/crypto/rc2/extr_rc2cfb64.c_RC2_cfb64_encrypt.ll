; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc2/extr_rc2cfb64.c_RC2_cfb64_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rc2/extr_rc2cfb64.c_RC2_cfb64_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RC2_cfb64_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [2 x i64], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %19, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %21, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %64, %30
  %32 = load i64, i64* %19, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %19, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i8*, i8** %21, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @c2l(i8* %39, i64 %40)
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load i8*, i8** %21, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @c2l(i8* %44, i64 %45)
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @RC2_encrypt(i64* %49, i32* %50)
  %52 = load i8*, i8** %12, align 8
  store i8* %52, i8** %21, align 8
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %54 = load i64, i64* %53, align 16
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i8*, i8** %21, align 8
  %57 = call i32 @l2c(i64 %55, i8* %56)
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i8*, i8** %21, align 8
  %62 = call i32 @l2c(i64 %60, i8* %61)
  %63 = load i8*, i8** %12, align 8
  store i8* %63, i8** %21, align 8
  br label %64

64:                                               ; preds = %38, %35
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** %21, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %68, %74
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %22, align 1
  %77 = load i8, i8* %22, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i8, i8* %22, align 1
  %81 = load i8*, i8** %21, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  %87 = and i32 %86, 7
  store i32 %87, i32* %18, align 4
  br label %31

88:                                               ; preds = %31
  br label %149

89:                                               ; preds = %7
  br label %90

90:                                               ; preds = %123, %89
  %91 = load i64, i64* %19, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %19, align 8
  %93 = icmp ne i64 %91, 0
  br i1 %93, label %94, label %148

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %94
  %98 = load i8*, i8** %21, align 8
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @c2l(i8* %98, i64 %99)
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %101, i64* %102, align 16
  %103 = load i8*, i8** %21, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @c2l(i8* %103, i64 %104)
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @RC2_encrypt(i64* %108, i32* %109)
  %111 = load i8*, i8** %12, align 8
  store i8* %111, i8** %21, align 8
  %112 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %113 = load i64, i64* %112, align 16
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = load i8*, i8** %21, align 8
  %116 = call i32 @l2c(i64 %114, i8* %115)
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %17, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i8*, i8** %21, align 8
  %121 = call i32 @l2c(i64 %119, i8* %120)
  %122 = load i8*, i8** %12, align 8
  store i8* %122, i8** %21, align 8
  br label %123

123:                                              ; preds = %97, %94
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  %126 = load i8, i8* %124, align 1
  store i8 %126, i8* %23, align 1
  %127 = load i8*, i8** %21, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  store i8 %131, i8* %22, align 1
  %132 = load i8, i8* %23, align 1
  %133 = load i8*, i8** %21, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 %132, i8* %136, align 1
  %137 = load i8, i8* %22, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* %23, align 1
  %140 = zext i8 %139 to i32
  %141 = xor i32 %138, %140
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %9, align 8
  store i8 %142, i8* %143, align 1
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  %147 = and i32 %146, 7
  store i32 %147, i32* %18, align 4
  br label %90

148:                                              ; preds = %90
  br label %149

149:                                              ; preds = %148, %88
  store i8 0, i8* %23, align 1
  store i8 0, i8* %22, align 1
  store i64 0, i64* %17, align 8
  %150 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %150, align 8
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %151, align 16
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i32*, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i64) #1

declare dso_local i32 @RC2_encrypt(i64*, i32*) #1

declare dso_local i32 @l2c(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
