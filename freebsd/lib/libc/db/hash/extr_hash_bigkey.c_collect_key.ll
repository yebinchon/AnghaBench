; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_bigkey.c_collect_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_bigkey.c_collect_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_11__ = type { i8*, i32 }

@FULL_KEY = common dso_local global i32 0, align 4
@FULL_KEY_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32*, i32)* @collect_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_key(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %16, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FULL_KEY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %5
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FULL_KEY_DATA, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41, %5
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %15, align 4
  %59 = call i64 @malloc(i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = icmp eq i8* %60, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %124

65:                                               ; preds = %57
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @__big_return(%struct.TYPE_10__* %66, %struct.TYPE_11__* %67, i32 1, i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %124

73:                                               ; preds = %65
  br label %98

74:                                               ; preds = %41
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call %struct.TYPE_11__* @__get_buf(%struct.TYPE_10__* %75, i32 %83, %struct.TYPE_11__* %84, i32 0)
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %12, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = icmp ne %struct.TYPE_11__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %74
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @collect_key(%struct.TYPE_10__* %89, %struct.TYPE_11__* %90, i32 %91, i32* %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %74
  store i32 -1, i32* %6, align 4
  br label %124

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %124

106:                                              ; preds = %98
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @memmove(i8* %112, i8* %120, i32 %121)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %106, %104, %96, %72, %64
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @__big_return(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @__get_buf(%struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
