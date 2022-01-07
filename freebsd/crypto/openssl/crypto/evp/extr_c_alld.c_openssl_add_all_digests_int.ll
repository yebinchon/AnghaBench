; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_c_alld.c_openssl_add_all_digests_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_c_alld.c_openssl_add_all_digests_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SN_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ssl3-md5\00", align 1
@SN_sha1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ssl3-sha1\00", align 1
@SN_sha1WithRSAEncryption = common dso_local global i32 0, align 4
@SN_sha1WithRSA = common dso_local global i8* null, align 8
@SN_ripemd160 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ripemd\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @openssl_add_all_digests_int() #0 {
  %1 = call i32 (...) @EVP_md4()
  %2 = call i32 @EVP_add_digest(i32 %1)
  %3 = call i32 (...) @EVP_md5()
  %4 = call i32 @EVP_add_digest(i32 %3)
  %5 = load i32, i32* @SN_md5, align 4
  %6 = call i32 @EVP_add_digest_alias(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @EVP_md5_sha1()
  %8 = call i32 @EVP_add_digest(i32 %7)
  %9 = call i32 (...) @EVP_sha1()
  %10 = call i32 @EVP_add_digest(i32 %9)
  %11 = load i32, i32* @SN_sha1, align 4
  %12 = call i32 @EVP_add_digest_alias(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @SN_sha1WithRSAEncryption, align 4
  %14 = load i8*, i8** @SN_sha1WithRSA, align 8
  %15 = call i32 @EVP_add_digest_alias(i32 %13, i8* %14)
  %16 = call i32 (...) @EVP_mdc2()
  %17 = call i32 @EVP_add_digest(i32 %16)
  %18 = call i32 (...) @EVP_ripemd160()
  %19 = call i32 @EVP_add_digest(i32 %18)
  %20 = load i32, i32* @SN_ripemd160, align 4
  %21 = call i32 @EVP_add_digest_alias(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @SN_ripemd160, align 4
  %23 = call i32 @EVP_add_digest_alias(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 (...) @EVP_sha224()
  %25 = call i32 @EVP_add_digest(i32 %24)
  %26 = call i32 (...) @EVP_sha256()
  %27 = call i32 @EVP_add_digest(i32 %26)
  %28 = call i32 (...) @EVP_sha384()
  %29 = call i32 @EVP_add_digest(i32 %28)
  %30 = call i32 (...) @EVP_sha512()
  %31 = call i32 @EVP_add_digest(i32 %30)
  %32 = call i32 (...) @EVP_sha512_224()
  %33 = call i32 @EVP_add_digest(i32 %32)
  %34 = call i32 (...) @EVP_sha512_256()
  %35 = call i32 @EVP_add_digest(i32 %34)
  %36 = call i32 (...) @EVP_whirlpool()
  %37 = call i32 @EVP_add_digest(i32 %36)
  %38 = call i32 (...) @EVP_sm3()
  %39 = call i32 @EVP_add_digest(i32 %38)
  %40 = call i32 (...) @EVP_blake2b512()
  %41 = call i32 @EVP_add_digest(i32 %40)
  %42 = call i32 (...) @EVP_blake2s256()
  %43 = call i32 @EVP_add_digest(i32 %42)
  %44 = call i32 (...) @EVP_sha3_224()
  %45 = call i32 @EVP_add_digest(i32 %44)
  %46 = call i32 (...) @EVP_sha3_256()
  %47 = call i32 @EVP_add_digest(i32 %46)
  %48 = call i32 (...) @EVP_sha3_384()
  %49 = call i32 @EVP_add_digest(i32 %48)
  %50 = call i32 (...) @EVP_sha3_512()
  %51 = call i32 @EVP_add_digest(i32 %50)
  %52 = call i32 (...) @EVP_shake128()
  %53 = call i32 @EVP_add_digest(i32 %52)
  %54 = call i32 (...) @EVP_shake256()
  %55 = call i32 @EVP_add_digest(i32 %54)
  ret void
}

declare dso_local i32 @EVP_add_digest(i32) #1

declare dso_local i32 @EVP_md4(...) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @EVP_add_digest_alias(i32, i8*) #1

declare dso_local i32 @EVP_md5_sha1(...) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @EVP_mdc2(...) #1

declare dso_local i32 @EVP_ripemd160(...) #1

declare dso_local i32 @EVP_sha224(...) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @EVP_sha384(...) #1

declare dso_local i32 @EVP_sha512(...) #1

declare dso_local i32 @EVP_sha512_224(...) #1

declare dso_local i32 @EVP_sha512_256(...) #1

declare dso_local i32 @EVP_whirlpool(...) #1

declare dso_local i32 @EVP_sm3(...) #1

declare dso_local i32 @EVP_blake2b512(...) #1

declare dso_local i32 @EVP_blake2s256(...) #1

declare dso_local i32 @EVP_sha3_224(...) #1

declare dso_local i32 @EVP_sha3_256(...) #1

declare dso_local i32 @EVP_sha3_384(...) #1

declare dso_local i32 @EVP_sha3_512(...) #1

declare dso_local i32 @EVP_shake128(...) #1

declare dso_local i32 @EVP_shake256(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
