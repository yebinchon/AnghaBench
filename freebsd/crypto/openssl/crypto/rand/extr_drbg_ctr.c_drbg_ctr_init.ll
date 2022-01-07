; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_ctr.c_drbg_ctr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_ctr.c_drbg_ctr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32*, i32* }

@drbg_ctr_meth = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_CTR_NO_DF = common dso_local global i32 0, align 4
@drbg_ctr_init.df_key = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@DRBG_MAX_LENGTH = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbg_ctr_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 12
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %12 [
    i32 130, label %13
    i32 129, label %17
    i32 128, label %21
  ]

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %146

13:                                               ; preds = %1
  store i64 16, i64* %5, align 8
  %14 = call i32 (...) @EVP_aes_128_ecb()
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %25

17:                                               ; preds = %1
  store i64 24, i64* %5, align 8
  %18 = call i32 (...) @EVP_aes_192_ecb()
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %25

21:                                               ; preds = %1
  store i64 32, i64* %5, align 8
  %22 = call i32 (...) @EVP_aes_256_ecb()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 11
  store i32* @drbg_ctr_meth, i32** %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = call i8* (...) @EVP_CIPHER_CTX_new()
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %146

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = mul i64 %47, 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 16
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RAND_DRBG_FLAG_CTR_NO_DF, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %115

61:                                               ; preds = %46
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = call i8* (...) @EVP_CIPHER_CTX_new()
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %146

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @EVP_CipherInit_ex(i32* %80, i32 %83, i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @drbg_ctr_init.df_key, i64 0, i64 0), i32* null, i32 1)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %146

87:                                               ; preds = %77
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load i8*, i8** @DRBG_MAX_LENGTH, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = udiv i64 %99, 2
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load i8*, i8** @DRBG_MAX_LENGTH, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 10
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @DRBG_MAX_LENGTH, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** @DRBG_MAX_LENGTH, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  br label %143

115:                                              ; preds = %46
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 6
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 10
  store i8* null, i8** %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %115, %87
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 9
  store i32 65536, i32* %145, align 8
  store i32 1, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %86, %76, %45, %12
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @EVP_aes_128_ecb(...) #1

declare dso_local i32 @EVP_aes_192_ecb(...) #1

declare dso_local i32 @EVP_aes_256_ecb(...) #1

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
