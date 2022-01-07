; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_prf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_prf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@ETYPE_AES256_CTS_HMAC_SHA1_96 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"krb5_init_context %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"krb5_generate_random_keyblock\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"krb5_crypto_prf_length\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"krb5_crypto_init\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"krb5_crypto_prf\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"krb5_data_cmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @ETYPE_AES256_CTS_HMAC_SHA1_96, align 4
  store i32 %15, i32* %14, align 4
  %16 = call i64 @krb5_init_context(i32* %6)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @krb5_generate_random_keyblock(i32 %23, i32 %24, i32* %8)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @krb5_err(i32 %29, i32 1, i64 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @krb5_crypto_prf_length(i32 %33, i32 %34, i64* %10)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @krb5_err(i32 %39, i32 1, i64 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @krb5_crypto_init(i32 %43, i32* %8, i32 0, i32* %9)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @krb5_err(i32 %48, i32 1, i64 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42
  %52 = call i32 @rk_UNCONST(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 3, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @krb5_crypto_prf(i32 %55, i32 %56, %struct.TYPE_7__* %11, %struct.TYPE_7__* %12)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @krb5_err(i32 %61, i32 1, i64 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @krb5_crypto_prf(i32 %65, i32 %66, %struct.TYPE_7__* %11, %struct.TYPE_7__* %13)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @krb5_err(i32 %71, i32 1, i64 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %64
  %75 = call i64 @krb5_data_cmp(%struct.TYPE_7__* %12, %struct.TYPE_7__* %13)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @krb5_errx(i32 %78, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  %81 = call i32 @krb5_data_free(%struct.TYPE_7__* %12)
  %82 = call i32 @krb5_data_free(%struct.TYPE_7__* %13)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @krb5_crypto_destroy(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @krb5_free_keyblock_contents(i32 %86, i32* %8)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @krb5_free_context(i32 %88)
  ret i32 0
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i64 @krb5_generate_random_keyblock(i32, i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_crypto_prf_length(i32, i32, i64*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i64 @krb5_crypto_prf(i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i64 @krb5_data_cmp(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_7__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
