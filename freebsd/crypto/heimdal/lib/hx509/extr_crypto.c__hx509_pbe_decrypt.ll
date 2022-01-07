; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_pbe_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_pbe_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct._hx509_password = type { i32, i8** }

@HX509_ALG_NOT_SUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"String to key algorithm not supported\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HX509_CRYPTO_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_pbe_decrypt(i32 %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_16__* %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct._hx509_password*, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %18, align 4
  %22 = call i32 @memset(%struct.TYPE_16__* %12, i32 0, i32 16)
  %23 = call i32 @memset(%struct.TYPE_16__* %13, i32 0, i32 16)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = call i32 @memset(%struct.TYPE_16__* %24, i32 0, i32 16)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = bitcast i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)** %17 to i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)*
  %29 = call i32* @find_string2key(i32* %27, i32** %15, i32** %16, i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)* %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @HX509_ALG_NOT_SUPP, align 4
  %35 = call i32 @hx509_set_error_string(i32 %33, i32 0, i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @HX509_ALG_NOT_SUPP, align 4
  store i32 %36, i32* %18, align 4
  br label %139

37:                                               ; preds = %5
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @EVP_CIPHER_key_length(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @malloc(i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @hx509_clear_error_string(i32 %51)
  br label %139

53:                                               ; preds = %37
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @EVP_CIPHER_iv_length(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @malloc(i32 %58)
  %60 = bitcast i8* %59 to i32*
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @hx509_clear_error_string(i32 %67)
  br label %139

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = call %struct._hx509_password* @_hx509_lock_get_passwords(i32 %70)
  store %struct._hx509_password* %71, %struct._hx509_password** %11, align 8
  %72 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %72, i32* %18, align 4
  store i64 0, i64* %19, align 8
  br label %73

73:                                               ; preds = %135, %69
  %74 = load i64, i64* %19, align 8
  %75 = load %struct._hx509_password*, %struct._hx509_password** %11, align 8
  %76 = getelementptr inbounds %struct._hx509_password, %struct._hx509_password* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %74, %79
  br i1 %80, label %81, label %138

81:                                               ; preds = %73
  %82 = load i64, i64* %19, align 8
  %83 = load %struct._hx509_password*, %struct._hx509_password** %11, align 8
  %84 = getelementptr inbounds %struct._hx509_password, %struct._hx509_password* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct._hx509_password*, %struct._hx509_password** %11, align 8
  %90 = getelementptr inbounds %struct._hx509_password, %struct._hx509_password* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* %19, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %21, align 8
  br label %106

95:                                               ; preds = %81
  %96 = load i64, i64* %19, align 8
  %97 = load %struct._hx509_password*, %struct._hx509_password** %11, align 8
  %98 = getelementptr inbounds %struct._hx509_password, %struct._hx509_password* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %96, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %105

104:                                              ; preds = %95
  store i8* null, i8** %21, align 8
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)*, i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)** %17, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i8*, i8** %21, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 %107(i32 %108, i8* %109, i32 %112, i32* %20, %struct.TYPE_16__* %12, %struct.TYPE_16__* %13, i32* %113, i32* %114)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %139

119:                                              ; preds = %106
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %128 = call i32 @hx509_crypto_decrypt(i32 %120, i32* %123, i32 %126, %struct.TYPE_16__* %13, %struct.TYPE_16__* %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @hx509_crypto_destroy(i32 %129)
  %131 = load i32, i32* %18, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %139

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %19, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %19, align 8
  br label %73

138:                                              ; preds = %73
  br label %139

139:                                              ; preds = %138, %133, %118, %65, %49, %32
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 @der_free_octet_string(%struct.TYPE_16__* %12)
  br label %145

145:                                              ; preds = %143, %139
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 @der_free_octet_string(%struct.TYPE_16__* %13)
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, i32* %18, align 4
  ret i32 %152
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32* @find_string2key(i32*, i32**, i32**, i32 (i32, i8*, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*)*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local %struct._hx509_password* @_hx509_lock_get_passwords(i32) #1

declare dso_local i32 @hx509_crypto_decrypt(i32, i32*, i32, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @hx509_crypto_destroy(i32) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
