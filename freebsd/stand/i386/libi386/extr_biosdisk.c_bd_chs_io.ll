; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_chs_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_chs_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@BD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* @bd_chs_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_chs_io(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = srem i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %36, %39
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp sgt i32 %43, 1023
  br i1 %44, label %45, label %46

45:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %85

46:                                               ; preds = %5
  %47 = load i32, i32* @V86_FLAGS, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 7), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @BD_WR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = or i32 768, %52
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = or i32 512, %55
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, 768
  %63 = ashr i32 %62, 2
  %64 = or i32 %60, %63
  %65 = load i32, i32* %16, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %67 = load i32, i32* %15, align 4
  %68 = shl i32 %67, 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @VTOPSEG(i32 %73)
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @VTOPOFF(i32 %75)
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 4
  %77 = call i32 (...) @v86int()
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %79 = call i64 @V86_CY(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %57
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %6, align 4
  br label %85

84:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %81, %45
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @VTOPSEG(i32) #1

declare dso_local i32 @VTOPOFF(i32) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
