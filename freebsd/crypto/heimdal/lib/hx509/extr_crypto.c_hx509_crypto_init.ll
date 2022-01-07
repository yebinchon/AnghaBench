; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_crypto_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.hx509cipher*, i32 }
%struct.hx509cipher = type { i32 (...)* }

@HX509_ALG_NOT_SUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Algorithm not supported\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PADDING_PKCS7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_crypto_init(i32 %0, i8* %1, i32* %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.hx509cipher*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call %struct.hx509cipher* @find_cipher_by_oid(i32* %12)
  store %struct.hx509cipher* %13, %struct.hx509cipher** %10, align 8
  %14 = load %struct.hx509cipher*, %struct.hx509cipher** %10, align 8
  %15 = icmp eq %struct.hx509cipher* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HX509_ALG_NOT_SUPP, align 4
  %19 = call i32 @hx509_set_error_string(i32 %17, i32 0, i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @HX509_ALG_NOT_SUPP, align 4
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = call %struct.TYPE_5__* @calloc(i32 1, i32 24)
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @hx509_clear_error_string(i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %5, align 4
  br label %62

31:                                               ; preds = %21
  %32 = load i32, i32* @PADDING_PKCS7, align 4
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.hx509cipher*, %struct.hx509cipher** %10, align 8
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store %struct.hx509cipher* %36, %struct.hx509cipher** %39, align 8
  %40 = load %struct.hx509cipher*, %struct.hx509cipher** %10, align 8
  %41 = getelementptr inbounds %struct.hx509cipher, %struct.hx509cipher* %40, i32 0, i32 0
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = call i32 (...) %42()
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i64 @der_copy_oid(i32* %47, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %31
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @hx509_crypto_destroy(%struct.TYPE_5__* %55)
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @hx509_clear_error_string(i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %53, %27, %16
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.hx509cipher* @find_cipher_by_oid(i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i64 @der_copy_oid(i32*, i32*) #1

declare dso_local i32 @hx509_crypto_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
