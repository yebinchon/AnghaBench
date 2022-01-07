; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_splitandenc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_splitandenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @splitandenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitandenc(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 7
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 1
  %24 = or i32 %18, %23
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 6
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %35, 2
  %37 = or i32 %31, %36
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 2
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 5
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = ashr i32 %48, 3
  %50 = or i32 %44, %49
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 3
  store i8 %51, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 4
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 4
  %63 = or i32 %57, %62
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 4
  store i8 %64, i8* %65, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 3
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 5
  %76 = or i32 %70, %75
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 5
  store i8 %77, i8* %78, align 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 2
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 6
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = ashr i32 %87, 6
  %89 = or i32 %83, %88
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 6
  store i8 %90, i8* %91, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 1
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 7
  store i8 %97, i8* %98, align 1
  %99 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %3
  %103 = load i32, i32* @ENOMEM, align 4
  store i32 %103, i32* %4, align 4
  br label %117

104:                                              ; preds = %3
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 (...) @EVP_des_cbc()
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %108 = call i32 @EVP_CipherInit_ex(i32* %105, i32 %106, i32* null, i8* %107, i32* null, i32 1)
  %109 = load i32*, i32** %8, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @EVP_Cipher(i32* %109, i8* %110, i8* %111, i32 8)
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @EVP_CIPHER_CTX_free(i32* %113)
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %116 = call i32 @memset(i8* %115, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %104, %102
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @EVP_des_cbc(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
