; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxHashAdd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxHashAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*, i8*)* @idxHashAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxHashAdd(i32* %0, %struct.TYPE_6__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @STRLEN(i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @idxHashString(i8* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @STRLEN(i8* %22)
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %13, align 8
  br label %38

38:                                               ; preds = %58, %25
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @STRLEN(i8* %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @memcmp(i8* %51, i8* %52, i32 %53)
  %55 = icmp eq i64 0, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %132

57:                                               ; preds = %48, %41
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %13, align 8
  br label %38

62:                                               ; preds = %38
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 32, %65
  %67 = add i64 %66, 1
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = add i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = call %struct.TYPE_5__* @idxMalloc(i32* %63, i32 %72)
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %13, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %75 = icmp ne %struct.TYPE_5__* %74, null
  br i1 %75, label %76, label %131

76:                                               ; preds = %62
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 1
  %79 = bitcast %struct.TYPE_5__* %78 to i8*
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %76
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @memcpy(i8* %102, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %90, %76
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %109, i64 %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %119, i64 %121
  store %struct.TYPE_5__* %116, %struct.TYPE_5__** %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %130, align 8
  br label %131

131:                                              ; preds = %106, %62
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %56
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @idxHashString(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @idxMalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
