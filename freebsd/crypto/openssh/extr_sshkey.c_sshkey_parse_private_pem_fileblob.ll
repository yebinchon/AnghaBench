; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_parse_private_pem_fileblob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_parse_private_pem_fileblob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i32, i32, i32*, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@KEY_UNSPEC = common dso_local global i32 0, align 4
@KEY_RSA = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_DSA = common dso_local global i64 0, align 8
@KEY_DSA = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i64 0, align 8
@KEY_ECDSA = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, i32, i8*, %struct.sshkey**)* @sshkey_parse_private_pem_fileblob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshkey_parse_private_pem_fileblob(%struct.sshbuf* %0, i32 %1, i8* %2, %struct.sshkey** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sshbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sshkey**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.sshkey** %3, %struct.sshkey*** %9, align 8
  store i32* null, i32** %10, align 8
  store %struct.sshkey* null, %struct.sshkey** %11, align 8
  store i32* null, i32** %12, align 8
  %14 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  %15 = icmp ne %struct.sshkey** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  store %struct.sshkey* null, %struct.sshkey** %17, align 8
  br label %18

18:                                               ; preds = %16, %4
  %19 = call i32 (...) @BIO_s_mem()
  %20 = call i32* @BIO_new(i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %24 = call i64 @sshbuf_len(%struct.sshbuf* %23)
  %25 = load i64, i64* @INT_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %18
  %28 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %28, i32* %5, align 4
  br label %137

29:                                               ; preds = %22
  %30 = load i32*, i32** %12, align 8
  %31 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %32 = call i32 @sshbuf_ptr(%struct.sshbuf* %31)
  %33 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %34 = call i64 @sshbuf_len(%struct.sshbuf* %33)
  %35 = call i32 @BIO_write(i32* %30, i32 %32, i64 %34)
  %36 = load %struct.sshbuf*, %struct.sshbuf** %6, align 8
  %37 = call i64 @sshbuf_len(%struct.sshbuf* %36)
  %38 = trunc i64 %37 to i32
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %41, i32* %13, align 4
  br label %129

42:                                               ; preds = %29
  %43 = call i32 (...) @clear_libcrypto_errors()
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32* @PEM_read_bio_PrivateKey(i32* %44, i32* null, i32* null, i8* %45)
  store i32* %46, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @convert_libcrypto_error()
  store i32 %49, i32* %13, align 4
  br label %129

50:                                               ; preds = %42
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @EVP_PKEY_base_id(i32* %51)
  %53 = load i64, i64* @EVP_PKEY_RSA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @KEY_UNSPEC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @KEY_RSA, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @KEY_UNSPEC, align 4
  %65 = call %struct.sshkey* @sshkey_new(i32 %64)
  store %struct.sshkey* %65, %struct.sshkey** %11, align 8
  %66 = icmp eq %struct.sshkey* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %68, i32* %13, align 4
  br label %129

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @EVP_PKEY_get1_RSA(i32* %70)
  %72 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %73 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @KEY_RSA, align 4
  %75 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %76 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %78 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @RSA_blinding_on(i32 %79, i32* null)
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %83, i32* %13, align 4
  br label %129

84:                                               ; preds = %69
  %85 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %86 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @check_rsa_length(i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %129

91:                                               ; preds = %84
  br label %122

92:                                               ; preds = %59, %50
  %93 = load i32*, i32** %10, align 8
  %94 = call i64 @EVP_PKEY_base_id(i32* %93)
  %95 = load i64, i64* @EVP_PKEY_DSA, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @KEY_UNSPEC, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @KEY_DSA, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101, %97
  %106 = load i32, i32* @KEY_UNSPEC, align 4
  %107 = call %struct.sshkey* @sshkey_new(i32 %106)
  store %struct.sshkey* %107, %struct.sshkey** %11, align 8
  %108 = icmp eq %struct.sshkey* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %110, i32* %13, align 4
  br label %129

111:                                              ; preds = %105
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @EVP_PKEY_get1_DSA(i32* %112)
  %114 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %115 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @KEY_DSA, align 4
  %117 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %118 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %121

119:                                              ; preds = %101, %92
  %120 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %120, i32* %13, align 4
  br label %129

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %91
  store i32 0, i32* %13, align 4
  %123 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  %124 = icmp ne %struct.sshkey** %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %127 = load %struct.sshkey**, %struct.sshkey*** %9, align 8
  store %struct.sshkey* %126, %struct.sshkey** %127, align 8
  store %struct.sshkey* null, %struct.sshkey** %11, align 8
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %119, %109, %90, %82, %67, %48, %40
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @BIO_free(i32* %130)
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @EVP_PKEY_free(i32* %132)
  %134 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %135 = call i32 @sshkey_free(%struct.sshkey* %134)
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %129, %27
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @BIO_write(i32*, i32, i64) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @clear_libcrypto_errors(...) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @convert_libcrypto_error(...) #1

declare dso_local i64 @EVP_PKEY_base_id(i32*) #1

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i32 @EVP_PKEY_get1_RSA(i32*) #1

declare dso_local i32 @RSA_blinding_on(i32, i32*) #1

declare dso_local i32 @check_rsa_length(i32) #1

declare dso_local i32 @EVP_PKEY_get1_DSA(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
