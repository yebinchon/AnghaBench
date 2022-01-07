; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_get_mic_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_get_mic_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@KRB5_KU_USAGE_SIGN = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_get_mic_arcfour(i64* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, %struct.TYPE_8__* %4, %struct.TYPE_8__* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [16 x i32], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i64* %0, i64** %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %25 = call i32 @_gsskrb5_encap_length(i32 22, i64* %18, i64* %19, i32 %24)
  %26 = load i64, i64* %19, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %19, align 8
  %30 = call i32* @malloc(i64 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = load i64, i64* @ENOMEM, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %40, i64* %8, align 8
  br label %163

41:                                               ; preds = %7
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %47 = call i32* @_gssapi_make_mech_header(i32* %44, i64 %45, i32 %46)
  store i32* %47, i32** %21, align 8
  %48 = load i32*, i32** %21, align 8
  store i32* %48, i32** %22, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %22, align 8
  store i32 1, i32* %49, align 4
  %51 = load i32*, i32** %22, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %22, align 8
  store i32 1, i32* %51, align 4
  %53 = load i32*, i32** %22, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %22, align 8
  store i32 17, i32* %53, align 4
  %55 = load i32*, i32** %22, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %22, align 8
  store i32 0, i32* %55, align 4
  %57 = load i32*, i32** %22, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %22, align 8
  store i32 255, i32* %57, align 4
  %59 = load i32*, i32** %22, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %22, align 8
  store i32 255, i32* %59, align 4
  %61 = load i32*, i32** %22, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %22, align 8
  store i32 255, i32* %61, align 4
  %63 = load i32*, i32** %22, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %22, align 8
  store i32 255, i32* %63, align 4
  store i32* null, i32** %22, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* @KRB5_KU_USAGE_SIGN, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 16
  %70 = load i32*, i32** %21, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @arcfour_mic_cksum(i32 %65, i32* %66, i32 %67, i32* %69, i32 8, i32* %70, i32 8, i32* %73, i64 %76, i32* null, i32 0)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %41
  %81 = load i64*, i64** %9, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = call i32 @_gsskrb5_release_buffer(i64* %81, %struct.TYPE_8__* %82)
  %84 = load i64, i64* %16, align 8
  %85 = load i64*, i64** %9, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %86, i64* %8, align 8
  br label %163

87:                                               ; preds = %41
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 16
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %93 = call i64 @arcfour_mic_key(i32 %88, i32* %89, i32* %91, i32 8, i32* %92, i32 64)
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load i64*, i64** %9, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %99 = call i32 @_gsskrb5_release_buffer(i64* %97, %struct.TYPE_8__* %98)
  %100 = load i64, i64* %16, align 8
  %101 = load i64*, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %102, i64* %8, align 8
  br label %163

103:                                              ; preds = %87
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = call i32 @HEIMDAL_MUTEX_lock(i32* %105)
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @krb5_auth_con_getlocalseqnumber(i32 %107, i32 %110, i32* %17)
  %112 = load i32*, i32** %21, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  store i32* %113, i32** %22, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32*, i32** %22, align 8
  %116 = call i32 @_gsskrb5_encode_be_om_uint32(i32 %114, i32* %115)
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %17, align 4
  %123 = call i32 @krb5_auth_con_setlocalseqnumber(i32 %117, i32 %120, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = call i32 @HEIMDAL_MUTEX_unlock(i32* %125)
  %127 = load i32*, i32** %22, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @LOCAL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 0, i32 255
  %137 = call i32 @memset(i32* %128, i32 %136, i32 4)
  %138 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %138, i32** %23, align 8
  %139 = load i32*, i32** %23, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %103
  %142 = load i64*, i64** %9, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %144 = call i32 @_gsskrb5_release_buffer(i64* %142, %struct.TYPE_8__* %143)
  %145 = load i64, i64* @ENOMEM, align 8
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %147, i64* %8, align 8
  br label %163

148:                                              ; preds = %103
  %149 = load i32*, i32** %23, align 8
  %150 = call i32 (...) @EVP_rc4()
  %151 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %152 = call i32 @EVP_CipherInit_ex(i32* %149, i32 %150, i32* null, i32* %151, i32* null, i32 1)
  %153 = load i32*, i32** %23, align 8
  %154 = load i32*, i32** %22, align 8
  %155 = load i32*, i32** %22, align 8
  %156 = call i32 @EVP_Cipher(i32* %153, i32* %154, i32* %155, i32 8)
  %157 = load i32*, i32** %23, align 8
  %158 = call i32 @EVP_CIPHER_CTX_free(i32* %157)
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %160 = call i32 @memset(i32* %159, i32 0, i32 64)
  %161 = load i64*, i64** %9, align 8
  store i64 0, i64* %161, align 8
  %162 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %162, i64* %8, align 8
  br label %163

163:                                              ; preds = %148, %141, %96, %80, %37
  %164 = load i64, i64* %8, align 8
  ret i64 %164
}

declare dso_local i32 @_gsskrb5_encap_length(i32, i64*, i64*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @_gssapi_make_mech_header(i32*, i64, i32) #1

declare dso_local i64 @arcfour_mic_cksum(i32, i32*, i32, i32*, i32, i32*, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @_gsskrb5_release_buffer(i64*, %struct.TYPE_8__*) #1

declare dso_local i64 @arcfour_mic_key(i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @krb5_auth_con_getlocalseqnumber(i32, i32, i32*) #1

declare dso_local i32 @_gsskrb5_encode_be_om_uint32(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_setlocalseqnumber(i32, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
