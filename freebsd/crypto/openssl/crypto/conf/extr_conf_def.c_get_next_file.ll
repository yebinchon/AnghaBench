; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_get_next_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_def.c_get_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".conf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".cnf\00", align 1
@CONF_F_GET_NEXT_FILE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**)* @get_next_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_next_file(i8* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  br label %11

11:                                               ; preds = %80, %2
  %12 = load i32**, i32*** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @OPENSSL_DIR_read(i32** %12, i8* %13)
  store i8* %14, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %81

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 5
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -5
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21, %16
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %29, 4
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -4
  %36 = call i64 @strcasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %31, %21
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 2
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @OPENSSL_zalloc(i64 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @CONF_F_GET_NEXT_FILE, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @CONFerr(i32 %49, i32 %50)
  br label %81

52:                                               ; preds = %38
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @OPENSSL_strlcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @OPENSSL_strlcat(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @OPENSSL_strlcat(i8* %67, i8* %68, i64 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32* @BIO_new_file(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %72, i32** %10, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @OPENSSL_free(i8* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32*, i32** %10, align 8
  store i32* %78, i32** %3, align 8
  br label %85

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %31, %28
  br label %11

81:                                               ; preds = %48, %11
  %82 = load i32**, i32*** %5, align 8
  %83 = call i32 @OPENSSL_DIR_end(i32** %82)
  %84 = load i32**, i32*** %5, align 8
  store i32* null, i32** %84, align 8
  store i32* null, i32** %3, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32*, i32** %3, align 8
  ret i32* %86
}

declare dso_local i8* @OPENSSL_DIR_read(i32**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_strlcat(i8*, i8*, i64) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_DIR_end(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
