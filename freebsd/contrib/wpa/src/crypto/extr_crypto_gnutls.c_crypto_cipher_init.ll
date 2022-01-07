; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_crypto_cipher_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_crypto_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32, i32 }

@GCRY_CIPHER_ARCFOUR = common dso_local global i32 0, align 4
@GCRY_CIPHER_MODE_STREAM = common dso_local global i32 0, align 4
@GCRY_CIPHER_AES192 = common dso_local global i32 0, align 4
@GCRY_CIPHER_AES256 = common dso_local global i32 0, align 4
@GCRY_CIPHER_AES = common dso_local global i32 0, align 4
@GCRY_CIPHER_MODE_CBC = common dso_local global i32 0, align 4
@GCRY_CIPHER_3DES = common dso_local global i32 0, align 4
@GCRY_CIPHER_DES = common dso_local global i32 0, align 4
@GCRY_CIPHER_RFC2268_40 = common dso_local global i32 0, align 4
@GCRY_CIPHER_RFC2268_128 = common dso_local global i32 0, align 4
@GPG_ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_cipher* @crypto_cipher_init(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_cipher*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = call %struct.crypto_cipher* @os_zalloc(i32 8)
  store %struct.crypto_cipher* %14, %struct.crypto_cipher** %10, align 8
  %15 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %16 = icmp eq %struct.crypto_cipher* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %170

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %98 [
    i32 128, label %20
    i32 131, label %32
    i32 132, label %56
    i32 130, label %68
    i32 129, label %80
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @GCRY_CIPHER_ARCFOUR, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %23 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %22, i32 0, i32 1
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @GCRY_CIPHER_MODE_STREAM, align 4
  %26 = call i64 @gcry_cipher_open(i32* %23, i32 %24, i32 %25, i32 0)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %28 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %27, i32 0, i32 0
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @GCRY_CIPHER_MODE_STREAM, align 4
  %31 = call i64 @gcry_cipher_open(i32* %28, i32 %29, i32 %30, i32 0)
  br label %101

32:                                               ; preds = %18
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 24
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @GCRY_CIPHER_AES192, align 4
  store i32 %36, i32* %12, align 4
  br label %45

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 32
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @GCRY_CIPHER_AES256, align 4
  store i32 %41, i32* %12, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @GCRY_CIPHER_AES, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %47 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %46, i32 0, i32 1
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %50 = call i64 @gcry_cipher_open(i32* %47, i32 %48, i32 %49, i32 0)
  store i64 %50, i64* %11, align 8
  %51 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %52 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %51, i32 0, i32 0
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %55 = call i64 @gcry_cipher_open(i32* %52, i32 %53, i32 %54, i32 0)
  br label %101

56:                                               ; preds = %18
  %57 = load i32, i32* @GCRY_CIPHER_3DES, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %59 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %58, i32 0, i32 1
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %62 = call i64 @gcry_cipher_open(i32* %59, i32 %60, i32 %61, i32 0)
  store i64 %62, i64* %11, align 8
  %63 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %64 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %63, i32 0, i32 0
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %67 = call i64 @gcry_cipher_open(i32* %64, i32 %65, i32 %66, i32 0)
  br label %101

68:                                               ; preds = %18
  %69 = load i32, i32* @GCRY_CIPHER_DES, align 4
  store i32 %69, i32* %12, align 4
  %70 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %71 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %70, i32 0, i32 1
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %74 = call i64 @gcry_cipher_open(i32* %71, i32 %72, i32 %73, i32 0)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %76 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %75, i32 0, i32 0
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %79 = call i64 @gcry_cipher_open(i32* %76, i32 %77, i32 %78, i32 0)
  br label %101

80:                                               ; preds = %18
  %81 = load i64, i64* %9, align 8
  %82 = icmp eq i64 %81, 5
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @GCRY_CIPHER_RFC2268_40, align 4
  store i32 %84, i32* %12, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @GCRY_CIPHER_RFC2268_128, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %89 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %88, i32 0, i32 1
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %92 = call i64 @gcry_cipher_open(i32* %89, i32 %90, i32 %91, i32 0)
  store i64 %92, i64* %11, align 8
  %93 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %94 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %93, i32 0, i32 0
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @GCRY_CIPHER_MODE_CBC, align 4
  %97 = call i64 @gcry_cipher_open(i32* %94, i32 %95, i32 %96, i32 0)
  br label %101

98:                                               ; preds = %18
  %99 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %100 = call i32 @os_free(%struct.crypto_cipher* %99)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %170

101:                                              ; preds = %87, %68, %56, %45, %20
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %107 = call i32 @os_free(%struct.crypto_cipher* %106)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %170

108:                                              ; preds = %101
  %109 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %110 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i64 @gcry_cipher_setkey(i32 %111, i32* %112, i64 %113)
  %115 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %126, label %117

117:                                              ; preds = %108
  %118 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %119 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i64 @gcry_cipher_setkey(i32 %120, i32* %121, i64 %122)
  %124 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %117, %108
  %127 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %128 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gcry_cipher_close(i32 %129)
  %131 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %132 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @gcry_cipher_close(i32 %133)
  %135 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %136 = call i32 @os_free(%struct.crypto_cipher* %135)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %170

137:                                              ; preds = %117
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @gcry_cipher_get_algo_blklen(i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %141 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @gcry_cipher_setiv(i32 %142, i32* %143, i32 %144)
  %146 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %157, label %148

148:                                              ; preds = %137
  %149 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %150 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i64 @gcry_cipher_setiv(i32 %151, i32* %152, i32 %153)
  %155 = load i64, i64* @GPG_ERR_NO_ERROR, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %148, %137
  %158 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %159 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @gcry_cipher_close(i32 %160)
  %162 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %163 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @gcry_cipher_close(i32 %164)
  %166 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %167 = call i32 @os_free(%struct.crypto_cipher* %166)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %170

168:                                              ; preds = %148
  %169 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  store %struct.crypto_cipher* %169, %struct.crypto_cipher** %5, align 8
  br label %170

170:                                              ; preds = %168, %157, %126, %105, %98, %17
  %171 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  ret %struct.crypto_cipher* %171
}

declare dso_local %struct.crypto_cipher* @os_zalloc(i32) #1

declare dso_local i64 @gcry_cipher_open(i32*, i32, i32, i32) #1

declare dso_local i32 @os_free(%struct.crypto_cipher*) #1

declare dso_local i64 @gcry_cipher_setkey(i32, i32*, i64) #1

declare dso_local i32 @gcry_cipher_close(i32) #1

declare dso_local i32 @gcry_cipher_get_algo_blklen(i32) #1

declare dso_local i64 @gcry_cipher_setiv(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
