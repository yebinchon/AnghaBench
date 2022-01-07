; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_by_dir.c_dir_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_by_dir.c_dir_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@X509_FILETYPE_DEFAULT = common dso_local global i64 0, align 8
@X509_FILETYPE_PEM = common dso_local global i32 0, align 4
@X509_F_DIR_CTRL = common dso_local global i32 0, align 4
@X509_R_LOADING_CERT_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i64, i8**)* @dir_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_ctrl(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %53 [
    i32 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @X509_FILETYPE_DEFAULT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = call i32 (...) @X509_get_default_cert_dir_env()
  %25 = call i8* @ossl_safe_getenv(i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32*, i32** %12, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %32 = call i32 @add_cert_dir(i32* %29, i8* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i32*, i32** %12, align 8
  %35 = call i8* (...) @X509_get_default_cert_dir()
  %36 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %37 = call i32 @add_cert_dir(i32* %34, i8* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @X509_F_DIR_CTRL, align 4
  %43 = load i32, i32* @X509_R_LOADING_CERT_DIR, align 4
  %44 = call i32 @X509err(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %52

46:                                               ; preds = %19
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @add_cert_dir(i32* %47, i8* %48, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %45
  br label %53

53:                                               ; preds = %5, %52
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local i8* @ossl_safe_getenv(i32) #1

declare dso_local i32 @X509_get_default_cert_dir_env(...) #1

declare dso_local i32 @add_cert_dir(i32*, i8*, i32) #1

declare dso_local i8* @X509_get_default_cert_dir(...) #1

declare dso_local i32 @X509err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
