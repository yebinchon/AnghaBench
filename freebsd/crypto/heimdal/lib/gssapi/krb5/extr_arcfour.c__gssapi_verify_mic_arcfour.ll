; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_verify_mic_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_verify_mic_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\11\00\00", align 1
@GSS_S_BAD_SIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\FF\FF\FF\FF\00", align 1
@GSS_S_BAD_MIC = common dso_local global i64 0, align 8
@KRB5_KU_USAGE_SIGN = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_verify_mic_arcfour(i64* %0, %struct.TYPE_6__* %1, i32 %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca [8 x i8], align 1
  %22 = alloca [8 x i8], align 1
  %23 = alloca i8*, align 8
  %24 = alloca [16 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %27 = load i64*, i64** %15, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i64*, i64** %15, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %23, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %40 = call i64 @_gsskrb5_verify_header(i8** %23, i32 %37, i8* %38, i32 %39)
  store i64 %40, i64* %20, align 8
  %41 = load i64, i64* %20, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* %20, align 8
  store i64 %44, i64* %9, align 8
  br label %165

45:                                               ; preds = %31
  %46 = load i8*, i8** %23, align 8
  %47 = call i32 @memcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %50, i64* %9, align 8
  br label %165

51:                                               ; preds = %45
  %52 = load i8*, i8** %23, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %23, align 8
  %54 = load i8*, i8** %23, align 8
  %55 = call i32 @memcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %58, i64* %9, align 8
  br label %165

59:                                               ; preds = %51
  %60 = load i8*, i8** %23, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %23, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* @KRB5_KU_USAGE_SIGN, align 4
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %66 = load i8*, i8** %23, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @arcfour_mic_cksum(i32 %62, i32* %63, i32 %64, i8* %65, i32 8, i8* %67, i32 8, i8* %70, i32 %73, i32* null, i32 0)
  store i64 %74, i64* %18, align 8
  %75 = load i64, i64* %18, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %59
  %78 = load i64, i64* %18, align 8
  %79 = load i64*, i64** %10, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %80, i64* %9, align 8
  br label %165

81:                                               ; preds = %59
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %86 = call i64 @arcfour_mic_key(i32 %82, i32* %83, i8* %84, i32 8, i8* %85, i32 16)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i64, i64* %18, align 8
  %91 = load i64*, i64** %10, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %92, i64* %9, align 8
  br label %165

93:                                               ; preds = %81
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %95 = load i8*, i8** %23, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = call i32 @ct_memcmp(i8* %94, i8* %96, i32 8)
  store i32 %97, i32* %25, align 4
  %98 = load i32, i32* %25, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i64*, i64** %10, align 8
  store i64 0, i64* %101, align 8
  %102 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %102, i64* %9, align 8
  br label %165

103:                                              ; preds = %93
  %104 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %104, i32** %26, align 8
  %105 = load i32*, i32** %26, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* @ENOMEM, align 8
  %109 = load i64*, i64** %10, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %110, i64* %9, align 8
  br label %165

111:                                              ; preds = %103
  %112 = load i32*, i32** %26, align 8
  %113 = call i32 (...) @EVP_rc4()
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %115 = call i32 @EVP_CipherInit_ex(i32* %112, i32 %113, i32* null, i8* %114, i32* null, i32 0)
  %116 = load i32*, i32** %26, align 8
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 0
  %118 = load i8*, i8** %23, align 8
  %119 = call i32 @EVP_Cipher(i32* %116, i8* %117, i8* %118, i32 8)
  %120 = load i32*, i32** %26, align 8
  %121 = call i32 @EVP_CIPHER_CTX_free(i32* %120)
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %123 = call i32 @memset(i8* %122, i32 0, i32 16)
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 0
  %125 = call i32 @_gsskrb5_decode_be_om_uint32(i8* %124, i32* %19)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @LOCAL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %111
  %133 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 4
  %134 = call i32 @memcmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %134, i32* %25, align 4
  br label %138

135:                                              ; preds = %111
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 4
  %137 = call i32 @memcmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32 %137, i32* %25, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 0
  %140 = call i32 @memset(i8* %139, i32 0, i32 8)
  %141 = load i32, i32* %25, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i64*, i64** %10, align 8
  store i64 0, i64* %144, align 8
  %145 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %145, i64* %9, align 8
  br label %165

146:                                              ; preds = %138
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = call i32 @HEIMDAL_MUTEX_lock(i32* %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %19, align 4
  %154 = call i64 @_gssapi_msg_order_check(i32 %152, i32 %153)
  store i64 %154, i64* %20, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = call i32 @HEIMDAL_MUTEX_unlock(i32* %156)
  %158 = load i64, i64* %20, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %146
  %161 = load i64, i64* %20, align 8
  store i64 %161, i64* %9, align 8
  br label %165

162:                                              ; preds = %146
  %163 = load i64*, i64** %10, align 8
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %162, %160, %143, %107, %100, %89, %77, %57, %49, %43
  %166 = load i64, i64* %9, align 8
  ret i64 %166
}

declare dso_local i64 @_gsskrb5_verify_header(i8**, i32, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @arcfour_mic_cksum(i32, i32*, i32, i8*, i32, i8*, i32, i8*, i32, i32*, i32) #1

declare dso_local i64 @arcfour_mic_key(i32, i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ct_memcmp(i8*, i8*, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_gsskrb5_decode_be_om_uint32(i8*, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @_gssapi_msg_order_check(i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
