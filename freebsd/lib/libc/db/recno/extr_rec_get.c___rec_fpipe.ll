; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_fpipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_fpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i32*, i64 }

@RET_ERROR = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i64 0, align 8
@R_EOF = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_fpipe(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @reallocf(i32* %23, i64 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i32* %27, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @RET_ERROR, align 4
  store i32 %37, i32* %3, align 4
  br label %132

38:                                               ; preds = %19
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32* %49, i32** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %119, %45
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %10, align 8
  br label %70

70:                                               ; preds = %110, %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @getc(i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @EOF, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %77, %70
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EOF, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @memset(i32* %92, i32 %95, i64 %96)
  br label %98

98:                                               ; preds = %91, %88
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @__rec_iput(%struct.TYPE_10__* %99, i64 %100, %struct.TYPE_9__* %6, i32 0)
  %102 = load i64, i64* @RET_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @RET_ERROR, align 4
  store i32 %105, i32* %3, align 4
  br label %132

106:                                              ; preds = %98
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %114

109:                                              ; preds = %77
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %10, align 8
  store i32 %111, i32* %112, align 4
  br label %70

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @EOF, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %120

119:                                              ; preds = %114
  br label %58

120:                                              ; preds = %118, %58
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %5, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = load i32, i32* @R_EOF, align 4
  %127 = call i32 @F_SET(%struct.TYPE_10__* %125, i32 %126)
  %128 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %128, i32* %3, align 4
  br label %132

129:                                              ; preds = %120
  %130 = load i64, i64* @RET_SUCCESS, align 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %124, %104, %36
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32* @reallocf(i32*, i64) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @__rec_iput(%struct.TYPE_10__*, i64, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
