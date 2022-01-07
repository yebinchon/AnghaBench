; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_relative.c_vs_colpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_relative.c_vs_colpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@O_LIST = common dso_local global i32 0, align 4
@O_LEFTRIGHT = common dso_local global i32 0, align 4
@TAB_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vs_colpos(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @db_get(%struct.TYPE_5__* %19, i32 %20, i32 0, i32** %17, i64* %11)
  %22 = load i32*, i32** %17, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %3
  store i64 0, i64* %4, align 8
  br label %137

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @O_LIST, align 4
  %31 = call i32 @O_ISSET(%struct.TYPE_5__* %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load i32, i32* @O_LEFTRIGHT, align 4
  %34 = call i32 @O_ISSET(%struct.TYPE_5__* %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = udiv i64 %35, %38
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = urem i64 %43, %42
  store i64 %44, i64* %7, align 8
  store i64 0, i64* %13, align 8
  %45 = load i32*, i32** %17, align 8
  store i32* %45, i32** %18, align 8
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %90, %28
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %12, align 8
  %50 = icmp ne i64 %48, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = load i64, i64* %13, align 8
  %65 = call i64 @CHLEN(i64 %64)
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %10, align 8
  br label %52

71:                                               ; preds = %61
  %72 = load i64, i64* %10, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %137

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i64 0, i64* %13, align 8
  br label %90

84:                                               ; preds = %80, %77
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %84, %83
  br label %47

91:                                               ; preds = %47
  %92 = load i64, i64* %13, align 8
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %132, %91
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %10, align 8
  %96 = icmp ne i64 %94, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %93
  %98 = load i64, i64* %9, align 8
  %99 = call i64 @CHLEN(i64 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp uge i64 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %97
  %106 = load i32*, i32** %18, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %105
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = sub i64 %117, 1
  %119 = icmp ult i64 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* %12, align 8
  br label %125

122:                                              ; preds = %115
  %123 = load i64, i64* %11, align 8
  %124 = sub i64 %123, 1
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi i64 [ %121, %120 ], [ %124, %122 ]
  br label %130

127:                                              ; preds = %105
  %128 = load i64, i64* %12, align 8
  %129 = sub i64 %128, 1
  br label %130

130:                                              ; preds = %127, %125
  %131 = phi i64 [ %126, %125 ], [ %129, %127 ]
  store i64 %131, i64* %4, align 8
  br label %137

132:                                              ; preds = %97
  %133 = load i32, i32* @TAB_RESET, align 4
  br label %93

134:                                              ; preds = %93
  %135 = load i64, i64* %11, align 8
  %136 = sub i64 %135, 1
  store i64 %136, i64* %4, align 8
  br label %137

137:                                              ; preds = %134, %130, %74, %27
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local i32 @db_get(%struct.TYPE_5__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @O_ISSET(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @CHLEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
