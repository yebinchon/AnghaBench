; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_match_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_match_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_20__, i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }

@HX509_RANGE = common dso_local global i32 0, align 4
@choice_GeneralName_directoryName = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_19__*, i32*)* @match_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_tree(%struct.TYPE_28__* %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %99, %3
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %15
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @HX509_RANGE, align 4
  store i32 %42, i32* %4, align 4
  br label %115

43:                                               ; preds = %31, %21
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @choice_GeneralName_directoryName, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %43
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = call i32 @subject_null_p(%struct.TYPE_19__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %55
  %60 = call i32 @memset(%struct.TYPE_29__* %13, i32 0, i32 16)
  %61 = load i64, i64* @choice_GeneralName_directoryName, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = call i32 @match_general_name(%struct.TYPE_20__* %87, %struct.TYPE_29__* %13, i32* %8)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %59, %55, %43
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = call i32 @match_alt_name(%struct.TYPE_20__* %96, %struct.TYPE_19__* %97, i32* %10, i32* %9)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %15

102:                                              ; preds = %15
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108, %105
  %112 = load i32*, i32** %7, align 8
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %108, %102
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %41
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @subject_null_p(%struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @match_general_name(%struct.TYPE_20__*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @match_alt_name(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
