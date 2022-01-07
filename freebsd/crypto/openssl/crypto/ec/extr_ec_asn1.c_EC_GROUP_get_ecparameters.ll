; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_ecparameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_ecparameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32*, i32*, i32, i32 }

@EC_F_EC_GROUP_GET_ECPARAMETERS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_GENERATOR = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @EC_GROUP_get_ecparameters(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = call %struct.TYPE_6__* (...) @ECPARAMETERS_new()
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %19 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %20 = call i32 @ECerr(i32 %18, i32 %19)
  br label %142

21:                                               ; preds = %14
  br label %24

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %7, align 8
  br label %24

24:                                               ; preds = %22, %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 1, i64* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ec_asn1_group2fieldid(i32* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %35 = load i32, i32* @ERR_R_EC_LIB, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  br label %142

37:                                               ; preds = %24
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ec_asn1_group2curve(i32* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %46 = load i32, i32* @ERR_R_EC_LIB, align 4
  %47 = call i32 @ECerr(i32 %45, i32 %46)
  br label %142

48:                                               ; preds = %37
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @EC_GROUP_get0_generator(i32* %49)
  store i32* %50, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %54 = load i32, i32* @EC_R_UNDEFINED_GENERATOR, align 4
  %55 = call i32 @ECerr(i32 %53, i32 %54)
  br label %142

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @EC_GROUP_get_point_conversion_form(i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @EC_POINT_point2buf(i32* %59, i32* %60, i32 %61, i8** %9, i32* null)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %67 = load i32, i32* @ERR_R_EC_LIB, align 4
  %68 = call i32 @ECerr(i32 %66, i32 %67)
  br label %142

69:                                               ; preds = %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = call i32* (...) @ASN1_OCTET_STRING_new()
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = icmp eq i32* %75, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @OPENSSL_free(i8* %80)
  %82 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %83 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %84 = call i32 @ECerr(i32 %82, i32 %83)
  br label %142

85:                                               ; preds = %74, %69
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @ASN1_STRING_set0(i32* %88, i8* %89, i64 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32* @EC_GROUP_get0_order(i32* %92)
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %98 = load i32, i32* @ERR_R_EC_LIB, align 4
  %99 = call i32 @ECerr(i32 %97, i32 %98)
  br label %142

100:                                              ; preds = %85
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i8* @BN_to_ASN1_INTEGER(i32* %101, i32* %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %115 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %116 = call i32 @ECerr(i32 %114, i32 %115)
  br label %142

117:                                              ; preds = %100
  %118 = load i32*, i32** %4, align 8
  %119 = call i32* @EC_GROUP_get0_cofactor(i32* %118)
  store i32* %119, i32** %8, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %117
  %123 = load i32*, i32** %8, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i8* @BN_to_ASN1_INTEGER(i32* %123, i32* %126)
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %122
  %136 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %137 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %138 = call i32 @ECerr(i32 %136, i32 %137)
  br label %142

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %117
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %141, %struct.TYPE_6__** %3, align 8
  br label %149

142:                                              ; preds = %135, %113, %96, %79, %65, %52, %44, %33, %17
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = icmp eq %struct.TYPE_6__* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = call i32 @ECPARAMETERS_free(%struct.TYPE_6__* %146)
  br label %148

148:                                              ; preds = %145, %142
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %149

149:                                              ; preds = %148, %140
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %150
}

declare dso_local %struct.TYPE_6__* @ECPARAMETERS_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ec_asn1_group2fieldid(i32*, i32) #1

declare dso_local i32 @ec_asn1_group2curve(i32*, i32) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32 @EC_GROUP_get_point_conversion_form(i32*) #1

declare dso_local i64 @EC_POINT_point2buf(i32*, i32*, i32, i8**, i32*) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_set0(i32*, i8*, i64) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i8* @BN_to_ASN1_INTEGER(i32*, i32*) #1

declare dso_local i32* @EC_GROUP_get0_cofactor(i32*) #1

declare dso_local i32 @ECPARAMETERS_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
