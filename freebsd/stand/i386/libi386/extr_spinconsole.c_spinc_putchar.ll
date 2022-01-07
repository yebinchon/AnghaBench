; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_spinconsole.c_spinc_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_spinconsole.c_spinc_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8)* }

@spinc_putchar.tw_chars = internal global i32 1546465148, align 4
@spinc_putchar.lasttime = internal global i64 0, align 8
@parent = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spinc_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spinc_putchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 @time(i32 0)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @spinc_putchar.lasttime, align 8
  %7 = add nsw i64 %6, 1
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* @spinc_putchar.lasttime, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parent, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i8)*, i32 (i8)** %13, align 8
  %15 = load i32, i32* @spinc_putchar.tw_chars, align 4
  %16 = trunc i32 %15 to i8
  %17 = call i32 %14(i8 signext %16)
  %18 = load i32, i32* @spinc_putchar.tw_chars, align 4
  %19 = lshr i32 %18, 8
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* @spinc_putchar.tw_chars, align 4
  %22 = zext i32 %21 to i64
  %23 = and i64 %22, 255
  %24 = shl i64 %23, 24
  %25 = or i64 %20, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @spinc_putchar.tw_chars, align 4
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
