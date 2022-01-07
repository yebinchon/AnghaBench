; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_getAndInitPage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_getAndInitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_11__**, %struct.TYPE_11__* }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, %struct.TYPE_11__**, %struct.TYPE_13__*, i32)* @getAndInitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAndInitPage(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__** %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_held(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = icmp eq %struct.TYPE_11__** %22, %24
  br label %26

26:                                               ; preds = %21, %5
  %27 = phi i1 [ true, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = icmp eq %struct.TYPE_13__* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ true, %26 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = icmp eq %struct.TYPE_13__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %47, 0
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ true, %38 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = call i32 @btreePagecount(%struct.TYPE_12__* %54)
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %58, i32* %12, align 4
  br label %136

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @sqlite3PagerGet(i32 %62, i32 %63, i32** %13, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %136

69:                                               ; preds = %59
  %70 = load i32*, i32** %13, align 8
  %71 = call i64 @sqlite3PagerGetExtra(i32* %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_11__*
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = call i32 @btreePageFromDbPage(i32* %80, i32 %81, %struct.TYPE_12__* %82)
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = call i32 @btreeInitPage(%struct.TYPE_11__* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %132

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %69
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = call i64 @sqlite3PagerGetData(i32* %105)
  %107 = icmp eq i64 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %111 = icmp ne %struct.TYPE_13__* %110, null
  br i1 %111, label %112, label %130

112:                                              ; preds = %92
  %113 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %127, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118, %112
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @SQLITE_CORRUPT_PGNO(i32 %128)
  store i32 %129, i32* %12, align 4
  br label %132

130:                                              ; preds = %118, %92
  %131 = load i32, i32* @SQLITE_OK, align 4
  store i32 %131, i32* %6, align 4
  br label %170

132:                                              ; preds = %127, %90
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = call i32 @releasePage(%struct.TYPE_11__* %134)
  br label %136

136:                                              ; preds = %132, %68, %57
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = icmp ne %struct.TYPE_13__* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, -1
  store i64 %143, i64* %141, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %146, i64 %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %153, align 8
  br label %154

154:                                              ; preds = %139, %136
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @testcase(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @SQLITE_CORRUPT, align 4
  %164 = icmp eq i32 %162, %163
  br label %165

165:                                              ; preds = %161, %154
  %166 = phi i1 [ true, %154 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %165, %130
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @btreePagecount(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3PagerGet(i32, i32, i32**, i32) #1

declare dso_local i64 @sqlite3PagerGetExtra(i32*) #1

declare dso_local i32 @btreePageFromDbPage(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i32 @SQLITE_CORRUPT_PGNO(i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_11__*) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
