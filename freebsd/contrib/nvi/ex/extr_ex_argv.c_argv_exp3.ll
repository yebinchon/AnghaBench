; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_exp3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_exp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__** }

@cnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argv_exp3(i32* %0, %struct.TYPE_9__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_8__* @EXP(i32* %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  br label %17

17:                                               ; preds = %125, %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %130

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @cmdskip(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %37

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  br label %21

37:                                               ; preds = %30, %21
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %130

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  store i32* %42, i32** %13, align 8
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %69, %41
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @IS_ESCAPE(i32* %49, %struct.TYPE_9__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %8, align 8
  br label %68

62:                                               ; preds = %54, %46
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @cmdskip(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %76

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %43

76:                                               ; preds = %66, %43
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @argv_alloc(i32* %77, i64 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 %83, i64* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %94, i64 %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %14, align 8
  br label %101

101:                                              ; preds = %115, %76
  %102 = load i64, i64* %10, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @IS_ESCAPE(i32* %105, %struct.TYPE_9__* %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %13, align 8
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %10, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %13, align 8
  %120 = load i32, i32* %118, align 4
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %14, align 8
  store i32 %120, i32* %121, align 4
  br label %101

123:                                              ; preds = %101
  %124 = load i32*, i32** %14, align 8
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %123
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %17

130:                                              ; preds = %40, %17
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  store %struct.TYPE_7__** %133, %struct.TYPE_7__*** %135, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @EXP(i32*) #1

declare dso_local i64 @cmdskip(i32) #1

declare dso_local i64 @IS_ESCAPE(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @argv_alloc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
