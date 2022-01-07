; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_verify_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_opgp_sig.c_verify_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i8*, i64)* @verify_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_digest(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %18 = call i32 (...) @initialize()
  %19 = load i8*, i8** %8, align 8
  %20 = call i32* @EVP_get_digestbyname(i8* %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i32 @EVP_DigestInit(%struct.TYPE_3__* %13, i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @EVP_PKEY_CTX_new(i32* %23, i32* null)
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  br label %52

28:                                               ; preds = %6
  %29 = load i32*, i32** %15, align 8
  %30 = call i64 @EVP_PKEY_verify_init(i32* %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %52

33:                                               ; preds = %28
  %34 = load i32*, i32** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @EVP_PKEY_CTX_set_signature_md(i32* %34, i32 %36)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load i32*, i32** %15, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @EVP_PKEY_verify(i32* %41, i8* %42, i64 %43, i8* %44, i64 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51, %39, %32, %27
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @EVP_PKEY_CTX_free(i32* %53)
  %55 = load i32, i32* %16, align 4
  ret i32 %55
}

declare dso_local i32 @initialize(...) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @EVP_DigestInit(%struct.TYPE_3__*, i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_verify_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_signature_md(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_verify(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
