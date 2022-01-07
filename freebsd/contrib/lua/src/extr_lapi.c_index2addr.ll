; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lapi.c_index2addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lapi.c_index2addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"unacceptable index\00", align 1
@NONVALIDVALUE = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@MAXUPVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"upvalue index too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32)* @index2addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @index2addr(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = ptrtoint i32* %26 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = icmp sle i64 %23, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @api_check(%struct.TYPE_9__* %21, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp uge i32* %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i32*, i32** @NONVALIDVALUE, align 8
  store i32* %44, i32** %3, align 8
  br label %129

45:                                               ; preds = %14
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %3, align 8
  br label %129

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ispseudo(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 0, %56
  %58 = sext i32 %57 to i64
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = ptrtoint i32* %61 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = icmp sle i64 %58, %69
  br label %71

71:                                               ; preds = %55, %51
  %72 = phi i1 [ false, %51 ], [ %70, %55 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @api_check(%struct.TYPE_9__* %52, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %3, align 8
  br label %129

81:                                               ; preds = %47
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = call %struct.TYPE_12__* @G(%struct.TYPE_9__* %86)
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32* %88, i32** %3, align 8
  br label %129

89:                                               ; preds = %81
  %90 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MAXUPVAL, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp sle i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @api_check(%struct.TYPE_9__* %93, i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @ttislcf(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i32*, i32** @NONVALIDVALUE, align 8
  store i32* %106, i32** %3, align 8
  br label %129

107:                                              ; preds = %89
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call %struct.TYPE_11__* @clCvalue(i32* %110)
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %8, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sle i32 %112, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  br label %127

125:                                              ; preds = %107
  %126 = load i32*, i32** @NONVALIDVALUE, align 8
  br label %127

127:                                              ; preds = %125, %117
  %128 = phi i32* [ %124, %117 ], [ %126, %125 ]
  store i32* %128, i32** %3, align 8
  br label %129

129:                                              ; preds = %127, %105, %85, %71, %45, %43
  %130 = load i32*, i32** %3, align 8
  ret i32* %130
}

declare dso_local i32 @api_check(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @ispseudo(i32) #1

declare dso_local %struct.TYPE_12__* @G(%struct.TYPE_9__*) #1

declare dso_local i64 @ttislcf(i32*) #1

declare dso_local %struct.TYPE_11__* @clCvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
