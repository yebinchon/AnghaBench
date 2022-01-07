; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc4_hmac_md5.c_rc4_hmac_md5_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc4_hmac_md5.c_rc4_hmac_md5_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@EVP_AEAD_TLS1_AAD_LEN = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @rc4_hmac_md5_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc4_hmac_md5_ctrl(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.TYPE_3__* @data(i32* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %10, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %155 [
    i32 129, label %18
    i32 128, label %90
  ]

18:                                               ; preds = %4
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 64)
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 64
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @MD5_Init(i32* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @MD5_Update(i32* %28, i8* %29, i32 %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = call i32 @MD5_Final(i8* %32, i32* %34)
  br label %41

36:                                               ; preds = %18
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %23
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, 64
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = xor i32 %51, 54
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = call i32 @MD5_Init(i32* %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %64 = call i32 @MD5_Update(i32* %62, i8* %63, i32 64)
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %77, %57
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %67, 64
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %74, 106
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = call i32 @MD5_Init(i32* %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %87 = call i32 @MD5_Update(i32* %85, i8* %86, i32 64)
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %89 = call i32 @OPENSSL_cleanse(i8* %88, i32 64)
  store i32 1, i32* %5, align 4
  br label %156

90:                                               ; preds = %4
  %91 = load i8*, i8** %9, align 8
  store i8* %91, i8** %13, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @EVP_AEAD_TLS1_AAD_LEN, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %5, align 4
  br label %156

96:                                               ; preds = %90
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %104, %111
  store i32 %112, i32* %14, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @EVP_CIPHER_CTX_encrypting(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %96
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 -1, i32* %5, align 4
  br label %156

121:                                              ; preds = %116
  %122 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sub i32 %123, %122
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = lshr i32 %125, 8
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 %127, i8* %132, align 1
  %133 = load i32, i32* %14, align 4
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %13, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 %134, i8* %139, align 1
  br label %140

140:                                              ; preds = %121, %96
  %141 = load i32, i32* %14, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i8*, i8** %13, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @MD5_Update(i32* %150, i8* %151, i32 %152)
  %154 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  store i32 %154, i32* %5, align 4
  br label %156

155:                                              ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %140, %120, %95, %80
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_3__* @data(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #1

declare dso_local i32 @MD5_Final(i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_encrypting(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
