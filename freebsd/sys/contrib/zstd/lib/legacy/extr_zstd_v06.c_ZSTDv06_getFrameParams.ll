; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_getFrameParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_getFrameParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@ZSTDv06_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv06_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTDv06_WINDOWLOG_ABSOLUTEMIN = common dso_local global i64 0, align 8
@frameParameter_unsupported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv06_getFrameParams(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @ZSTDv06_frameHeaderSize_min, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @ZSTDv06_frameHeaderSize_min, align 8
  store i64 %17, i64* %4, align 8
  br label %81

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @MEM_readLE32(i8* %19)
  %21 = load i64, i64* @ZSTDv06_MAGICNUMBER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @prefix_unknown, align 4
  %25 = call i64 @ERROR(i32 %24)
  store i64 %25, i64* %4, align 8
  br label %81

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @ZSTDv06_frameHeaderSize(i8* %27, i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %4, align 8
  br label %81

35:                                               ; preds = %26
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = call i32 @memset(%struct.TYPE_4__* %36, i32 0, i32 16)
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @ZSTDv06_WINDOWLOG_ABSOLUTEMIN, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* @frameParameter_unsupported, align 4
  %53 = call i64 @ERROR(i32 %52)
  store i64 %53, i64* %4, align 8
  br label %81

54:                                               ; preds = %35
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 6
  switch i32 %56, label %57 [
    i32 0, label %58
    i32 1, label %61
    i32 2, label %67
    i32 3, label %74
  ]

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %54, %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %80

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %80

67:                                               ; preds = %54
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = call i32 @MEM_readLE16(i32* %69)
  %71 = add nsw i32 %70, 256
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %80

74:                                               ; preds = %54
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = call i32 @MEM_readLE64(i32* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %67, %61, %58
  store i64 0, i64* %4, align 8
  br label %81

81:                                               ; preds = %80, %51, %33, %23, %16
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv06_frameHeaderSize(i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @MEM_readLE16(i32*) #1

declare dso_local i32 @MEM_readLE64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
