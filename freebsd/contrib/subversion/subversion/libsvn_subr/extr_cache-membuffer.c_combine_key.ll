; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-membuffer.c_combine_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-membuffer.c_combine_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@NO_INDEX = common dso_local global i64 0, align 8
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i32)* @combine_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine_key(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NO_INDEX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @combine_long_key(%struct.TYPE_10__* %15, i8* %16, i32 %17)
  br label %104

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @memcpy(i32* %23, i8* %24, i32 16)
  br label %52

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @memcpy(i32* %30, i8* %31, i32 8)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %33, align 4
  br label %51

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 16
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i32* %47, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %29
  br label %52

52:                                               ; preds = %51, %22
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 27
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 37
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 65535
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @APR_UINT64_C(i32 -65536)
  %70 = and i32 %68, %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %75, %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %82, i32* %88, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %90, %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %52, %14
  ret void
}

declare dso_local i32 @combine_long_key(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @APR_UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
