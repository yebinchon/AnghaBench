; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.termp = type { i32 }

@MAXCHAR = common dso_local global i32 0, align 4
@fonts = common dso_local global %struct.TYPE_4__* null, align 8
@TERMFONT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.termp*, i32)* @ps_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ps_width(%struct.termp* %0, i32 %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sle i32 %5, 32
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 32
  %10 = load i32, i32* @MAXCHAR, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  store i32 0, i32* %4, align 4
  br label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 32
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fonts, align 8
  %18 = load i64, i64* @TERMFONT_NONE, align 8
  %19 = trunc i64 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
