; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_drv_sgmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_drv_sgmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ERR = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_INPUT = common dso_local global i32 0, align 4
@ENABLE_MOUSE_INPUT = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_7__*)* @drv_sgmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_sgmode(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @AssertTCB()
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @ERR, align 4
  store i32 %18, i32* %4, align 4
  br label %170

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %95

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GetConsoleMode(i32 %31, i32* %8)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ICANON, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %46

41:                                               ; preds = %22
  %42 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @ECHO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @BRKINT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* @ENABLE_MOUSE_INPUT, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @SetConsoleMode(i32 %86, i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = bitcast %struct.TYPE_7__* %91 to i8*
  %94 = bitcast %struct.TYPE_7__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  br label %168

95:                                               ; preds = %19
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %9, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @GetConsoleMode(i32 %108, i32* %8)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %95
  %115 = load i32, i32* @ICANON, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %123

118:                                              ; preds = %95
  %119 = load i32, i32* @ICANON, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %10, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @ECHO, align 4
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %137

132:                                              ; preds = %123
  %133 = load i32, i32* @ECHO, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %10, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %132, %128
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @BRKINT, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %151

146:                                              ; preds = %137
  %147 = load i32, i32* @BRKINT, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %146, %142
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = bitcast %struct.TYPE_7__* %162 to i8*
  %167 = bitcast %struct.TYPE_7__* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %166, i8* align 4 %167, i64 8, i1 false)
  br label %168

168:                                              ; preds = %151, %74
  %169 = load i32, i32* @OK, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %17
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
