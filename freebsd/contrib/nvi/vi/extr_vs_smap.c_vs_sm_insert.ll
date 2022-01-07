; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32, i32)* }

@HMAP = common dso_local global %struct.TYPE_16__* null, align 8
@TMAP = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @vs_sm_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_sm_insert(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @HMAP, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** @HMAP, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %6, align 8
  br label %15

15:                                               ; preds = %22, %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 1
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %6, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @vs_screens(%struct.TYPE_17__* %26, i64 %27, i32* null)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @HANDLE_WEIRDNESS(i64 %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @TMAP, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = ptrtoint %struct.TYPE_16__* %31 to i64
  %34 = ptrtoint %struct.TYPE_16__* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 24
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_17__*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @HMAP, align 8
  %52 = ptrtoint %struct.TYPE_16__* %50 to i64
  %53 = ptrtoint %struct.TYPE_16__* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 24
  %56 = trunc i64 %55 to i32
  %57 = call i32 %48(%struct.TYPE_17__* %49, i32 %56, i32 0)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @vs_insertln(%struct.TYPE_17__* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %125

63:                                               ; preds = %43
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** @TMAP, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = ptrtoint %struct.TYPE_16__* %68 to i64
  %71 = ptrtoint %struct.TYPE_16__* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 24
  %74 = load i64, i64* %8, align 8
  %75 = sub i64 %73, %74
  %76 = add i64 %75, 1
  %77 = mul i64 %76, 24
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memmove(%struct.TYPE_16__* %66, %struct.TYPE_16__* %67, i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %81
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %7, align 8
  br label %83

83:                                               ; preds = %92, %63
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @TMAP, align 8
  %86 = icmp ule %struct.TYPE_16__* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 1
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %7, align 8
  br label %83

95:                                               ; preds = %83
  store i64 1, i64* %9, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %7, align 8
  br label %97

97:                                               ; preds = %119, %95
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp ule i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = call i32 @SMAP_FLUSH(%struct.TYPE_16__* %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = call i64 @vs_line(%struct.TYPE_17__* %113, %struct.TYPE_16__* %114, i32* null, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %125

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 1
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %7, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %97

124:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %117, %62
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @vs_screens(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i32 @HANDLE_WEIRDNESS(i64) #1

declare dso_local i64 @vs_insertln(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @memmove(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @SMAP_FLUSH(%struct.TYPE_16__*) #1

declare dso_local i64 @vs_line(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
