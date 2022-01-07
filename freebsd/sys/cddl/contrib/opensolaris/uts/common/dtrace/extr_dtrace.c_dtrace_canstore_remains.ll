; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_canstore_remains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_canstore_remains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i64, %struct.TYPE_13__* }

@DTRACE_DYNHASH_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @dtrace_canstore_remains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_canstore_remains(i64 %0, i64 %1, i64* %2, %struct.TYPE_12__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @DTRACE_INRANGE(i64 %16, i64 %17, %struct.TYPE_13__* %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DTRACE_RANGE_REMAIN(i64* %27, i64 %28, %struct.TYPE_13__* %31, i64 %34)
  store i32 1, i32* %6, align 4
  br label %144

36:                                               ; preds = %5
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @DTRACE_INRANGE(i64 %37, i64 %38, %struct.TYPE_13__* %42, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %117

49:                                               ; preds = %36
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %12, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = ptrtoint %struct.TYPE_13__* %54 to i64
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = add i64 %55, %60
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %144

66:                                               ; preds = %49
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %13, align 8
  %69 = sub i64 %67, %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = urem i64 %69, %72
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ult i64 %74, 16
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %144

77:                                               ; preds = %66
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %78, %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %144

86:                                               ; preds = %77
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %14, align 8
  %89 = sub i64 %87, %88
  %90 = inttoptr i64 %89 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %15, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DTRACE_DYNHASH_FREE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %144

97:                                               ; preds = %86
  %98 = load i64, i64* %14, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = add i64 16, %105
  %107 = icmp ult i64 %98, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %144

109:                                              ; preds = %97
  %110 = load i64*, i64** %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @DTRACE_RANGE_REMAIN(i64* %110, i64 %111, %struct.TYPE_13__* %112, i64 %115)
  store i32 1, i32* %6, align 4
  br label %144

117:                                              ; preds = %36
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @dtrace_canstore_statvar(i64 %118, i64 %119, i64* %120, i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  store i32 1, i32* %6, align 4
  br label %144

130:                                              ; preds = %117
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64*, i64** %9, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @dtrace_canstore_statvar(i64 %131, i64 %132, i64* %133, i32 %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  store i32 1, i32* %6, align 4
  br label %144

143:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %142, %129, %109, %108, %96, %85, %76, %65, %26
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i64 @DTRACE_INRANGE(i64, i64, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @DTRACE_RANGE_REMAIN(i64*, i64, %struct.TYPE_13__*, i64) #1

declare dso_local i64 @dtrace_canstore_statvar(i64, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
