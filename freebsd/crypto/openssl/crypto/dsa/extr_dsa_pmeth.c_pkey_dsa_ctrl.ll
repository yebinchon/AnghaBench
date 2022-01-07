; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_pmeth.c_pkey_dsa_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_pmeth.c_pkey_dsa_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32*, i8* }

@NID_sha1 = common dso_local global i32 0, align 4
@NID_sha224 = common dso_local global i32 0, align 4
@NID_sha256 = common dso_local global i32 0, align 4
@DSA_F_PKEY_DSA_CTRL = common dso_local global i32 0, align 4
@DSA_R_INVALID_DIGEST_TYPE = common dso_local global i32 0, align 4
@NID_dsa = common dso_local global i32 0, align 4
@NID_dsaWithSHA = common dso_local global i32 0, align 4
@NID_sha384 = common dso_local global i32 0, align 4
@NID_sha512 = common dso_local global i32 0, align 4
@NID_sha3_224 = common dso_local global i32 0, align 4
@NID_sha3_256 = common dso_local global i32 0, align 4
@NID_sha3_384 = common dso_local global i32 0, align 4
@NID_sha3_512 = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8*)* @pkey_dsa_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_dsa_ctrl(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %152 [
    i32 134, label %15
    i32 132, label %23
    i32 133, label %40
    i32 130, label %66
    i32 131, label %141
    i32 135, label %147
    i32 128, label %147
    i32 136, label %147
    i32 129, label %148
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -2, i32* %5, align 4
  br label %153

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 1, i32* %5, align 4
  br label %153

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 160
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 224
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 256
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 -2, i32* %5, align 4
  br label %153

36:                                               ; preds = %32, %29, %26, %23
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  store i32 1, i32* %5, align 4
  br label %153

40:                                               ; preds = %4
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = call i32 @EVP_MD_type(i32* %42)
  %44 = load i32, i32* @NID_sha1, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 @EVP_MD_type(i32* %48)
  %50 = load i32, i32* @NID_sha224, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = call i32 @EVP_MD_type(i32* %54)
  %56 = load i32, i32* @NID_sha256, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @DSA_F_PKEY_DSA_CTRL, align 4
  %60 = load i32, i32* @DSA_R_INVALID_DIGEST_TYPE, align 4
  %61 = call i32 @DSAerr(i32 %59, i32 %60)
  store i32 0, i32* %5, align 4
  br label %153

62:                                               ; preds = %52, %46, %40
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  store i32 1, i32* %5, align 4
  br label %153

66:                                               ; preds = %4
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = call i32 @EVP_MD_type(i32* %68)
  %70 = load i32, i32* @NID_sha1, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %136

72:                                               ; preds = %66
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = call i32 @EVP_MD_type(i32* %74)
  %76 = load i32, i32* @NID_dsa, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = call i32 @EVP_MD_type(i32* %80)
  %82 = load i32, i32* @NID_dsaWithSHA, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = call i32 @EVP_MD_type(i32* %86)
  %88 = load i32, i32* @NID_sha224, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %84
  %91 = load i8*, i8** %9, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = call i32 @EVP_MD_type(i32* %92)
  %94 = load i32, i32* @NID_sha256, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = load i8*, i8** %9, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = call i32 @EVP_MD_type(i32* %98)
  %100 = load i32, i32* @NID_sha384, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %96
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = call i32 @EVP_MD_type(i32* %104)
  %106 = load i32, i32* @NID_sha512, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %102
  %109 = load i8*, i8** %9, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = call i32 @EVP_MD_type(i32* %110)
  %112 = load i32, i32* @NID_sha3_224, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = load i8*, i8** %9, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = call i32 @EVP_MD_type(i32* %116)
  %118 = load i32, i32* @NID_sha3_256, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load i8*, i8** %9, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = call i32 @EVP_MD_type(i32* %122)
  %124 = load i32, i32* @NID_sha3_384, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load i8*, i8** %9, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = call i32 @EVP_MD_type(i32* %128)
  %130 = load i32, i32* @NID_sha3_512, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @DSA_F_PKEY_DSA_CTRL, align 4
  %134 = load i32, i32* @DSA_R_INVALID_DIGEST_TYPE, align 4
  %135 = call i32 @DSAerr(i32 %133, i32 %134)
  store i32 0, i32* %5, align 4
  br label %153

136:                                              ; preds = %126, %120, %114, %108, %102, %96, %90, %84, %78, %72, %66
  %137 = load i8*, i8** %9, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i32* %138, i32** %140, align 8
  store i32 1, i32* %5, align 4
  br label %153

141:                                              ; preds = %4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = bitcast i8* %145 to i32**
  store i32* %144, i32** %146, align 8
  store i32 1, i32* %5, align 4
  br label %153

147:                                              ; preds = %4, %4, %4
  store i32 1, i32* %5, align 4
  br label %153

148:                                              ; preds = %4
  %149 = load i32, i32* @DSA_F_PKEY_DSA_CTRL, align 4
  %150 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %151 = call i32 @DSAerr(i32 %149, i32 %150)
  store i32 -2, i32* %5, align 4
  br label %153

152:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %148, %147, %141, %136, %132, %62, %58, %36, %35, %19, %18
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i32 @DSAerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
