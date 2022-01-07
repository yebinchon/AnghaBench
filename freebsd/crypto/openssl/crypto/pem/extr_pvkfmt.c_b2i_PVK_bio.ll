; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_b2i_PVK_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pvkfmt.c_b2i_PVK_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_B2I_PVK_BIO = common dso_local global i32 0, align 4
@PEM_R_PVK_DATA_TOO_SHORT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @b2i_PVK_bio(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [24 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds [24 x i8], [24 x i8]* %8, i64 0, i64 0
  %17 = call i32 @BIO_read(i32* %15, i8* %16, i32 24)
  %18 = icmp ne i32 %17, 24
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @PEM_F_B2I_PVK_BIO, align 4
  %21 = load i32, i32* @PEM_R_PVK_DATA_TOO_SHORT, align 4
  %22 = call i32 @PEMerr(i32 %20, i32 %21)
  store i32* null, i32** %4, align 8
  br label %63

23:                                               ; preds = %3
  %24 = getelementptr inbounds [24 x i8], [24 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %10, align 8
  %25 = call i32 @do_PVK_header(i8** %10, i32 24, i32 0, i32* %13, i32* %14)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %63

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i8* @OPENSSL_malloc(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @PEM_F_B2I_PVK_BIO, align 4
  %38 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %39 = call i32 @PEMerr(i32 %37, i32 %38)
  store i32* null, i32** %4, align 8
  br label %63

40:                                               ; preds = %28
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %10, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @BIO_read(i32* %42, i8* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @PEM_F_B2I_PVK_BIO, align 4
  %50 = load i32, i32* @PEM_R_PVK_DATA_TOO_SHORT, align 4
  %51 = call i32 @PEMerr(i32 %49, i32 %50)
  br label %58

52:                                               ; preds = %40
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32* @do_PVK_body(i8** %10, i32 %53, i32 %54, i32* %55, i8* %56)
  store i32* %57, i32** %12, align 8
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @OPENSSL_clear_free(i8* %59, i32 %60)
  %62 = load i32*, i32** %12, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %58, %36, %27, %19
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @do_PVK_header(i8**, i32, i32, i32*, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32* @do_PVK_body(i8**, i32, i32, i32*, i8*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
