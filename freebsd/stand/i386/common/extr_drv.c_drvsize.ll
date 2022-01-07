; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/common/extr_drv.c_drvsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/common/extr_drv.c_drvsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dsk = type { i32 }

@params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drvsize(%struct.dsk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsk*, align 8
  store %struct.dsk* %0, %struct.dsk** %3, align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @params, i32 0, i32 0), align 4
  %4 = load i32, i32* @V86_FLAGS, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 4
  store i32 18432, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  %5 = load %struct.dsk*, %struct.dsk** %3, align 8
  %6 = getelementptr inbounds %struct.dsk, %struct.dsk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 4
  %8 = call i32 @VTOPSEG(%struct.TYPE_6__* @params)
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 4
  %9 = call i32 @VTOPOFF(%struct.TYPE_6__* @params)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 4
  %10 = call i32 (...) @v86int()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 4
  %12 = call i64 @V86_CY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @params, i32 0, i32 1), align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @VTOPSEG(%struct.TYPE_6__*) #1

declare dso_local i32 @VTOPOFF(%struct.TYPE_6__*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
