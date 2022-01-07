; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i64 }

@RSA_PKCS1_PADDING = common dso_local global i64 0, align 8
@RSA_F_PKEY_RSA_VERIFY = common dso_local global i32 0, align 4
@RSA_R_INVALID_DIGEST_LENGTH = common dso_local global i32 0, align 4
@RSA_X931_PADDING = common dso_local global i64 0, align 8
@RSA_PKCS1_PSS_PADDING = common dso_local global i64 0, align 8
@RSA_NO_PADDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64, i8*, i64)* @pkey_rsa_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_rsa_verify(%struct.TYPE_12__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %118

29:                                               ; preds = %5
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RSA_PKCS1_PADDING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @EVP_MD_type(i64 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @RSA_verify(i32 %39, i8* %40, i64 %41, i8* %42, i64 %43, i32* %44)
  store i32 %45, i32* %6, align 4
  br label %154

46:                                               ; preds = %29
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @EVP_MD_size(i64 %50)
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @RSA_F_PKEY_RSA_VERIFY, align 4
  %55 = load i32, i32* @RSA_R_INVALID_DIGEST_LENGTH, align 4
  %56 = call i32 @RSAerr(i32 %54, i32 %55)
  store i32 -1, i32* %6, align 4
  br label %154

57:                                               ; preds = %46
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RSA_X931_PADDING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @pkey_rsa_verifyrecover(%struct.TYPE_12__* %64, i32* null, i64* %14, i8* %65, i64 %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %154

70:                                               ; preds = %63
  br label %117

71:                                               ; preds = %57
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RSA_PKCS1_PSS_PADDING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %116

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = call i32 @setup_tbuf(%struct.TYPE_11__* %78, %struct.TYPE_12__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %154

83:                                               ; preds = %77
  %84 = load i64, i64* %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* @RSA_NO_PADDING, align 8
  %91 = call i8* @RSA_public_decrypt(i64 %84, i8* %85, i32 %88, i32* %89, i64 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %154

96:                                               ; preds = %83
  %97 = load i32*, i32** %13, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @RSA_verify_PKCS1_PSS_mgf1(i32* %97, i8* %98, i64 %101, i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %154

115:                                              ; preds = %96
  store i32 1, i32* %6, align 4
  br label %154

116:                                              ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %154

117:                                              ; preds = %70
  br label %140

118:                                              ; preds = %5
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = call i32 @setup_tbuf(%struct.TYPE_11__* %119, %struct.TYPE_12__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store i32 -1, i32* %6, align 4
  br label %154

124:                                              ; preds = %118
  %125 = load i64, i64* %9, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @RSA_public_decrypt(i64 %125, i8* %126, i32 %129, i32* %130, i64 %133)
  %135 = ptrtoint i8* %134 to i64
  store i64 %135, i64* %14, align 8
  %136 = load i64, i64* %14, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %154

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %10, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %14, align 8
  %150 = call i64 @memcmp(i8* %145, i32 %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %140
  store i32 0, i32* %6, align 4
  br label %154

153:                                              ; preds = %144
  store i32 1, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %152, %138, %123, %116, %115, %114, %95, %82, %69, %53, %35
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @RSA_verify(i32, i8*, i64, i8*, i64, i32*) #1

declare dso_local i32 @EVP_MD_type(i64) #1

declare dso_local i64 @EVP_MD_size(i64) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @pkey_rsa_verifyrecover(%struct.TYPE_12__*, i32*, i64*, i8*, i64) #1

declare dso_local i32 @setup_tbuf(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i8* @RSA_public_decrypt(i64, i8*, i32, i32*, i64) #1

declare dso_local i32 @RSA_verify_PKCS1_PSS_mgf1(i32*, i8*, i64, i32, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
