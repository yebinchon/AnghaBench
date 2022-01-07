; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_pem_to_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_private_pem_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32, i32, i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_PASSPHRASE_TOO_SHORT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshkey*, %struct.sshbuf*, i8*, i8*)* @sshkey_private_pem_to_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sshkey_private_pem_to_blob(%struct.sshkey* %0, %struct.sshbuf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %6, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to i32*
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32* [ %24, %22 ], [ null, %25 ]
  store i32* %27, i32** %14, align 8
  %28 = load i32, i32* %13, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32* (...) @EVP_aes_128_cbc()
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32* [ %31, %30 ], [ null, %32 ]
  store i32* %34, i32** %15, align 8
  store i32* null, i32** %17, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = icmp sle i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SSH_ERR_PASSPHRASE_TOO_SHORT, align 4
  store i32 %41, i32* %5, align 4
  br label %94

42:                                               ; preds = %37, %33
  %43 = call i32 (...) @BIO_s_mem()
  %44 = call i32* @BIO_new(i32 %43)
  store i32* %44, i32** %17, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %47, i32* %5, align 4
  br label %94

48:                                               ; preds = %42
  %49 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %50 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %70 [
    i32 130, label %52
    i32 128, label %61
  ]

52:                                               ; preds = %48
  %53 = load i32*, i32** %17, align 8
  %54 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %55 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @PEM_write_bio_DSAPrivateKey(i32* %53, i32 %56, i32* %57, i32* %58, i32 %59, i32* null, i32* null)
  store i32 %60, i32* %10, align 4
  br label %71

61:                                               ; preds = %48
  %62 = load i32*, i32** %17, align 8
  %63 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %64 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @PEM_write_bio_RSAPrivateKey(i32* %62, i32 %65, i32* %66, i32* %67, i32 %68, i32* null, i32* null)
  store i32 %69, i32* %10, align 4
  br label %71

70:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %61, %52
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %75, i32* %11, align 4
  br label %90

76:                                               ; preds = %71
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @BIO_get_mem_data(i32* %77, i8** %16)
  store i32 %78, i32* %12, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %81, i32* %11, align 4
  br label %90

82:                                               ; preds = %76
  %83 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @sshbuf_put(%struct.sshbuf* %83, i8* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %88, %80, %74
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @BIO_free(i32* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %46, %40
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @EVP_aes_128_cbc(...) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(i32*, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_RSAPrivateKey(i32*, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i8*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
