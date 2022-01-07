; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_bigkey.c___find_bigpair.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_bigkey.c___find_bigpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@PARTIAL_KEY = common dso_local global i32 0, align 4
@hash_collisions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__find_bigpair(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %12, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i8*, i8** %10, align 8
  store i8* %25, i8** %16, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %28, %33
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %90, %5
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PARTIAL_KEY, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %39, %35
  %49 = phi i1 [ false, %35 ], [ %47, %39 ]
  br i1 %49, label %50, label %100

50:                                               ; preds = %48
  %51 = load i8*, i8** %13, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  %59 = load i8*, i8** %16, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @memcmp(i8* %58, i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 -2, i32* %6, align 4
  br label %120

64:                                               ; preds = %50
  %65 = load i32, i32* %15, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %16, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = call %struct.TYPE_9__* @__get_buf(%struct.TYPE_8__* %72, i32 %78, %struct.TYPE_9__* %79, i32 0)
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %8, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %64
  store i32 -3, i32* %6, align 4
  br label %120

84:                                               ; preds = %64
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = bitcast i8* %88 to i32*
  store i32* %89, i32** %12, align 8
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %93, %98
  store i32 %99, i32* %15, align 4
  br label %35

100:                                              ; preds = %48
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %117, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %13, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %105, i64 %111
  %113 = load i8*, i8** %16, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i64 @memcmp(i8* %112, i8* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104, %100
  store i32 -2, i32* %6, align 4
  br label %120

118:                                              ; preds = %104
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %117, %83, %63
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @__get_buf(%struct.TYPE_8__*, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
