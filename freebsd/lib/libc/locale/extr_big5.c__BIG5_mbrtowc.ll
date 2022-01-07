; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_big5.c__BIG5_mbrtowc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_big5.c__BIG5_mbrtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i32*)* @_BIG5_mbrtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_BIG5_mbrtowc(i32* noalias %0, i8* noalias %1, i64 %2, i32* noalias %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -256
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %112

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i64 1, i64* %8, align 8
  store i32* null, i32** %6, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 -2, i64* %5, align 8
  br label %112

30:                                               ; preds = %26
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EILSEQ, align 4
  store i32 %41, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %112

42:                                               ; preds = %35
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, 255
  %51 = or i32 %46, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %42
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  store i64 1, i64* %5, align 8
  br label %112

60:                                               ; preds = %30
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @_big5_check(i8 signext %62)
  store i64 %63, i64* %12, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 255
  store i32 %68, i32* %11, align 4
  %69 = load i64, i64* %12, align 8
  %70 = icmp eq i64 %69, 2
  br i1 %70, label %71, label %100

71:                                               ; preds = %60
  %72 = load i64, i64* %8, align 8
  %73 = icmp ult i64 %72, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i64 -2, i64* %5, align 8
  br label %112

78:                                               ; preds = %71
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @EILSEQ, align 4
  store i32 %84, i32* @errno, align 4
  store i64 -1, i64* %5, align 8
  br label %112

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 8
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  %90 = load i8, i8* %88, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, 255
  %93 = or i32 %87, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %85
  store i64 2, i64* %5, align 8
  br label %112

100:                                              ; preds = %60
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 1
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %5, align 8
  br label %112

112:                                              ; preds = %106, %99, %83, %74, %57, %40, %29, %20
  %113 = load i64, i64* %5, align 8
  ret i64 %113
}

declare dso_local i64 @_big5_check(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
