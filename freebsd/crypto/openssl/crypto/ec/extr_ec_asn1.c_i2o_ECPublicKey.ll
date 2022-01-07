; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_i2o_ECPublicKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_i2o_ECPublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EC_F_I2O_ECPUBLICKEY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_ECPublicKey(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @EC_F_I2O_ECPUBLICKEY, align 4
  %12 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %13 = call i32 @ECerr(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @EC_POINT_point2oct(i32 %17, i32 %20, i32 %23, i8* null, i64 0, i32* null)
  store i64 %24, i64* %6, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = icmp eq i8** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %14
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %27
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = call i8* @OPENSSL_malloc(i64 %38)
  %40 = load i8**, i8*** %5, align 8
  store i8* %39, i8** %40, align 8
  %41 = icmp eq i8* %39, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @EC_F_I2O_ECPUBLICKEY, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @ECerr(i32 %43, i32 %44)
  store i32 0, i32* %3, align 4
  br label %85

46:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @EC_POINT_point2oct(i32 %50, i32 %53, i32 %56, i8* %58, i64 %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* @EC_F_I2O_ECPUBLICKEY, align 4
  %64 = load i32, i32* @ERR_R_EC_LIB, align 4
  %65 = call i32 @ECerr(i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @OPENSSL_free(i8* %70)
  %72 = load i8**, i8*** %5, align 8
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %85

74:                                               ; preds = %47
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %78
  store i8* %81, i8** %79, align 8
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %73, %42, %30, %10
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @EC_POINT_point2oct(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
