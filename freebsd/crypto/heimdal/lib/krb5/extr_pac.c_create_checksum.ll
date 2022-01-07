; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_create_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_create_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@CKSUMTYPE_HMAC_MD5 = common dso_local global i64 0, align 8
@KRB5_KU_OTHER_CKSUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"pac checksum wrong length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i64, i8*, i64, i8*, i64)* @create_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_checksum(i32 %0, i32* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* null, i32** %16, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @CKSUMTYPE_HMAC_MD5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %7
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* @KRB5_KU_OTHER_CKSUM, align 4
  %28 = call i64 @HMAC_MD5_any_checksum(i32 %23, i32* %24, i8* %25, i64 %26, i32 %27, %struct.TYPE_7__* %18)
  store i64 %28, i64* %17, align 8
  br label %52

29:                                               ; preds = %7
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @krb5_crypto_init(i32 %30, i32* %31, i32 0, i32** %16)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %17, align 8
  store i64 %36, i64* %8, align 8
  br label %72

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* @KRB5_KU_OTHER_CKSUM, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @krb5_create_checksum(i32 %38, i32* %39, i32 %40, i32 0, i8* %41, i64 %42, %struct.TYPE_7__* %18)
  store i64 %43, i64* %17, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @krb5_crypto_destroy(i32 %44, i32* %45)
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i64, i64* %17, align 8
  store i64 %50, i64* %8, align 8
  br label %72

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %22
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i64, i64* @EINVAL, align 8
  %61 = call i32 @krb5_set_error_message(i32 %59, i64 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @free_Checksum(%struct.TYPE_7__* %18)
  %63 = load i64, i64* @EINVAL, align 8
  store i64 %63, i64* %8, align 8
  br label %72

64:                                               ; preds = %52
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @memcpy(i8* %65, i32 %68, i64 %69)
  %71 = call i32 @free_Checksum(%struct.TYPE_7__* %18)
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %64, %58, %49, %35
  %73 = load i64, i64* %8, align 8
  ret i64 %73
}

declare dso_local i64 @HMAC_MD5_any_checksum(i32, i32*, i8*, i64, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32**) #1

declare dso_local i64 @krb5_create_checksum(i32, i32*, i32, i32, i8*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
