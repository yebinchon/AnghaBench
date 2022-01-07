; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_print_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_print_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XN_FLAG_SEP_MASK = common dso_local global i64 0, align 8
@XN_FLAG_SEP_MULTILINE = common dso_local global i64 0, align 8
@XN_FLAG_COMPAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_name(i32* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8 0, i8* %10, align 1
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @BIO_puts(i32* %15, i8* %16)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @XN_FLAG_SEP_MASK, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* @XN_FLAG_SEP_MULTILINE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8 1, i8* %10, align 1
  store i32 4, i32* %11, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @XN_FLAG_COMPAT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i8* @X509_NAME_oneline(i32* %30, i32 0, i32 0)
  store i8* %31, i8** %9, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @BIO_puts(i32* %32, i8* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @BIO_puts(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @OPENSSL_free(i8* %37)
  br label %53

39:                                               ; preds = %25
  %40 = load i8, i8* %10, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @BIO_puts(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @X509_NAME_print_ex(i32* %46, i32* %47, i32 %48, i64 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @BIO_puts(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %45, %29
  ret void
}

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i8* @X509_NAME_oneline(i32*, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @X509_NAME_print_ex(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
