; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_check_basic_constraints.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_check_basic_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@asn1_oid_id_x509_ce_basicConstraints = common dso_local global i32 0, align 4
@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"basicConstraints missing from CA certifiacte %s\00", align 1
@HX509_PARENT_IS_CA = common dso_local global i32 0, align 4
@HX509_PARENT_NOT_CA = common dso_local global i32 0, align 4
@HX509_CA_PATH_TOO_DEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*, i32, i64)* @check_basic_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_basic_constraints(i32 %0, %struct.TYPE_15__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = call i32 @_hx509_cert_get_version(%struct.TYPE_15__* %16)
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = call %struct.TYPE_14__* @find_extension(%struct.TYPE_15__* %21, i32* @asn1_oid_id_x509_ce_basicConstraints, i64* %14)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %11, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %44 [
    i32 128, label %27
    i32 129, label %27
    i32 130, label %28
  ]

27:                                               ; preds = %25, %25
  store i32 0, i32* %5, align 4
  br label %104

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = call i32 @_hx509_unparse_Name(i32* %31, i8** %15)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = call i32 @hx509_set_error_string(i32 %37, i32 0, i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  store i32 %43, i32* %5, align 4
  br label %104

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @decode_BasicConstraints(i32 %49, i32 %53, %struct.TYPE_16__* %10, i64* %12)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %5, align 4
  br label %104

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %101 [
    i32 128, label %61
    i32 129, label %73
    i32 130, label %74
  ]

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @HX509_PARENT_IS_CA, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %70, %65, %61
  br label %101

73:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %101

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78, %74
  %84 = load i32, i32* @HX509_PARENT_NOT_CA, align 4
  store i32 %84, i32* %13, align 4
  br label %100

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i64, i64* %9, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @HX509_CA_PATH_TOO_DEEP, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %96, %89
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %59, %100, %73, %72
  %102 = call i32 @free_BasicConstraints(%struct.TYPE_16__* %10)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %57, %28, %27, %19
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @_hx509_cert_get_version(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @find_extension(%struct.TYPE_15__*, i32*, i64*) #1

declare dso_local i32 @_hx509_unparse_Name(i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @decode_BasicConstraints(i32, i32, %struct.TYPE_16__*, i64*) #1

declare dso_local i32 @free_BasicConstraints(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
