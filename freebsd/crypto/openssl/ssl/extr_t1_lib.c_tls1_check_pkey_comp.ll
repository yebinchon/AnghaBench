; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_check_pkey_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_t1_lib.c_tls1_check_pkey_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }

@EVP_PKEY_EC = common dso_local global i64 0, align 8
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i64 0, align 8
@TLSEXT_ECPOINTFORMAT_uncompressed = common dso_local global i8 0, align 1
@NID_X9_62_prime_field = common dso_local global i32 0, align 4
@TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime = common dso_local global i8 0, align 1
@NID_X9_62_characteristic_two_field = common dso_local global i32 0, align 4
@TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @tls1_check_pkey_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_check_pkey_comp(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @EVP_PKEY_id(i32* %11)
  %13 = load i64, i64* @EVP_PKEY_EC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %84

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @EVP_PKEY_get0_EC_KEY(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @EC_KEY_get0_group(i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @EC_KEY_get_conv_form(i32* %21)
  %23 = load i64, i64* @POINT_CONVERSION_UNCOMPRESSED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i8, i8* @TLSEXT_ECPOINTFORMAT_uncompressed, align 1
  store i8 %26, i8* %8, align 1
  br label %51

27:                                               ; preds = %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i64 @SSL_IS_TLS13(%struct.TYPE_6__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %84

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @EC_GROUP_method_of(i32* %33)
  %35 = call i32 @EC_METHOD_get_field_type(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @NID_X9_62_prime_field, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i8, i8* @TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime, align 1
  store i8 %40, i8* %8, align 1
  br label %49

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @NID_X9_62_characteristic_two_field, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8, i8* @TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2, align 1
  store i8 %46, i8* %8, align 1
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %84

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %84

58:                                               ; preds = %51
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %84

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %59

83:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %78, %57, %47, %31, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i64 @EC_KEY_get_conv_form(i32*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_6__*) #1

declare dso_local i32 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
