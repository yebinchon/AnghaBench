; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rehash.c_rehash_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_rehash.c_rehash_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_NEW = common dso_local global i32 0, align 4
@rehash_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@HASH_BOTH = common dso_local global i32 0, align 4
@HASH_OLD = common dso_local global i32 0, align 4
@remove_links = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@evpmd = common dso_local global i32 0, align 4
@evpmdsize = common dso_local global i32 0, align 4
@LIST_SEPARATOR_CHAR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rehash_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @HASH_NEW, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = load i32, i32* @rehash_options, align 4
  %17 = call i8* @opt_init(i32 %14, i8** %15, i32 %16)
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %36, %2
  %19 = call i32 (...) @opt_next()
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %19, 133
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %36 [
    i32 133, label %23
    i32 132, label %23
    i32 131, label %27
    i32 134, label %30
    i32 129, label %32
    i32 130, label %34
    i32 128, label %35
  ]

23:                                               ; preds = %21, %21
  %24 = load i32, i32* @bio_err, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @BIO_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %102

27:                                               ; preds = %21
  %28 = load i32, i32* @rehash_options, align 4
  %29 = call i32 @opt_help(i32 %28)
  br label %102

30:                                               ; preds = %21
  %31 = load i32, i32* @HASH_BOTH, align 4
  store i32 %31, i32* %11, align 4
  br label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @HASH_OLD, align 4
  store i32 %33, i32* %11, align 4
  br label %36

34:                                               ; preds = %21
  store i32 0, i32* @remove_links, align 4
  br label %36

35:                                               ; preds = %21
  store i32 1, i32* @verbose, align 4
  br label %36

36:                                               ; preds = %21, %35, %34, %32, %30
  br label %18

37:                                               ; preds = %18
  %38 = call i32 (...) @opt_num_rest()
  store i32 %38, i32* %3, align 4
  %39 = call i8** (...) @opt_rest()
  store i8** %39, i8*** %4, align 8
  %40 = call i32 (...) @EVP_sha1()
  store i32 %40, i32* @evpmd, align 4
  %41 = load i32, i32* @evpmd, align 4
  %42 = call i32 @EVP_MD_size(i32 %41)
  store i32 %42, i32* @evpmdsize, align 4
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i8**, i8*** %4, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %4, align 8
  %54 = load i8*, i8** %52, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @do_dir(i8* %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %47

61:                                               ; preds = %47
  br label %101

62:                                               ; preds = %37
  %63 = call i32 (...) @X509_get_default_cert_dir_env()
  %64 = call i8* @getenv(i32 %63)
  store i8* %64, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %68 = load i8, i8* @LIST_SEPARATOR_CHAR, align 1
  store i8 %68, i8* %67, align 1
  %69 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @OPENSSL_strdup(i8* %70)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %74 = call i8* @strtok(i8* %72, i8* %73)
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %86, %66
  %76 = load i8*, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @do_dir(i8* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %88 = call i8* @strtok(i8* null, i8* %87)
  store i8* %88, i8** %7, align 8
  br label %75

89:                                               ; preds = %75
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @OPENSSL_free(i8* %90)
  br label %100

92:                                               ; preds = %62
  %93 = call i8* (...) @X509_get_default_cert_dir()
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @do_dir(i8* %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %92, %89
  br label %101

101:                                              ; preds = %100, %61
  br label %102

102:                                              ; preds = %101, %27, %23
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @EVP_MD_size(i32) #1

declare dso_local i64 @do_dir(i8*, i32) #1

declare dso_local i8* @getenv(i32) #1

declare dso_local i32 @X509_get_default_cert_dir_env(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @X509_get_default_cert_dir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
