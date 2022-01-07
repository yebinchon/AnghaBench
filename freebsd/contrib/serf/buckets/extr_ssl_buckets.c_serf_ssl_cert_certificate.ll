; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_serf_ssl_cert_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_ssl_buckets.c_serf_ssl_cert_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@__const.serf_ssl_cert_certificate.hex = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"notBefore\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"notAfter\00", align 1
@EscapeNulAndCopy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"subjectAltName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @serf_ssl_cert_certificate(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [17 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [256 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @apr_hash_make(i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (...) @EVP_sha1()
  %28 = call i64 @X509_digest(i32 %26, i32 %27, i8* %23, i32* %6)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %2
  %31 = bitcast [17 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.serf_ssl_cert_certificate.hex, i32 0, i32 0), i64 17, i1 false)
  %32 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %33 = mul nsw i32 %32, 3
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %13, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %14, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %75, %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %23, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 240
  %48 = ashr i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i32, i32* %7, align 4
  %53 = mul i32 3, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %36, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %23, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 15
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i32, i32* %7, align 4
  %66 = mul i32 3, %65
  %67 = add i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %36, i64 %68
  store i8 %64, i8* %69, align 1
  %70 = load i32, i32* %7, align 4
  %71 = mul i32 3, %70
  %72 = add i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %36, i64 %73
  store i8 58, i8* %74, align 1
  br label %75

75:                                               ; preds = %41
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %37

78:                                               ; preds = %37
  %79 = load i32, i32* %6, align 4
  %80 = icmp ugt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = sub i32 %82, 1
  %84 = mul i32 3, %83
  %85 = add i32 %84, 2
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %36, i64 %86
  store i8 0, i8* %87, align 1
  br label %90

88:                                               ; preds = %78
  %89 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %89, align 16
  br label %90

90:                                               ; preds = %88, %81
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = call i32* @apr_pstrdup(i32* %93, i8* %36)
  %95 = call i32 @apr_hash_set(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %92, i32* %94)
  %96 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %96)
  br label %97

97:                                               ; preds = %90, %2
  %98 = call i32 (...) @BIO_s_mem()
  %99 = call i32* @BIO_new(i32 %98)
  store i32* %99, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %145

102:                                              ; preds = %97
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %104 = call i32 @memset(i8* %103, i32 0, i32 256)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32* @X509_get_notBefore(i32 %107)
  store i32* %108, i32** %15, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = call i64 @ASN1_TIME_print(i32* %109, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %116 = call i32 @BIO_read(i32* %114, i8* %115, i32 255)
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %121 = call i32* @apr_pstrdup(i32* %119, i8* %120)
  %122 = call i32 @apr_hash_set(i32* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32* %121)
  br label %123

123:                                              ; preds = %113, %102
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %125 = call i32 @memset(i8* %124, i32 0, i32 256)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32* @X509_get_notAfter(i32 %128)
  store i32* %129, i32** %16, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = call i64 @ASN1_TIME_print(i32* %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %123
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %137 = call i32 @BIO_read(i32* %135, i8* %136, i32 255)
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %142 = call i32* @apr_pstrdup(i32* %140, i8* %141)
  %143 = call i32 @apr_hash_set(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32* %142)
  br label %144

144:                                              ; preds = %134, %123
  br label %145

145:                                              ; preds = %144, %97
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @BIO_free(i32* %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @EscapeNulAndCopy, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @get_subject_alt_names(i32** %11, i32 %150, i32 %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %145
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @apr_hash_set(i32* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32* %158)
  br label %160

160:                                              ; preds = %155, %145
  %161 = load i32*, i32** %5, align 8
  %162 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %162)
  ret i32* %161
}

declare dso_local i32* @apr_hash_make(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @X509_digest(i32, i32, i8*, i32*) #1

declare dso_local i32 @EVP_sha1(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

declare dso_local i32* @apr_pstrdup(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @X509_get_notBefore(i32) #1

declare dso_local i64 @ASN1_TIME_print(i32*, i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32* @X509_get_notAfter(i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @get_subject_alt_names(i32**, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
