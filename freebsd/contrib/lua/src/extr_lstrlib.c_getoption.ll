; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_getoption.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_getoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8* }

@Kint = common dso_local global i32 0, align 4
@Kuint = common dso_local global i32 0, align 4
@Kfloat = common dso_local global i32 0, align 4
@Kstring = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"missing size for format option 'c'\00", align 1
@Kchar = common dso_local global i32 0, align 4
@Kzstr = common dso_local global i32 0, align 4
@Kpadding = common dso_local global i32 0, align 4
@Kpaddalign = common dso_local global i32 0, align 4
@nativeendian = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MAXALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid format option '%c'\00", align 1
@Knop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i32*)* @getoption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getoption(%struct.TYPE_5__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %106 [
    i32 98, label %16
    i32 66, label %19
    i32 104, label %22
    i32 72, label %25
    i32 108, label %28
    i32 76, label %31
    i32 106, label %34
    i32 74, label %37
    i32 84, label %40
    i32 110, label %43
    i32 105, label %46
    i32 73, label %53
    i32 115, label %60
    i32 99, label %67
    i32 122, label %81
    i32 120, label %83
    i32 88, label %86
    i32 32, label %88
    i32 60, label %89
    i32 62, label %92
    i32 61, label %95
    i32 33, label %99
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @Kint, align 4
  store i32 %18, i32* %4, align 4
  br label %114

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @Kuint, align 4
  store i32 %21, i32* %4, align 4
  br label %114

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* @Kint, align 4
  store i32 %24, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 2, i32* %26, align 4
  %27 = load i32, i32* @Kuint, align 4
  store i32 %27, i32* %4, align 4
  br label %114

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  store i32 8, i32* %29, align 4
  %30 = load i32, i32* @Kint, align 4
  store i32 %30, i32* %4, align 4
  br label %114

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  store i32 8, i32* %32, align 4
  %33 = load i32, i32* @Kuint, align 4
  store i32 %33, i32* %4, align 4
  br label %114

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @Kint, align 4
  store i32 %36, i32* %4, align 4
  br label %114

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  store i32 4, i32* %38, align 4
  %39 = load i32, i32* @Kuint, align 4
  store i32 %39, i32* %4, align 4
  br label %114

40:                                               ; preds = %3
  %41 = load i32*, i32** %7, align 8
  store i32 8, i32* %41, align 4
  %42 = load i32, i32* @Kuint, align 4
  store i32 %42, i32* %4, align 4
  br label %114

43:                                               ; preds = %3
  %44 = load i32*, i32** %7, align 8
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* @Kfloat, align 4
  store i32 %45, i32* %4, align 4
  br label %114

46:                                               ; preds = %3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = call i8* @getnumlimit(%struct.TYPE_5__* %47, i8** %48, i32 4)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @Kint, align 4
  store i32 %52, i32* %4, align 4
  br label %114

53:                                               ; preds = %3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = call i8* @getnumlimit(%struct.TYPE_5__* %54, i8** %55, i32 4)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @Kuint, align 4
  store i32 %59, i32* %4, align 4
  br label %114

60:                                               ; preds = %3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = call i8* @getnumlimit(%struct.TYPE_5__* %61, i8** %62, i32 8)
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @Kstring, align 4
  store i32 %66, i32* %4, align 4
  br label %114

67:                                               ; preds = %3
  %68 = load i8**, i8*** %6, align 8
  %69 = call i32 @getnum(i8** %68, i32 -1)
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @luaL_error(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i32, i32* @Kchar, align 4
  store i32 %80, i32* %4, align 4
  br label %114

81:                                               ; preds = %3
  %82 = load i32, i32* @Kzstr, align 4
  store i32 %82, i32* %4, align 4
  br label %114

83:                                               ; preds = %3
  %84 = load i32*, i32** %7, align 8
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @Kpadding, align 4
  store i32 %85, i32* %4, align 4
  br label %114

86:                                               ; preds = %3
  %87 = load i32, i32* @Kpaddalign, align 4
  store i32 %87, i32* %4, align 4
  br label %114

88:                                               ; preds = %3
  br label %112

89:                                               ; preds = %3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %112

92:                                               ; preds = %3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %112

95:                                               ; preds = %3
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @nativeendian, i32 0, i32 0), align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %112

99:                                               ; preds = %3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = load i32, i32* @MAXALIGN, align 4
  %103 = call i8* @getnumlimit(%struct.TYPE_5__* %100, i8** %101, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %112

106:                                              ; preds = %3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, ...) @luaL_error(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %99, %95, %92, %89, %88
  %113 = load i32, i32* @Knop, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %86, %83, %81, %79, %60, %53, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i8* @getnumlimit(%struct.TYPE_5__*, i8**, i32) #1

declare dso_local i32 @getnum(i8**, i32) #1

declare dso_local i32 @luaL_error(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
