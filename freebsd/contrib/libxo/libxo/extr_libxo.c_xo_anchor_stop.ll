; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_anchor_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_anchor_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }

@XOIF_ANCHOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no start anchor\00", align 1
@XOIF_UNITS_PENDING = common dso_local global i32 0, align 4
@XO_MAX_ANCHOR_WIDTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"width over %u are not supported\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i8*, i64)* @xo_anchor_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_anchor_stop(%struct.TYPE_10__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i32, i32* @XOIF_ANCHOR, align 4
  %20 = call i32 @XOIF_ISSET(%struct.TYPE_10__* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = call i32 (%struct.TYPE_10__*, i8*, ...) @xo_failure(%struct.TYPE_10__* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %153

25:                                               ; preds = %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = load i32, i32* @XOIF_UNITS_PENDING, align 4
  %28 = call i32 @XOIF_CLEAR(%struct.TYPE_10__* %26, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @xo_find_width(%struct.TYPE_10__* %29, i32* %30, i8* %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %36, %25
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %150

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i64, i64* %9, align 8
  br label %64

61:                                               ; preds = %44
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 0, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i64 [ %60, %59 ], [ %63, %61 ]
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %150

74:                                               ; preds = %64
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @XO_MAX_ANCHOR_WIDTH, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = load i64, i64* @XO_MAX_ANCHOR_WIDTH, align 8
  %81 = call i32 (%struct.TYPE_10__*, i8*, ...) @xo_failure(%struct.TYPE_10__* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  br label %150

82:                                               ; preds = %74
  %83 = load i64, i64* %14, align 8
  %84 = call i8* @alloca(i64 %83)
  store i8* %84, i8** %15, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @memset(i8* %85, i8 signext 32, i64 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @xo_format_content(%struct.TYPE_10__* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* %89, i64 %90, i32* null, i32 0, i32 0)
  %92 = load i64, i64* %9, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %150

95:                                               ; preds = %82
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %12, align 8
  %105 = sub nsw i64 %103, %104
  store i64 %105, i64* %17, align 8
  %106 = load i64, i64* %17, align 8
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %150

109:                                              ; preds = %95
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %14, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i64, i64* %17, align 8
  %115 = call i8* @alloca(i64 %114)
  store i8* %115, i8** %15, align 8
  br label %116

116:                                              ; preds = %113, %109
  %117 = load i8*, i8** %15, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i64, i64* %17, align 8
  %124 = call i32 @memcpy(i8* %117, i64 %122, i64 %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i64, i64* %17, align 8
  %131 = add nsw i64 %129, %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add nsw i64 %134, %135
  %137 = inttoptr i64 %136 to i8*
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %11, align 8
  %140 = sub nsw i64 %138, %139
  %141 = call i32 @memmove(i64 %131, i8* %137, i64 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i8*, i8** %15, align 8
  %148 = load i64, i64* %17, align 8
  %149 = call i32 @memmove(i64 %146, i8* %147, i64 %148)
  br label %150

150:                                              ; preds = %116, %108, %94, %78, %73, %43
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = call i32 @xo_anchor_clear(%struct.TYPE_10__* %151)
  br label %153

153:                                              ; preds = %150, %22
  ret void
}

declare dso_local i32 @XOIF_ISSET(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @xo_failure(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @XOIF_CLEAR(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @xo_find_width(%struct.TYPE_10__*, i32*, i8*, i64) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @xo_format_content(%struct.TYPE_10__*, i8*, i32*, i8*, i64, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @memmove(i64, i8*, i64) #1

declare dso_local i32 @xo_anchor_clear(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
