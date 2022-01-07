; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_save_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_save_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSIZE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"file name too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"error converting serial to ASN.1 format\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save_serial(i8* %0, i8* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %15 = load i32, i32* @BSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = mul nuw i64 1, %16
  %19 = alloca i8, i64 %18, align 16
  store i64 %16, i64* %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %14, align 4
  br label %32

25:                                               ; preds = %4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %27, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @BSIZE, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @BIO_printf(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %85

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = mul nsw i64 0, %16
  %44 = getelementptr inbounds i8, i8* %19, i64 %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @BSIZE, align 4
  %47 = call i32 @OPENSSL_strlcpy(i8* %44, i8* %45, i32 %46)
  br label %57

48:                                               ; preds = %39
  %49 = mul nsw i64 0, %16
  %50 = getelementptr inbounds i8, i8* %19, i64 %49
  %51 = mul nsw i64 0, %16
  %52 = getelementptr inbounds i8, i8* %19, i64 %51
  %53 = trunc i64 %16 to i32
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @BIO_snprintf(i8* %50, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55)
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %48, %42
  %58 = mul nsw i64 0, %16
  %59 = getelementptr inbounds i8, i8* %19, i64 %58
  %60 = call i32* @BIO_new_file(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @bio_err, align 4
  %65 = call i32 @ERR_print_errors(i32 %64)
  br label %85

66:                                               ; preds = %57
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @BN_to_ASN1_INTEGER(i32* %67, i32* null)
  store i32* %68, i32** %13, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 @BIO_printf(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %85

73:                                               ; preds = %66
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @i2a_ASN1_INTEGER(i32* %74, i32* %75)
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @BIO_puts(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  %79 = load i32**, i32*** %8, align 8
  %80 = icmp ne i32** %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32*, i32** %13, align 8
  %83 = load i32**, i32*** %8, align 8
  store i32* %82, i32** %83, align 8
  store i32* null, i32** %13, align 8
  br label %84

84:                                               ; preds = %81, %73
  br label %85

85:                                               ; preds = %84, %70, %63, %36
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @BIO_free_all(i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @ASN1_INTEGER_free(i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BIO_printf(i32, i8*) #2

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @BIO_new_file(i8*, i8*) #2

declare dso_local i32 @ERR_print_errors(i32) #2

declare dso_local i32* @BN_to_ASN1_INTEGER(i32*, i32*) #2

declare dso_local i32 @i2a_ASN1_INTEGER(i32*, i32*) #2

declare dso_local i32 @BIO_puts(i32*, i8*) #2

declare dso_local i32 @BIO_free_all(i32*) #2

declare dso_local i32 @ASN1_INTEGER_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
