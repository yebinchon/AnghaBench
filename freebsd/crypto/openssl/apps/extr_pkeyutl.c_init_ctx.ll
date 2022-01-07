; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkeyutl.c_init_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_pkeyutl.c_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"A private key is needed for this operation\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Private Key\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"The given KDF \22%s\22 is unknown.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32, i32, i8*, i32, i32*, i32)* @init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_ctx(i8* %0, i32* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i8* null, i8** %22, align 8
  store i32 -1, i32* %23, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp eq i32 %26, 134
  br i1 %27, label %34, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %16, align 4
  %30 = icmp eq i32 %29, 137
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %16, align 4
  %33 = icmp eq i32 %32, 136
  br i1 %33, label %34, label %43

34:                                               ; preds = %31, %28, %9
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 129
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @bio_err, align 4
  %42 = call i32 (i32, i8*, ...) @BIO_printf(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %149

43:                                               ; preds = %37, %34, %31
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @app_passwd(i8* %44, i32* null, i8** %22, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @bio_err, align 4
  %49 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %149

50:                                               ; preds = %43
  %51 = load i32, i32* %14, align 4
  switch i32 %51, label %76 [
    i32 129, label %52
    i32 128, label %58
    i32 131, label %63
    i32 130, label %75
  ]

52:                                               ; preds = %50
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %22, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32* @load_key(i8* %53, i32 %54, i32 0, i8* %55, i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %57, i32** %19, align 8
  br label %76

58:                                               ; preds = %50
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %17, align 8
  %62 = call i32* @load_pubkey(i8* %59, i32 %60, i32 0, i32* null, i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32* %62, i32** %19, align 8
  br label %76

63:                                               ; preds = %50
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32* @load_cert(i8* %64, i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32* %66, i32** %24, align 8
  %67 = load i32*, i32** %24, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32*, i32** %24, align 8
  %71 = call i32* @X509_get_pubkey(i32* %70)
  store i32* %71, i32** %19, align 8
  %72 = load i32*, i32** %24, align 8
  %73 = call i32 @X509_free(i32* %72)
  br label %74

74:                                               ; preds = %69, %63
  br label %76

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %50, %75, %74, %58, %52
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32*, i32** %17, align 8
  store i32* %80, i32** %21, align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @OBJ_sn2nid(i8* %85)
  store i32 %86, i32* %25, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* @NID_undef, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @OBJ_ln2nid(i8* %91)
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* @NID_undef, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @bio_err, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 (i32, i8*, ...) @BIO_printf(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  br label %149

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* %25, align 4
  %103 = load i32*, i32** %21, align 8
  %104 = call i32* @EVP_PKEY_CTX_new_id(i32 %102, i32* %103)
  store i32* %104, i32** %20, align 8
  br label %118

105:                                              ; preds = %81
  %106 = load i32*, i32** %19, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %149

109:                                              ; preds = %105
  %110 = load i32*, i32** %19, align 8
  %111 = call i32 @EVP_PKEY_size(i32* %110)
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %19, align 8
  %114 = load i32*, i32** %21, align 8
  %115 = call i32* @EVP_PKEY_CTX_new(i32* %113, i32* %114)
  store i32* %115, i32** %20, align 8
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @EVP_PKEY_free(i32* %116)
  br label %118

118:                                              ; preds = %109, %101
  %119 = load i32*, i32** %20, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %149

122:                                              ; preds = %118
  %123 = load i32, i32* %16, align 4
  switch i32 %123, label %142 [
    i32 134, label %124
    i32 133, label %127
    i32 132, label %130
    i32 135, label %133
    i32 137, label %136
    i32 136, label %139
  ]

124:                                              ; preds = %122
  %125 = load i32*, i32** %20, align 8
  %126 = call i32 @EVP_PKEY_sign_init(i32* %125)
  store i32 %126, i32* %23, align 4
  br label %142

127:                                              ; preds = %122
  %128 = load i32*, i32** %20, align 8
  %129 = call i32 @EVP_PKEY_verify_init(i32* %128)
  store i32 %129, i32* %23, align 4
  br label %142

130:                                              ; preds = %122
  %131 = load i32*, i32** %20, align 8
  %132 = call i32 @EVP_PKEY_verify_recover_init(i32* %131)
  store i32 %132, i32* %23, align 4
  br label %142

133:                                              ; preds = %122
  %134 = load i32*, i32** %20, align 8
  %135 = call i32 @EVP_PKEY_encrypt_init(i32* %134)
  store i32 %135, i32* %23, align 4
  br label %142

136:                                              ; preds = %122
  %137 = load i32*, i32** %20, align 8
  %138 = call i32 @EVP_PKEY_decrypt_init(i32* %137)
  store i32 %138, i32* %23, align 4
  br label %142

139:                                              ; preds = %122
  %140 = load i32*, i32** %20, align 8
  %141 = call i32 @EVP_PKEY_derive_init(i32* %140)
  store i32 %141, i32* %23, align 4
  br label %142

142:                                              ; preds = %122, %139, %136, %133, %130, %127, %124
  %143 = load i32, i32* %23, align 4
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32*, i32** %20, align 8
  %147 = call i32 @EVP_PKEY_CTX_free(i32* %146)
  store i32* null, i32** %20, align 8
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %121, %108, %96, %47, %40
  %150 = load i8*, i8** %22, align 8
  %151 = call i32 @OPENSSL_free(i8* %150)
  %152 = load i32*, i32** %20, align 8
  ret i32* %152
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @app_passwd(i8*, i32*, i8**, i32*) #1

declare dso_local i32* @load_key(i8*, i32, i32, i8*, i32*, i8*) #1

declare dso_local i32* @load_pubkey(i8*, i32, i32, i32*, i32*, i8*) #1

declare dso_local i32* @load_cert(i8*, i32, i8*) #1

declare dso_local i32* @X509_get_pubkey(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @EVP_PKEY_sign_init(i32*) #1

declare dso_local i32 @EVP_PKEY_verify_init(i32*) #1

declare dso_local i32 @EVP_PKEY_verify_recover_init(i32*) #1

declare dso_local i32 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i32 @EVP_PKEY_decrypt_init(i32*) #1

declare dso_local i32 @EVP_PKEY_derive_init(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
