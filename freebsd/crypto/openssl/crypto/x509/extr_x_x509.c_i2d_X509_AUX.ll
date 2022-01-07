; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_x509.c_i2d_X509_AUX.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_x509.c_i2d_X509_AUX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_I2D_X509_AUX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_X509_AUX(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = icmp eq i8** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @i2d_x509_aux_internal(i32* %15, i8** %16)
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %10
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @i2d_x509_aux_internal(i32* %19, i8** null)
  store i32 %20, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @OPENSSL_malloc(i32 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @X509_F_I2D_X509_AUX, align 4
  %32 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %33 = call i32 @X509err(i32 %31, i32 %32)
  store i32 -1, i32* %3, align 4
  br label %46

34:                                               ; preds = %24
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @i2d_x509_aux_internal(i32* %35, i8** %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @OPENSSL_free(i8* %41)
  %43 = load i8**, i8*** %5, align 8
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %30, %22, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @i2d_x509_aux_internal(i32*, i8**) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
