; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_analysisLoader.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_analysisLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, %struct.TYPE_10__*, i32*, i64, i32* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@TF_HasStat1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @analysisLoader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analysisLoader(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8**, i8*** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @UNUSED_PARAMETER2(i8** %23, i32 %24)
  %26 = load i8**, i8*** %8, align 8
  %27 = icmp eq i8** %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %4
  %29 = load i8**, i8*** %8, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8**, i8*** %8, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %28, %4
  store i32 0, i32* %5, align 4
  br label %143

39:                                               ; preds = %33
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8**, i8*** %8, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_10__* @sqlite3FindTable(i32 %42, i8* %45, i32 %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %12, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = icmp eq %struct.TYPE_10__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %143

53:                                               ; preds = %39
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  br label %83

59:                                               ; preds = %53
  %60 = load i8**, i8*** %8, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @sqlite3_stricmp(i8* %62, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = call %struct.TYPE_11__* @sqlite3PrimaryKeyIndex(%struct.TYPE_10__* %69)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %11, align 8
  br label %82

71:                                               ; preds = %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8**, i8*** %8, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_11__* @sqlite3FindIndex(i32 %74, i8* %77, i32 %80)
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %11, align 8
  br label %82

82:                                               ; preds = %71, %68
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i8**, i8*** %8, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %13, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %124

89:                                               ; preds = %83
  store i32* null, i32** %14, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = call i32 @decodeIntArray(i8* %96, i32 %97, i32* %98, i32* %101, %struct.TYPE_11__* %102)
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %89
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @TF_HasStat1, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %110, %89
  br label %142

124:                                              ; preds = %83
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  store i32 %127, i32* %128, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = call i32 @decodeIntArray(i8* %129, i32 1, i32* null, i32* %131, %struct.TYPE_11__* %16)
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @TF_HasStat1, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %124, %123
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %52, %38
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER2(i8**, i32) #1

declare dso_local %struct.TYPE_10__* @sqlite3FindTable(i32, i8*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @sqlite3PrimaryKeyIndex(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @sqlite3FindIndex(i32, i8*, i32) #1

declare dso_local i32 @decodeIntArray(i8*, i32, i32*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
