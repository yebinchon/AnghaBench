; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_log_usechannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_log.c_isc_log_usechannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ISC_R_NOTFOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_log_usechannel(%struct.TYPE_17__* %0, i8* %1, %struct.TYPE_19__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %14 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = call i32 @VALID_CONFIG(%struct.TYPE_17__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %10, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = icmp eq %struct.TYPE_19__* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br label %35

35:                                               ; preds = %27, %4
  %36 = phi i1 [ true, %4 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @REQUIRE(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = icmp eq %struct.TYPE_16__* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br label %49

49:                                               ; preds = %41, %35
  %50 = phi i1 [ true, %35 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @REQUIRE(i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_18__* @ISC_LIST_HEAD(i32 %55)
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %11, align 8
  br label %57

57:                                               ; preds = %69, %49
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %59 = icmp ne %struct.TYPE_18__* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @strcmp(i8* %61, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %73

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %71 = load i32, i32* @link, align 4
  %72 = call %struct.TYPE_18__* @ISC_LIST_NEXT(%struct.TYPE_18__* %70, i32 %71)
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %11, align 8
  br label %57

73:                                               ; preds = %67, %57
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %75 = icmp eq %struct.TYPE_18__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i64, i64* @ISC_R_NOTFOUND, align 8
  store i64 %77, i64* %5, align 8
  br label %113

78:                                               ; preds = %73
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %80 = icmp ne %struct.TYPE_19__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = call i64 @assignchannel(%struct.TYPE_17__* %82, i32 %85, %struct.TYPE_16__* %86, %struct.TYPE_18__* %87)
  store i64 %88, i64* %12, align 8
  br label %111

89:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = call i64 @assignchannel(%struct.TYPE_17__* %97, i32 %98, %struct.TYPE_16__* %99, %struct.TYPE_18__* %100)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @ISC_R_SUCCESS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %110

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %90

110:                                              ; preds = %105, %90
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i64, i64* %12, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %111, %76
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_CONFIG(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @ISC_LIST_HEAD(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_18__* @ISC_LIST_NEXT(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @assignchannel(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
