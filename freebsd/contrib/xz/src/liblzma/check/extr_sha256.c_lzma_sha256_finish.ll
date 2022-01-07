; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/check/extr_sha256.c_lzma_sha256_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/check/extr_sha256.c_lzma_sha256_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_sha256_finish(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 63
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 128, i32* %18, align 4
  br label %19

19:                                               ; preds = %28, %1
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 56
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %23, 64
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = call i32 @process(%struct.TYPE_10__* %26)
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 0, i32* %35, align 4
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 8
  store i32 %42, i32* %40, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @conv64be(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  store i32 %48, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = call i32 @process(%struct.TYPE_10__* %54)
  store i64 0, i64* %4, align 8
  br label %56

56:                                               ; preds = %75, %36
  %57 = load i64, i64* %4, align 8
  %58 = icmp ult i64 %57, 8
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @conv32be(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %59
  %76 = load i64, i64* %4, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %56

78:                                               ; preds = %56
  ret void
}

declare dso_local i32 @process(%struct.TYPE_10__*) #1

declare dso_local i32 @conv64be(i32) #1

declare dso_local i32 @conv32be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
