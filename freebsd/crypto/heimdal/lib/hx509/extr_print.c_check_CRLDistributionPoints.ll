; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_CRLDistributionPoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_print.c_check_CRLDistributionPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cert_status = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32* }

@HX509_VALIDATE_F_VALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Decoding CRL Distribution Points failed: %d\0A\00", align 1
@HX509_VALIDATE_F_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CRL Distribution Points:\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to parse CRL Distribution Point Name: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Fullname:\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unknown nameRelativeToCRLIssuer\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unknown DistributionPointName\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cert_status*, i32, %struct.TYPE_20__*)* @check_CRLDistributionPoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_CRLDistributionPoints(i32 %0, %struct.cert_status* %1, i32 %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cert_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cert_status* %1, %struct.cert_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = call i32 @check_Null(i32 %19, %struct.cert_status* %20, i32 %21, %struct.TYPE_20__* %22)
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @decode_CRLDistributionPoints(i32 %27, i32 %31, %struct.TYPE_22__* %10, i64* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %36, i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 1, i32* %5, align 4
  br label %136

40:                                               ; preds = %4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %43 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %41, i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %44

44:                                               ; preds = %129, %40
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %132

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = icmp ne %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %128

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %15, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @decode_DistributionPointName(i32 %66, i32 %69, %struct.TYPE_21__* %14, i32* null)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %129

78:                                               ; preds = %57
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %122 [
    i32 129, label %81
    i32 128, label %118
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %84 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %82, i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %85

85:                                               ; preds = %114, %81
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %86, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %18, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = call i32 @hx509_general_name_unparse(i32* %99, i8** %17)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load i8*, i8** %17, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %109 = load i8*, i8** %17, align 8
  %110 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %107, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %109)
  %111 = load i8*, i8** %17, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %106, %103, %92
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %16, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %16, align 8
  br label %85

117:                                              ; preds = %85
  br label %126

118:                                              ; preds = %78
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @HX509_VALIDATE_F_VERBOSE, align 4
  %121 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %119, i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %126

122:                                              ; preds = %78
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @HX509_VALIDATE_F_VALIDATE, align 4
  %125 = call i32 (i32, i32, i8*, ...) @validate_print(i32 %123, i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %118, %117
  %127 = call i32 @free_DistributionPointName(%struct.TYPE_21__* %14)
  br label %128

128:                                              ; preds = %126, %49
  br label %129

129:                                              ; preds = %128, %73
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %44

132:                                              ; preds = %44
  %133 = call i32 @free_CRLDistributionPoints(%struct.TYPE_22__* %10)
  %134 = load %struct.cert_status*, %struct.cert_status** %7, align 8
  %135 = getelementptr inbounds %struct.cert_status, %struct.cert_status* %134, i32 0, i32 0
  store i32 1, i32* %135, align 4
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %35
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @check_Null(i32, %struct.cert_status*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @decode_CRLDistributionPoints(i32, i32, %struct.TYPE_22__*, i64*) #1

declare dso_local i32 @validate_print(i32, i32, i8*, ...) #1

declare dso_local i32 @decode_DistributionPointName(i32, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @hx509_general_name_unparse(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_DistributionPointName(%struct.TYPE_21__*) #1

declare dso_local i32 @free_CRLDistributionPoints(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
