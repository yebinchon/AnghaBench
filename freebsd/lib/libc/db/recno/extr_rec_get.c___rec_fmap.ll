; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_fmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_get.c___rec_fmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, i32* }

@RET_ERROR = common dso_local global i32 0, align 4
@R_EOF = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_fmap(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32* @reallocf(i32* %24, i64 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i32, i32* @RET_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %135

39:                                               ; preds = %20
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %8, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %125, %46
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %128

71:                                               ; preds = %67
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp uge i32* %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i32, i32* @R_EOF, align 4
  %78 = call i32 @F_SET(%struct.TYPE_10__* %76, i32 %77)
  %79 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %79, i32* %3, align 4
  br label %135

80:                                               ; preds = %71
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %10, align 8
  br label %88

88:                                               ; preds = %98, %80
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ult i32* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i64, i64* %11, align 8
  %94 = icmp ugt i64 %93, 0
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i1 [ false, %88 ], [ %94, %92 ]
  br i1 %96, label %97, label %106

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %8, align 8
  %101 = load i32, i32* %99, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %11, align 8
  br label %88

106:                                              ; preds = %95
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @memset(i32* %110, i32 %113, i64 %114)
  br label %116

116:                                              ; preds = %109, %106
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i64 @__rec_iput(%struct.TYPE_10__* %117, i64 %118, %struct.TYPE_9__* %6, i32 0)
  %120 = load i64, i64* @RET_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @RET_ERROR, align 4
  store i32 %123, i32* %3, align 4
  br label %135

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %7, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %7, align 8
  br label %67

128:                                              ; preds = %67
  %129 = load i32*, i32** %8, align 8
  %130 = ptrtoint i32* %129 to i64
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* @RET_SUCCESS, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %128, %122, %75, %37
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32* @reallocf(i32*, i64) #1

declare dso_local i32 @F_SET(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @__rec_iput(%struct.TYPE_10__*, i64, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
