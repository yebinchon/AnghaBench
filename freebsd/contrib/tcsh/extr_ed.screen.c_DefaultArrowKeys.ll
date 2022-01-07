; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_DefaultArrowKeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_DefaultArrowKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@DefaultArrowKeys.strA = internal global [4 x i32] [i32 27, i32 91, i32 65, i32 0], align 16
@DefaultArrowKeys.strB = internal global [4 x i32] [i32 27, i32 91, i32 66, i32 0], align 16
@DefaultArrowKeys.strC = internal global [4 x i32] [i32 27, i32 91, i32 67, i32 0], align 16
@DefaultArrowKeys.strD = internal global [4 x i32] [i32 27, i32 91, i32 68, i32 0], align 16
@DefaultArrowKeys.strH = internal global [4 x i32] [i32 27, i32 91, i32 72, i32 0], align 16
@DefaultArrowKeys.strF = internal global [4 x i32] [i32 27, i32 91, i32 70, i32 0], align 16
@DefaultArrowKeys.stOA = internal global [4 x i32] [i32 27, i32 79, i32 65, i32 0], align 16
@DefaultArrowKeys.stOB = internal global [4 x i32] [i32 27, i32 79, i32 66, i32 0], align 16
@DefaultArrowKeys.stOC = internal global [4 x i32] [i32 27, i32 79, i32 67, i32 0], align 16
@DefaultArrowKeys.stOD = internal global [4 x i32] [i32 27, i32 79, i32 68, i32 0], align 16
@DefaultArrowKeys.stOH = internal global [4 x i32] [i32 27, i32 79, i32 72, i32 0], align 16
@DefaultArrowKeys.stOF = internal global [4 x i32] [i32 27, i32 79, i32 70, i32 0], align 16
@arrow = common dso_local global %struct.TYPE_5__* null, align 8
@A_K_UP = common dso_local global i64 0, align 8
@A_K_DN = common dso_local global i64 0, align 8
@A_K_RT = common dso_local global i64 0, align 8
@A_K_LT = common dso_local global i64 0, align 8
@A_K_HO = common dso_local global i64 0, align 8
@A_K_EN = common dso_local global i64 0, align 8
@VImode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DefaultArrowKeys() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strA, i64 0, i64 0), align 16
  %3 = icmp eq i32 %2, 27
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %5, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strA, i64 0, i64 0), align 16
  %6 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %6, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strB, i64 0, i64 0), align 16
  %7 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strC, i64 0, i64 0), align 16
  %8 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %8, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strD, i64 0, i64 0), align 16
  %9 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %9, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strH, i64 0, i64 0), align 16
  %10 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %10, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strF, i64 0, i64 0), align 16
  %11 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOA, i64 0, i64 0), align 16
  %12 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %12, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOB, i64 0, i64 0), align 16
  %13 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %13, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOC, i64 0, i64 0), align 16
  %14 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %14, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOD, i64 0, i64 0), align 16
  %15 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %15, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOH, i64 0, i64 0), align 16
  %16 = call i32 @CTL_ESC(i8 signext 27)
  store i32 %16, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOF, i64 0, i64 0), align 16
  br label %17

17:                                               ; preds = %4, %0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 3, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strA, i64 0, i64 0), i32** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %21 = load i64, i64* @A_K_UP, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %25 = load i64, i64* @A_K_UP, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %23, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strB, i64 0, i64 0), i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %32 = load i64, i64* @A_K_DN, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %36 = load i64, i64* @A_K_DN, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %34, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strC, i64 0, i64 0), i32** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %43 = load i64, i64* @A_K_RT, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %47 = load i64, i64* @A_K_RT, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %45, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strD, i64 0, i64 0), i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %54 = load i64, i64* @A_K_LT, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %58 = load i64, i64* @A_K_LT, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %56, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strH, i64 0, i64 0), i32** %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %65 = load i64, i64* @A_K_HO, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %69 = load i64, i64* @A_K_HO, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %67, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strF, i64 0, i64 0), i32** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %76 = load i64, i64* @A_K_EN, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %80 = load i64, i64* @A_K_EN, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %78, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOA, i64 0, i64 0), i32** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %87 = load i64, i64* @A_K_UP, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %91 = load i64, i64* @A_K_UP, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %89, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOB, i64 0, i64 0), i32** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %98 = load i64, i64* @A_K_DN, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %102 = load i64, i64* @A_K_DN, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %100, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOC, i64 0, i64 0), i32** %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %109 = load i64, i64* @A_K_RT, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %113 = load i64, i64* @A_K_RT, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %111, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOD, i64 0, i64 0), i32** %118, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %120 = load i64, i64* @A_K_LT, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %124 = load i64, i64* @A_K_LT, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %122, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOH, i64 0, i64 0), i32** %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %131 = load i64, i64* @A_K_HO, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %135 = load i64, i64* @A_K_HO, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %133, i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOF, i64 0, i64 0), i32** %140, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %142 = load i64, i64* @A_K_EN, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %146 = load i64, i64* @A_K_EN, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %144, i32 %149)
  %151 = load i64, i64* @VImode, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %287

153:                                              ; preds = %17
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 2, i32* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strA, i64 0, i64 1), i32** %155, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %157 = load i64, i64* @A_K_UP, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %161 = load i64, i64* @A_K_UP, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %159, i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strB, i64 0, i64 1), i32** %166, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %168 = load i64, i64* @A_K_DN, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %172 = load i64, i64* @A_K_DN, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %170, i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strC, i64 0, i64 1), i32** %177, align 8
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %179 = load i64, i64* @A_K_RT, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %183 = load i64, i64* @A_K_RT, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %181, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strD, i64 0, i64 1), i32** %188, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %190 = load i64, i64* @A_K_LT, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %194 = load i64, i64* @A_K_LT, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %192, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strH, i64 0, i64 1), i32** %199, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %201 = load i64, i64* @A_K_HO, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %205 = load i64, i64* @A_K_HO, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %203, i32 %208)
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.strF, i64 0, i64 1), i32** %210, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %212 = load i64, i64* @A_K_EN, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %216 = load i64, i64* @A_K_EN, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %214, i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOA, i64 0, i64 1), i32** %221, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %223 = load i64, i64* @A_K_UP, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %227 = load i64, i64* @A_K_UP, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %225, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOB, i64 0, i64 1), i32** %232, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %234 = load i64, i64* @A_K_DN, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %238 = load i64, i64* @A_K_DN, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %236, i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOC, i64 0, i64 1), i32** %243, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %245 = load i64, i64* @A_K_RT, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %249 = load i64, i64* @A_K_RT, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %247, i32 %252)
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOD, i64 0, i64 1), i32** %254, align 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %256 = load i64, i64* @A_K_LT, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %260 = load i64, i64* @A_K_LT, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %258, i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOH, i64 0, i64 1), i32** %265, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %267 = load i64, i64* @A_K_HO, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %271 = load i64, i64* @A_K_HO, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %269, i32 %274)
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @DefaultArrowKeys.stOF, i64 0, i64 1), i32** %276, align 8
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %278 = load i64, i64* @A_K_EN, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arrow, align 8
  %282 = load i64, i64* @A_K_EN, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @AddXkey(%struct.TYPE_4__* %1, i32* %280, i32 %285)
  br label %287

287:                                              ; preds = %153, %17
  ret void
}

declare dso_local i32 @CTL_ESC(i8 signext) #1

declare dso_local i32 @AddXkey(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
