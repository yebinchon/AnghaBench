; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_memjrnlRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_memjrnlRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i64 }

@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64)* @memjrnlRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memjrnlRead(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  store i32 %33, i32* %5, align 4
  br label %170

34:                                               ; preds = %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i1 [ true, %34 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %56, %46
  store i64 0, i64* %15, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %14, align 8
  br label %63

63:                                               ; preds = %83, %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %65 = call i64 @ALWAYS(%struct.TYPE_9__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i64, i64* %15, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* %9, align 8
  %74 = icmp sle i64 %72, %73
  br label %75

75:                                               ; preds = %67, %63
  %76 = phi i1 [ false, %63 ], [ %74, %67 ]
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %15, align 8
  br label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %14, align 8
  br label %63

87:                                               ; preds = %75
  br label %97

88:                                               ; preds = %56
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %14, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %94 = icmp ne %struct.TYPE_9__* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  br label %97

97:                                               ; preds = %88, %87
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = srem i64 %98, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %149, %97
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %107, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %115, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @MIN(i32 %112, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @memcpy(i32* %121, i32* %128, i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %11, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %104
  %139 = load i32, i32* %12, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %14, align 8
  %145 = icmp ne %struct.TYPE_9__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = icmp sgt i32 %147, 0
  br label %149

149:                                              ; preds = %146, %141, %138
  %150 = phi i1 [ false, %141 ], [ false, %138 ], [ %148, %146 ]
  br i1 %150, label %104, label %151

151:                                              ; preds = %149
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %153 = icmp ne %struct.TYPE_9__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i64, i64* %9, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %155, %157
  br label %160

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %154
  %161 = phi i64 [ %158, %154 ], [ 0, %159 ]
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i64 %161, i64* %164, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %168, align 8
  %169 = load i32, i32* @SQLITE_OK, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %160, %32
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_9__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
