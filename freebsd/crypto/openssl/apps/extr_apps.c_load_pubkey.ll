; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_pubkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@FORMAT_ENGINE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no keyfile specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no engine specified\0A\00", align 1
@ui_method = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot load %s from engine\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_ASN1RSA = common dso_local global i32 0, align 4
@FORMAT_PEMRSA = common dso_local global i32 0, align 4
@password_callback = common dso_local global i64 0, align 8
@FORMAT_PEM = common dso_local global i32 0, align 4
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unable to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_pubkey(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FORMAT_ENGINE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @bio_err, align 4
  %33 = call i32 (i32, i8*, ...) @BIO_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %152

34:                                               ; preds = %27, %6
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FORMAT_ENGINE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @bio_err, align 4
  %43 = call i32 (i32, i8*, ...) @BIO_printf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %58

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @ui_method, align 4
  %48 = call i32* @ENGINE_load_public_key(i32* %45, i8* %46, i32 %47, %struct.TYPE_5__* %15)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @bio_err, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @bio_err, align 4
  %56 = call i32 @ERR_print_errors(i32 %55)
  br label %57

57:                                               ; preds = %51, %44
  br label %58

58:                                               ; preds = %57, %41
  br label %152

59:                                               ; preds = %34
  %60 = load i8*, i8** %7, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @stdin, align 4
  %67 = call i32 @unbuffer(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32* @dup_bio_in(i32 %68)
  store i32* %69, i32** %13, align 8
  br label %74

70:                                               ; preds = %62, %59
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32* @bio_open_default(i8* %71, i8 signext 114, i32 %72)
  store i32* %73, i32** %13, align 8
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32*, i32** %13, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %152

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @FORMAT_ASN1, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %13, align 8
  %84 = call i32* @d2i_PUBKEY_bio(i32* %83, i32* null)
  store i32* %84, i32** %14, align 8
  br label %151

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @FORMAT_ASN1RSA, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i32*, i32** %13, align 8
  %91 = call i32* @d2i_RSAPublicKey_bio(i32* %90, i32* null)
  store i32* %91, i32** %16, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = call i32* (...) @EVP_PKEY_new()
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32*, i32** %14, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @EVP_PKEY_set1_RSA(i32* %99, i32* %100)
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @RSA_free(i32* %103)
  br label %106

105:                                              ; preds = %89
  store i32* null, i32** %14, align 8
  br label %106

106:                                              ; preds = %105, %102
  br label %150

107:                                              ; preds = %85
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @FORMAT_PEMRSA, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load i32*, i32** %13, align 8
  %113 = load i64, i64* @password_callback, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = call i32* @PEM_read_bio_RSAPublicKey(i32* %112, i32* null, i32* %114, %struct.TYPE_5__* %15)
  store i32* %115, i32** %17, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = call i32* (...) @EVP_PKEY_new()
  store i32* %119, i32** %14, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32*, i32** %14, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @EVP_PKEY_set1_RSA(i32* %123, i32* %124)
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i32*, i32** %17, align 8
  %128 = call i32 @RSA_free(i32* %127)
  br label %130

129:                                              ; preds = %111
  store i32* null, i32** %14, align 8
  br label %130

130:                                              ; preds = %129, %126
  br label %149

131:                                              ; preds = %107
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @FORMAT_PEM, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32*, i32** %13, align 8
  %137 = load i64, i64* @password_callback, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = call i32* @PEM_read_bio_PUBKEY(i32* %136, i32* null, i32* %138, %struct.TYPE_5__* %15)
  store i32* %139, i32** %14, align 8
  br label %148

140:                                              ; preds = %131
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @FORMAT_MSBLOB, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32*, i32** %13, align 8
  %146 = call i32* @b2i_PublicKey_bio(i32* %145)
  store i32* %146, i32** %14, align 8
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147, %135
  br label %149

149:                                              ; preds = %148, %130
  br label %150

150:                                              ; preds = %149, %106
  br label %151

151:                                              ; preds = %150, %82
  br label %152

152:                                              ; preds = %151, %77, %58, %31
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @BIO_free(i32* %153)
  %155 = load i32*, i32** %14, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @bio_err, align 4
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 (i32, i8*, ...) @BIO_printf(i32 %158, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %157, %152
  %162 = load i32*, i32** %14, align 8
  ret i32* %162
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32* @ENGINE_load_public_key(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @unbuffer(i32) #1

declare dso_local i32* @dup_bio_in(i32) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32* @d2i_RSAPublicKey_bio(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_RSA(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32* @PEM_read_bio_RSAPublicKey(i32*, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @PEM_read_bio_PUBKEY(i32*, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @b2i_PublicKey_bio(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
