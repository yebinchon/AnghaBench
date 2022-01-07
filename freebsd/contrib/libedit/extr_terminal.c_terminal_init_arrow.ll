; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_init_arrow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_init_arrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 100, i32 111, i32 119, i32 110, i32 0], align 4
@A_K_DN = common dso_local global i64 0, align 8
@T_kd = common dso_local global i32 0, align 4
@ED_NEXT_HISTORY = common dso_local global i32 0, align 4
@XK_CMD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 117, i32 112, i32 0], align 4
@A_K_UP = common dso_local global i64 0, align 8
@T_ku = common dso_local global i32 0, align 4
@ED_PREV_HISTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 108, i32 101, i32 102, i32 116, i32 0], align 4
@A_K_LT = common dso_local global i64 0, align 8
@T_kl = common dso_local global i32 0, align 4
@ED_PREV_CHAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 114, i32 105, i32 103, i32 104, i32 116, i32 0], align 4
@A_K_RT = common dso_local global i64 0, align 8
@T_kr = common dso_local global i32 0, align 4
@ED_NEXT_CHAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 104, i32 111, i32 109, i32 101, i32 0], align 4
@A_K_HO = common dso_local global i64 0, align 8
@T_kh = common dso_local global i32 0, align 4
@ED_MOVE_TO_BEG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i32] [i32 101, i32 110, i32 100, i32 0], align 4
@A_K_EN = common dso_local global i64 0, align 8
@T_at7 = common dso_local global i32 0, align 4
@ED_MOVE_TO_END = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i32] [i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 0], align 4
@A_K_DE = common dso_local global i64 0, align 8
@T_kD = common dso_local global i32 0, align 4
@ED_DELETE_NEXT_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @terminal_init_arrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_init_arrow(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load i64, i64* @A_K_DN, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i8* bitcast ([5 x i32]* @.str to i8*), i8** %11, align 8
  %12 = load i32, i32* @T_kd, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load i64, i64* @A_K_DN, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @ED_NEXT_HISTORY, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = load i64, i64* @A_K_DN, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 8
  %23 = load i8*, i8** @XK_CMD, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i64, i64* @A_K_DN, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i8* %23, i8** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i64, i64* @A_K_UP, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* bitcast ([3 x i32]* @.str.1 to i8*), i8** %31, align 8
  %32 = load i32, i32* @T_ku, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load i64, i64* @A_K_UP, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @ED_PREV_HISTORY, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load i64, i64* @A_K_UP, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  %43 = load i8*, i8** @XK_CMD, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load i64, i64* @A_K_UP, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = load i64, i64* @A_K_LT, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* bitcast ([5 x i32]* @.str.2 to i8*), i8** %51, align 8
  %52 = load i32, i32* @T_kl, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = load i64, i64* @A_K_LT, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @ED_PREV_CHAR, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load i64, i64* @A_K_LT, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load i8*, i8** @XK_CMD, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = load i64, i64* @A_K_LT, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i8* %63, i8** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = load i64, i64* @A_K_RT, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* bitcast ([6 x i32]* @.str.3 to i8*), i8** %71, align 8
  %72 = load i32, i32* @T_kr, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = load i64, i64* @A_K_RT, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @ED_NEXT_CHAR, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = load i64, i64* @A_K_RT, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 8
  %83 = load i8*, i8** @XK_CMD, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i64, i64* @A_K_RT, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i8* %83, i8** %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = load i64, i64* @A_K_HO, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i8* bitcast ([5 x i32]* @.str.4 to i8*), i8** %91, align 8
  %92 = load i32, i32* @T_kh, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = load i64, i64* @A_K_HO, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @ED_MOVE_TO_BEG, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = load i64, i64* @A_K_HO, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 8
  %103 = load i8*, i8** @XK_CMD, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load i64, i64* @A_K_HO, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i8* %103, i8** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = load i64, i64* @A_K_EN, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i8* bitcast ([4 x i32]* @.str.5 to i8*), i8** %111, align 8
  %112 = load i32, i32* @T_at7, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = load i64, i64* @A_K_EN, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* @ED_MOVE_TO_END, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = load i64, i64* @A_K_EN, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 8
  %123 = load i8*, i8** @XK_CMD, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = load i64, i64* @A_K_EN, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i8* %123, i8** %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = load i64, i64* @A_K_DE, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i8* bitcast ([7 x i32]* @.str.6 to i8*), i8** %131, align 8
  %132 = load i32, i32* @T_kD, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = load i64, i64* @A_K_DE, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* @ED_DELETE_NEXT_CHAR, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = load i64, i64* @A_K_DE, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 8
  %143 = load i8*, i8** @XK_CMD, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = load i64, i64* @A_K_DE, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
