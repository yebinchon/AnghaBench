; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_font_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_font_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@fontqueue = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MMAN_spc = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @font_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @font_pop() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fontqueue, i32 0, i32 0), align 8
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fontqueue, i32 0, i32 1), align 8
  %3 = icmp ugt i32* %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fontqueue, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i32 -1
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fontqueue, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @MMAN_spc, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @outflags, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* @outflags, align 4
  %12 = call i32 @print_word(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fontqueue, i32 0, i32 0), align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @putchar(i32 %15)
  ret void
}

declare dso_local i32 @print_word(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
