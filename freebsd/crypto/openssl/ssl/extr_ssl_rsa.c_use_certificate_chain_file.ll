; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_use_certificate_chain_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_use_certificate_chain_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32* }
%struct.TYPE_12__ = type { i8*, i32* }

@SSL_F_USE_CERTIFICATE_CHAIN_FILE = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@ERR_R_PEM_LIB = common dso_local global i32 0, align 4
@ERR_LIB_PEM = common dso_local global i64 0, align 8
@PEM_R_NO_START_LINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i8*)* @use_certificate_chain_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_certificate_chain_file(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %15 = call i32 (...) @ERR_clear_error()
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %11, align 8
  br label %32

32:                                               ; preds = %25, %18
  %33 = call i32 (...) @BIO_s_file()
  %34 = call i32* @BIO_new(i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @SSL_F_USE_CERTIFICATE_CHAIN_FILE, align 4
  %39 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %40 = call i32 @SSLerr(i32 %38, i32 %39)
  br label %133

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @BIO_read_filename(i32* %42, i8* %43)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @SSL_F_USE_CERTIFICATE_CHAIN_FILE, align 4
  %48 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %49 = call i32 @SSLerr(i32 %47, i32 %48)
  br label %133

50:                                               ; preds = %41
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32* @PEM_read_bio_X509_AUX(i32* %51, i32* null, i32* %52, i8* %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @SSL_F_USE_CERTIFICATE_CHAIN_FILE, align 4
  %59 = load i32, i32* @ERR_R_PEM_LIB, align 4
  %60 = call i32 @SSLerr(i32 %58, i32 %59)
  br label %133

61:                                               ; preds = %50
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = icmp ne %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @SSL_CTX_use_certificate(%struct.TYPE_11__* %65, i32* %66)
  store i32 %67, i32* %8, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @SSL_use_certificate(%struct.TYPE_12__* %69, i32* %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = call i64 (...) @ERR_peek_error()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %132

79:                                               ; preds = %76
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = icmp ne %struct.TYPE_11__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = call i32 @SSL_CTX_clear_chain_certs(%struct.TYPE_11__* %83)
  store i32 %84, i32* %13, align 4
  br label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = call i32 @SSL_clear_chain_certs(%struct.TYPE_12__* %86)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %133

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %116, %92
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32* @PEM_read_bio_X509(i32* %94, i32* null, i32* %95, i8* %96)
  store i32* %97, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @SSL_CTX_add0_chain_cert(%struct.TYPE_11__* %103, i32* %104)
  store i32 %105, i32* %13, align 4
  br label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @SSL_add0_chain_cert(%struct.TYPE_12__* %107, i32* %108)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @X509_free(i32* %114)
  store i32 0, i32* %8, align 4
  br label %133

116:                                              ; preds = %110
  br label %93

117:                                              ; preds = %93
  %118 = call i64 (...) @ERR_peek_last_error()
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = call i64 @ERR_GET_LIB(i64 %119)
  %121 = load i64, i64* @ERR_LIB_PEM, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i64, i64* %14, align 8
  %125 = call i64 @ERR_GET_REASON(i64 %124)
  %126 = load i64, i64* @PEM_R_NO_START_LINE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 (...) @ERR_clear_error()
  br label %131

130:                                              ; preds = %123, %117
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %128
  br label %132

132:                                              ; preds = %131, %76
  br label %133

133:                                              ; preds = %132, %113, %91, %57, %46, %37
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @X509_free(i32* %134)
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @BIO_free(i32* %136)
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @BIO_read_filename(i32*, i8*) #1

declare dso_local i32* @PEM_read_bio_X509_AUX(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @SSL_CTX_use_certificate(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SSL_use_certificate(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @SSL_CTX_clear_chain_certs(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_clear_chain_certs(%struct.TYPE_12__*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @SSL_CTX_add0_chain_cert(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SSL_add0_chain_cert(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i64 @ERR_peek_last_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
