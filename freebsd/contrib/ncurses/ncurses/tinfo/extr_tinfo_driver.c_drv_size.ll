; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@_nc_prescreen = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [46 x i8] c"screen size: terminfo lines = %d columns = %d\00", align 1
@lines = common dso_local global i16 0, align 2
@columns = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"screen size: environment LINES = %d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"screen size: environment COLUMNS = %d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"screen size is %dx%d\00", align 1
@OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@IOCTL_WINSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @drv_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_size(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %9, align 4
  %13 = call i32 (...) @AssertTCB()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_nc_prescreen, i32 0, i32 0), align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_nc_prescreen, i32 0, i32 1), align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i16, i16* @lines, align 2
  %31 = load i16, i16* @columns, align 2
  %32 = sext i16 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @T(i8* %33)
  %35 = load i16, i16* @lines, align 2
  %36 = sext i16 %35 to i32
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i16, i16* @columns, align 2
  %39 = sext i16 %38 to i32
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %133

46:                                               ; preds = %43, %29
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = icmp eq %struct.TYPE_8__* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55, %52
  %61 = call i32 @_nc_getenv_num(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_nc_setenv_num(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %60, %55
  %68 = call i32 @_nc_getenv_num(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @_nc_setenv_num(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %67
  br label %75

75:                                               ; preds = %74, %49
  %76 = call i32 @_nc_getenv_num(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 @T(i8* %84)
  br label %86

86:                                               ; preds = %78, %75
  %87 = call i32 @_nc_getenv_num(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %87, i32* %10, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @T(i8* %95)
  br label %97

97:                                               ; preds = %89, %86
  br label %98

98:                                               ; preds = %97, %46
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i16, i16* @lines, align 2
  %104 = sext i16 %103 to i32
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i16, i16* @columns, align 2
  %112 = sext i16 %111 to i32
  %113 = load i32*, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32*, i32** %5, align 8
  store i32 24, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  store i32 80, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %127, align 4
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* @lines, align 2
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* @columns, align 2
  br label %133

133:                                              ; preds = %126, %43
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = call i32 @T(i8* %139)
  %141 = load i32, i32* @OK, align 4
  ret i32 %141
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @T(i8*) #1

declare dso_local i32 @_nc_getenv_num(i8*) #1

declare dso_local i32 @_nc_setenv_num(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
