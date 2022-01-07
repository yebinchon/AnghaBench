; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-aes.c_AES_PRF.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto-aes.c_AES_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i32, %struct._krb5_checksum_type* }
%struct.TYPE_18__ = type { i32* (...)* }
%struct._krb5_checksum_type = type { i64, i64 (i32, i32*, i32, i64, i32, %struct.TYPE_24__*)*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"malloc: out memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"internal prf error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"prf\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"krb5_derive_key\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @AES_PRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AES_PRF(i32 %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct._krb5_checksum_type*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %20 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %19, align 8
  store %struct._krb5_checksum_type* %20, %struct._krb5_checksum_type** %10, align 8
  %21 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %22 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %26 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %27 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @krb5_data_alloc(%struct.TYPE_22__* %25, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @krb5_set_error_message(i32 %33, i64 %34, i32 %35)
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %5, align 8
  br label %143

38:                                               ; preds = %4
  %39 = load %struct._krb5_checksum_type*, %struct._krb5_checksum_type** %10, align 8
  %40 = getelementptr inbounds %struct._krb5_checksum_type, %struct._krb5_checksum_type* %39, i32 0, i32 1
  %41 = load i64 (i32, i32*, i32, i64, i32, %struct.TYPE_24__*)*, i64 (i32, i32*, i32, i64, i32, %struct.TYPE_24__*)** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 %41(i32 %42, i32* null, i32 %45, i64 %48, i32 0, %struct.TYPE_24__* %12)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %54 = call i32 @krb5_data_free(%struct.TYPE_22__* %53)
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %5, align 8
  br label %143

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %59, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @krb5_abortx(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %56
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %13, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @krb5_derive_key(i32 %70, i32 %74, i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3, %struct.TYPE_21__** %13)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @krb5_abortx(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %69
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @krb5_data_alloc(%struct.TYPE_22__* %87, i64 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @krb5_abortx(i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %86
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32* (...)*, i32* (...)** %105, align 8
  %107 = call i32* (...) %106()
  store i32* %107, i32** %14, align 8
  %108 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %108, i32** %15, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @krb5_abortx(i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %99
  %115 = load i32*, i32** %15, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @EVP_CipherInit_ex(i32* %115, i32* %116, i32* null, i32 %120, i32* null, i32 1)
  %122 = load i32*, i32** %15, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @EVP_Cipher(i32* %122, i32 %125, i32 %128, i64 %133)
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @EVP_CIPHER_CTX_free(i32* %135)
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %138 = call i32 @krb5_data_free(%struct.TYPE_22__* %137)
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %141 = call i32 @krb5_free_keyblock(i32 %139, %struct.TYPE_21__* %140)
  %142 = load i64, i64* %11, align 8
  store i64 %142, i64* %5, align 8
  br label %143

143:                                              ; preds = %114, %52, %32
  %144 = load i64, i64* %5, align 8
  ret i64 %144
}

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_22__*) #1

declare dso_local i32 @krb5_abortx(i32, i8*) #1

declare dso_local i64 @krb5_derive_key(i32, i32, i32, i8*, i32, %struct.TYPE_21__**) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @EVP_Cipher(i32*, i32, i32, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @krb5_free_keyblock(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
