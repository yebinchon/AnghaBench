; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_x509.c_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_x509.c_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*, i8*, i32)* @sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sign(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @X509_get_subject_name(i32* %20)
  %22 = call i32 @X509_set_issuer_name(i32* %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  br label %78

25:                                               ; preds = %8
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @set_cert_times(i32* %29, i32* null, i32* null, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %78

34:                                               ; preds = %28, %25
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @X509_set_pubkey(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %78

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @X509_get_ext_count(i32* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @X509_delete_ext(i32* %49, i32 0)
  br label %44

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32*, i32** %15, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @X509_set_version(i32* %56, i32 2)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @X509V3_set_ctx(i32* %18, i32* %58, i32* %59, i32* null, i32* null, i32 0)
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @X509V3_set_nconf(i32* %18, i32* %61)
  %63 = load i32*, i32** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @X509V3_EXT_add_nconf(i32* %63, i32* %18, i8* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  br label %78

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @X509_sign(i32* %71, i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %78

77:                                               ; preds = %70
  store i32 1, i32* %9, align 4
  br label %81

78:                                               ; preds = %76, %68, %39, %33, %24
  %79 = load i32, i32* @bio_err, align 4
  %80 = call i32 @ERR_print_errors(i32 %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @X509_set_issuer_name(i32*, i32) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32 @set_cert_times(i32*, i32*, i32*, i32) #1

declare dso_local i32 @X509_set_pubkey(i32*, i32*) #1

declare dso_local i64 @X509_get_ext_count(i32*) #1

declare dso_local i32 @X509_delete_ext(i32*, i32) #1

declare dso_local i32 @X509_set_version(i32*, i32) #1

declare dso_local i32 @X509V3_set_ctx(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @X509V3_set_nconf(i32*, i32*) #1

declare dso_local i32 @X509V3_EXT_add_nconf(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @X509_sign(i32*, i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
