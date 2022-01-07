; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_eckey_type2param.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_eckey_type2param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@EC_F_ECKEY_TYPE2PARAM = common dso_local global i32 0, align 4
@EC_R_DECODE_ERROR = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*)* @eckey_type2param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eckey_type2param(i32 %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %8, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32* @d2i_ECParameters(i32* null, i8** %9, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load i32, i32* @EC_F_ECKEY_TYPE2PARAM, align 4
  %29 = load i32, i32* @EC_R_DECODE_ERROR, align 4
  %30 = call i32 @ECerr(i32 %28, i32 %29)
  br label %71

31:                                               ; preds = %15
  br label %69

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @V_ASN1_OBJECT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = call i32* (...) @EC_KEY_new()
  store i32* %39, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @EC_F_ECKEY_TYPE2PARAM, align 4
  %43 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %44 = call i32 @ECerr(i32 %42, i32 %43)
  br label %71

45:                                               ; preds = %36
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @OBJ_obj2nid(i32* %46)
  %48 = call i32* @EC_GROUP_new_by_curve_name(i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %71

52:                                               ; preds = %45
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  %55 = call i32 @EC_GROUP_set_asn1_flag(i32* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @EC_KEY_set_group(i32* %56, i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %71

61:                                               ; preds = %52
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @EC_GROUP_free(i32* %62)
  br label %68

64:                                               ; preds = %32
  %65 = load i32, i32* @EC_F_ECKEY_TYPE2PARAM, align 4
  %66 = load i32, i32* @EC_R_DECODE_ERROR, align 4
  %67 = call i32 @ECerr(i32 %65, i32 %66)
  br label %71

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i32*, i32** %6, align 8
  store i32* %70, i32** %3, align 8
  br label %76

71:                                               ; preds = %64, %60, %51, %41, %27
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @EC_KEY_free(i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @EC_GROUP_free(i32* %74)
  store i32* null, i32** %3, align 8
  br label %76

76:                                               ; preds = %71, %69
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32* @d2i_ECParameters(i32*, i8**, i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @EC_KEY_new(...) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @EC_GROUP_set_asn1_flag(i32*, i32) #1

declare dso_local i64 @EC_KEY_set_group(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
