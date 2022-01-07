; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_random.c_RANDOM_buildDictionary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_random.c_RANDOM_buildDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i8*, i64, i32)* @RANDOM_buildDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RANDOM_buildDictionary(i64 %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 4
  %15 = alloca i64, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %4, i32* %17, align 4
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %27, %5
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @RANDOM_selectSegment(i64 %28, i32 %31)
  %33 = bitcast %struct.TYPE_9__* %14 to i64*
  store i64 %32, i64* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  %39 = add nsw i32 %38, 1
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @MIN(i32 %39, i64 %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @memcpy(i32* %47, i32* %52, i64 %53)
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %55, %56
  %58 = mul i64 %57, 100
  %59 = load i64, i64* %10, align 8
  %60 = udiv i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %24

63:                                               ; preds = %24
  %64 = load i64, i64* %12, align 8
  ret i64 %64
}

declare dso_local i64 @RANDOM_selectSegment(i64, i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
