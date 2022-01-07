; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_space_written.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_space_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64 }

@FTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_space_written(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @dsl_pool_config_held(i32* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i64*, i64** %8, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %34)
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, %37
  store i64 %40, i64* %38, align 8
  %41 = load i64*, i64** %9, align 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i64*, i64** %10, align 8
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %57)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %60
  store i64 %63, i64* %61, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %64)
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %67
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %149, %5
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %150

80:                                               ; preds = %74
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %14, align 8
  br label %97

88:                                               ; preds = %80
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* @FTAG, align 4
  %92 = call i32 @dsl_dataset_hold_obj(i32* %89, i64 %90, i32 %91, %struct.TYPE_10__** %14)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %150

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %86
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %99 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %98)
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %102)
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = call i32 @dsl_deadlist_space(i32* %109, i64* %15, i64* %16, i64* %17)
  br label %119

111:                                              ; preds = %97
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dsl_deadlist_space_range(i32* %113, i32 0, i64 %117, i64* %15, i64* %16, i64* %17)
  br label %119

119:                                              ; preds = %111, %107
  %120 = load i64, i64* %15, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %120
  store i64 %123, i64* %121, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %124
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i64*, i64** %10, align 8
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %128
  store i64 %131, i64* %129, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %133 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__* %132)
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %12, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %138 = icmp ne %struct.TYPE_10__* %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %119
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %141 = load i32, i32* @FTAG, align 4
  %142 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %119
  %144 = load i64, i64* %12, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @EINVAL, align 4
  %148 = call i32 @SET_ERROR(i32 %147)
  store i32 %148, i32* %11, align 4
  br label %150

149:                                              ; preds = %143
  br label %74

150:                                              ; preds = %146, %95, %74
  %151 = load i32, i32* %11, align 4
  ret i32 %151
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_10__*) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i64, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @dsl_deadlist_space(i32*, i64*, i64*, i64*) #1

declare dso_local i32 @dsl_deadlist_space_range(i32*, i32, i64, i64*, i64*, i64*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
