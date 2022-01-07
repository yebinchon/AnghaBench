; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_ischar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_ischar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@KEYBUFSZ = common dso_local global i32 0, align 4
@keybuf = common dso_local global i64* null, align 8
@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vidc_ischar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidc_ischar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @KEYBUFSZ, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i64*, i64** @keybuf, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %27

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %3

19:                                               ; preds = %3
  %20 = load i32, i32* @V86_FLAGS, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 4
  store i32 22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 4
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %21 = call i32 (...) @v86int()
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 4
  %23 = call i32 @V86_ZR(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @v86int(...) #1

declare dso_local i32 @V86_ZR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
