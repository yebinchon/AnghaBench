; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_get_signing_algorithm_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_get_signing_algorithm_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64, i32 }

@LDNS_SIGN_HMACMD5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HMAC-MD5\00", align 1
@LDNS_SIGN_DSA_NSEC3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"NSEC3DSA\00", align 1
@LDNS_SIGN_RSASHA1_NSEC3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"NSEC3RSASHA1\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"RSASHA1_NSEC3\00", align 1
@LDNS_DH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@LDNS_ECC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ECC\00", align 1
@LDNS_INDIRECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"INDIRECT\00", align 1
@LDNS_PRIVATEDNS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"PRIVATEDNS\00", align 1
@LDNS_PRIVATEOID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"PRIVATEOID\00", align 1
@ldns_signing_algorithms = common dso_local global %struct.TYPE_3__* null, align 8
@LDNS_SIGN_ECC_GOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_get_signing_algorithm_by_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [10 x %struct.TYPE_3__], align 16
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* @LDNS_SIGN_HMACMD5, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %9, align 16
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %14, align 16
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* @LDNS_SIGN_DSA_NSEC3, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %17, align 16
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.1 to i32), i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i64 0, i64* %22, align 16
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* @LDNS_SIGN_RSASHA1_NSEC3, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %25, align 16
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 ptrtoint ([13 x i8]* @.str.2 to i32), i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 0, i64* %30, align 16
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @LDNS_SIGN_RSASHA1_NSEC3, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %33, align 16
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 ptrtoint ([14 x i8]* @.str.3 to i32), i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 0, i64* %38, align 16
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* @LDNS_DH, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %41, align 16
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.4 to i32), i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 0, i64* %46, align 16
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* @LDNS_ECC, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %49, align 16
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 ptrtoint ([4 x i8]* @.str.5 to i32), i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i64 0, i64* %54, align 16
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* @LDNS_INDIRECT, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %57, align 16
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.6 to i32), i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 0, i64* %62, align 16
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* @LDNS_PRIVATEDNS, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %65, align 16
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 ptrtoint ([11 x i8]* @.str.7 to i32), i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 0, i64* %70, align 16
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* @LDNS_PRIVATEOID, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %73, align 16
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 ptrtoint ([11 x i8]* @.str.8 to i32), i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i64 0, i64* %78, align 16
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 0, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 1
  %81 = bitcast %struct.TYPE_3__* %80 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %81, i8 0, i64 32, i1 false)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ldns_signing_algorithms, align 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %5, align 8
  br label %84

84:                                               ; preds = %100, %1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i64 @strcasecmp(i64 %92, i8* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %2, align 4
  br label %138

100:                                              ; preds = %89
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 1
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %5, align 8
  br label %84

103:                                              ; preds = %84
  %104 = getelementptr inbounds [10 x %struct.TYPE_3__], [10 x %struct.TYPE_3__]* %4, i64 0, i64 0
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %5, align 8
  br label %105

105:                                              ; preds = %121, %103
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i8*, i8** %3, align 8
  %115 = call i64 @strcasecmp(i64 %113, i8* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %2, align 4
  br label %138

121:                                              ; preds = %110
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 1
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %5, align 8
  br label %105

124:                                              ; preds = %105
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 @strtol(i8* %125, i8** %7, i32 10)
  store i32 %126, i32* %6, align 4
  %127 = load i8*, i8** %3, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %131, %124
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %135, %117, %96
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcasecmp(i64, i8*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
