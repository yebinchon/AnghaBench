; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_next_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_next_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Warning: could not open file %s for reading, using serial number: 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to load number from %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @next_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @next_serial(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = call i32* (...) @ASN1_INTEGER_new()
  store i32* %8, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %54

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @BIO_new_file(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = call i32 (...) @ERR_clear_error()
  %17 = load i32, i32* @bio_err, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @BIO_printf(i32 %17, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ASN1_INTEGER_set(i32* %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %54

24:                                               ; preds = %15
  br label %53

25:                                               ; preds = %11
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %29 = call i32 @a2i_ASN1_INTEGER(i32* %26, i32* %27, i8* %28, i32 1024)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @bio_err, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @BIO_printf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %54

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @ASN1_INTEGER_to_BN(i32* %36, i32* null)
  store i32* %37, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %54

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ASN1_INTEGER_free(i32* %41)
  store i32* null, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @BN_add_word(i32* %43, i32 1)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %54

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @BN_to_ASN1_INTEGER(i32* %48, i32* null)
  store i32* %49, i32** %5, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %24
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51, %46, %39, %31, %23, %10
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ASN1_INTEGER_free(i32* %58)
  store i32* null, i32** %5, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @BIO_free_all(i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @BN_free(i32* %63)
  %65 = load i32*, i32** %5, align 8
  ret i32* %65
}

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i32) #1

declare dso_local i32 @a2i_ASN1_INTEGER(i32*, i32*, i8*, i32) #1

declare dso_local i32* @ASN1_INTEGER_to_BN(i32*, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
