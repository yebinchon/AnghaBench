; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ftw.c_ftw.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ftw.c_ftw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type opaque
%struct.TYPE_3__ = type { i32, i8*, %struct.stat* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@FTW_D = common dso_local global i32 0, align 4
@FTW_DNR = common dso_local global i32 0, align 4
@FTW_F = common dso_local global i32 0, align 4
@FTW_NS = common dso_local global i32 0, align 4
@FTW_SL = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftw(i8* %0, i32 (i8*, %struct.stat*, i32)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, %struct.stat*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8*], align 16
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 (i8*, %struct.stat*, i32)* %1, i32 (i8*, %struct.stat*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %16, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %23 = load i32, i32* @FTS_LOGICAL, align 4
  %24 = load i32, i32* @FTS_COMFOLLOW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FTS_NOCHDIR, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @fts_open(i8** %22, i32 %27, i32* null)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %83

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %68, %45, %32
  %34 = load i32*, i32** %10, align 8
  %35 = call %struct.TYPE_3__* @fts_read(i32* %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %9, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %54 [
    i32 137, label %41
    i32 134, label %43
    i32 133, label %45
    i32 132, label %46
    i32 135, label %46
    i32 131, label %48
    i32 130, label %48
    i32 128, label %48
    i32 129, label %50
    i32 136, label %52
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @FTW_D, align 4
  store i32 %42, i32* %12, align 4
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* @FTW_DNR, align 4
  store i32 %44, i32* %12, align 4
  br label %55

45:                                               ; preds = %37
  br label %33

46:                                               ; preds = %37, %37
  %47 = load i32, i32* @FTW_F, align 4
  store i32 %47, i32* %12, align 4
  br label %55

48:                                               ; preds = %37, %37, %37
  %49 = load i32, i32* @FTW_NS, align 4
  store i32 %49, i32* %12, align 4
  br label %55

50:                                               ; preds = %37
  %51 = load i32, i32* @FTW_SL, align 4
  store i32 %51, i32* %12, align 4
  br label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @ELOOP, align 4
  store i32 %53, i32* @errno, align 4
  br label %54

54:                                               ; preds = %37, %52
  store i32 -1, i32* %11, align 4
  br label %70

55:                                               ; preds = %50, %48, %46, %43, %41
  %56 = load i32 (i8*, %struct.stat*, i32)*, i32 (i8*, %struct.stat*, i32)** %6, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load %struct.stat*, %struct.stat** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 %56(i8* %59, %struct.stat* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %69

68:                                               ; preds = %55
  br label %33

69:                                               ; preds = %67, %33
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* @errno, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @fts_close(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* %11, align 4
  br label %81

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* @errno, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %31, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @fts_read(i32*) #1

declare dso_local i64 @fts_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
