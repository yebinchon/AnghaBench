; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mskanji.c__MSKanji_mbrtowc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_mskanji.c__MSKanji_mbrtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i32*)* @_MSKanji_mbrtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_MSKanji_mbrtowc(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -256
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %117

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i64 1, i64* %8, align 8
  store i32* null, i32** %6, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 -2, i64* %5, align 8
  br label %117

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EILSEQ, align 4
  store i32 %40, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %117

41:                                               ; preds = %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = and i32 %48, 255
  %50 = or i32 %45, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  store i64 1, i64* %5, align 8
  br label %117

59:                                               ; preds = %29
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %63, 255
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 128
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 160
  br i1 %69, label %76, label %70

70:                                               ; preds = %67, %59
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 224
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 253
  br i1 %75, label %76, label %105

76:                                               ; preds = %73, %67
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  store i64 -2, i64* %5, align 8
  br label %117

83:                                               ; preds = %76
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @EILSEQ, align 4
  store i32 %89, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %117

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 %91, 8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  %95 = load i8, i8* %93, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %96, 255
  %98 = or i32 %92, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %90
  store i64 2, i64* %5, align 8
  br label %117

105:                                              ; preds = %73, %70
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 1
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %111, %104, %88, %79, %56, %39, %28, %19
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
