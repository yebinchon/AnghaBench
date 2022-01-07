; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_load_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to load number from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"error converting number from bin to BIGNUM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_serial(i8* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = call i32* (...) @ASN1_INTEGER_new()
  store i32* %11, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %69

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @BIO_new_file(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @perror(i8* %24)
  br label %69

26:                                               ; preds = %20
  %27 = call i32 (...) @ERR_clear_error()
  %28 = call i32* (...) @BN_new()
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @rand_serial(i32* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 (i32, i8*, ...) @BIO_printf(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  br label %59

40:                                               ; preds = %15
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %44 = call i32 @a2i_ASN1_INTEGER(i32* %41, i32* %42, i8* %43, i32 1024)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @bio_err, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 (i32, i8*, ...) @BIO_printf(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %69

50:                                               ; preds = %40
  %51 = load i32*, i32** %10, align 8
  %52 = call i32* @ASN1_INTEGER_to_BN(i32* %51, i32* null)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @bio_err, align 4
  %57 = call i32 (i32, i8*, ...) @BIO_printf(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %69

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32**, i32*** %6, align 8
  %64 = icmp ne i32** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %10, align 8
  %67 = load i32**, i32*** %6, align 8
  store i32* %66, i32** %67, align 8
  store i32* null, i32** %10, align 8
  br label %68

68:                                               ; preds = %65, %62, %59
  br label %69

69:                                               ; preds = %68, %55, %46, %23, %14
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @BIO_free(i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @ASN1_INTEGER_free(i32* %72)
  %74 = load i32*, i32** %8, align 8
  ret i32* %74
}

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @rand_serial(i32*, i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @a2i_ASN1_INTEGER(i32*, i32*, i8*, i32) #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
