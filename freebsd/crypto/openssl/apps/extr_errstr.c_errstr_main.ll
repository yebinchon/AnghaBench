; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_errstr.c_errstr_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_errstr.c_errstr_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errstr_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@bio_out = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @errstr_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = load i32, i32* @errstr_options, align 4
  %13 = call i8* @opt_init(i32 %10, i8** %11, i32 %12)
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = call i32 (...) @opt_next()
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 130
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %26 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %17, %17
  %20 = load i32, i32* @bio_err, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @BIO_printf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %57

23:                                               ; preds = %17
  %24 = load i32, i32* @errstr_options, align 4
  %25 = call i32 @opt_help(i32 %24)
  store i32 0, i32* %8, align 4
  br label %57

26:                                               ; preds = %17
  br label %14

27:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %28 = call i8** (...) @opt_rest()
  store i8** %28, i8*** %4, align 8
  br label %29

29:                                               ; preds = %53, %27
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @sscanf(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %9)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load i32, i32* @OPENSSL_INIT_LOAD_SSL_STRINGS, align 4
  %43 = load i32, i32* @OPENSSL_INIT_LOAD_CRYPTO_STRINGS, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @OPENSSL_init_ssl(i32 %44, i32* null)
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %48 = call i32 @ERR_error_string_n(i64 %46, i8* %47, i32 256)
  %49 = load i32, i32* @bio_out, align 4
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %51 = call i32 @BIO_printf(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %41, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %4, align 8
  br label %29

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56, %23, %19
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i64 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @OPENSSL_init_ssl(i32, i32*) #1

declare dso_local i32 @ERR_error_string_n(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
