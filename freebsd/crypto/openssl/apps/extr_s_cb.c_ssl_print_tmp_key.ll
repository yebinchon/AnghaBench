; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_tmp_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_tmp_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Server Temp Key: \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"RSA, %d bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"DH, %d bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ECDH, %s, %d bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s, %d bits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_print_tmp_key(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @SSL_get_peer_tmp_key(i32* %10, i32** %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @BIO_puts(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @EVP_PKEY_id(i32* %17)
  switch i32 %18, label %54 [
    i32 128, label %19
    i32 130, label %26
    i32 129, label %33
  ]

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @EVP_PKEY_bits(i32* %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i32*, i8*, i8*, ...) @BIO_printf(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %62

26:                                               ; preds = %14
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @EVP_PKEY_bits(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i32*, i8*, i8*, ...) @BIO_printf(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %62

33:                                               ; preds = %14
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @EVP_PKEY_get1_EC_KEY(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @EC_KEY_get0_group(i32* %36)
  %38 = call i32 @EC_GROUP_get_curve_name(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @EC_KEY_free(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @EC_curve_nid2nist(i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @OBJ_nid2sn(i32 %46)
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @EVP_PKEY_bits(i32* %51)
  %53 = call i32 (i32*, i8*, i8*, ...) @BIO_printf(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %52)
  br label %62

54:                                               ; preds = %14
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @EVP_PKEY_id(i32* %56)
  %58 = call i8* @OBJ_nid2sn(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @EVP_PKEY_bits(i32* %59)
  %61 = call i32 (i32*, i8*, i8*, ...) @BIO_printf(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %58, i32 %60)
  br label %62

62:                                               ; preds = %54, %48, %26, %19
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @EVP_PKEY_free(i32* %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @SSL_get_peer_tmp_key(i32*, i32**) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @EVP_PKEY_bits(i32*) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i8* @EC_curve_nid2nist(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
