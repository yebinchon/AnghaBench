; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_getbigeom.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_getbigeom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bd_getbigeom(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @V86_FLAGS, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 5), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 4
  store i32 2048, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 128, %5
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 4
  %7 = call i32 (...) @v86int()
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 4), align 4
  %9 = call i64 @V86_CY(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 5177615, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %14 = and i32 %13, 192
  %15 = shl i32 %14, 18
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %17 = and i32 %16, 65280
  %18 = shl i32 %17, 8
  %19 = or i32 %15, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 4
  %21 = and i32 %20, 65280
  %22 = or i32 %19, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  %24 = and i32 %23, 63
  %25 = or i32 %22, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
