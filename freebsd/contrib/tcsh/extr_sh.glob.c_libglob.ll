; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_libglob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_libglob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, i64 }

@GLOB_QUOTE = common dso_local global i32 0, align 4
@GLOB_NOMAGIC = common dso_local global i32 0, align 4
@GLOB_ALTNOT = common dso_local global i32 0, align 4
@STRnonomatch = common dso_local global i32 0, align 4
@STRglobdot = common dso_local global i32 0, align 4
@GLOB_DOT = common dso_local global i32 0, align 4
@STRglobstar = common dso_local global i32 0, align 4
@GLOB_STAR = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_GLOB = common dso_local global i32 0, align 4
@ERR_NOMEM = common dso_local global i32 0, align 4
@GLOB_MAGCHAR = common dso_local global i32 0, align 4
@GLOB_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32**)* @libglob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @libglob(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  %10 = load i32, i32* @GLOB_QUOTE, align 4
  %11 = load i32, i32* @GLOB_NOMAGIC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GLOB_ALTNOT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @STRnonomatch, align 4
  %16 = call i64 @adrof(i32 %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @STRglobdot, align 4
  %20 = call i64 @adrof(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @GLOB_DOT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* @STRglobstar, align 4
  %28 = call i64 @adrof(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @GLOB_STAR, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32**, i32*** %3, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32**, i32*** %3, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %34
  %43 = load i32**, i32*** %3, align 8
  store i32** %43, i32*** %2, align 8
  br label %119

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @GLOB_NOCHECK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %92, %54
  %56 = load i32**, i32*** %3, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i8* @short2qstr(i32* %57)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @glob(i8* %59, i32 %60, i32 0, %struct.TYPE_4__* %5)
  switch i32 %61, label %74 [
    i32 129, label %62
    i32 128, label %70
  ]

62:                                               ; preds = %55
  %63 = call i32 @globfree(%struct.TYPE_4__* %5)
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @setname(i8* %64)
  %66 = load i32, i32* @ERR_NAME, align 4
  %67 = load i32, i32* @ERR_GLOB, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @stderror(i32 %68)
  br label %70

70:                                               ; preds = %55, %62
  %71 = call i32 @globfree(%struct.TYPE_4__* %5)
  %72 = load i32, i32* @ERR_NOMEM, align 4
  %73 = call i32 @stderror(i32 %72)
  br label %74

74:                                               ; preds = %55, %70
  br label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GLOB_MAGCHAR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* @GLOB_APPEND, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32**, i32*** %3, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i32 1
  store i32** %94, i32*** %3, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %55, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107, %97
  br label %115

111:                                              ; preds = %107, %104, %101
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32** @blk2short(i64 %113)
  br label %115

115:                                              ; preds = %111, %110
  %116 = phi i32** [ null, %110 ], [ %114, %111 ]
  store i32** %116, i32*** %3, align 8
  %117 = call i32 @globfree(%struct.TYPE_4__* %5)
  %118 = load i32**, i32*** %3, align 8
  store i32** %118, i32*** %2, align 8
  br label %119

119:                                              ; preds = %115, %42
  %120 = load i32**, i32*** %2, align 8
  ret i32** %120
}

declare dso_local i64 @adrof(i32) #1

declare dso_local i8* @short2qstr(i32*) #1

declare dso_local i32 @glob(i8*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @globfree(%struct.TYPE_4__*) #1

declare dso_local i32 @setname(i8*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32** @blk2short(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
