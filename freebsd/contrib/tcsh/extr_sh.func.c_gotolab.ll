; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_gotolab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_gotolab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whyle = type { %struct.TYPE_3__, %struct.whyle* }
%struct.TYPE_3__ = type { i64, i64 }

@TC_GOTO = common dso_local global i32 0, align 4
@zlast = common dso_local global i32 0, align 4
@whyles = common dso_local global %struct.whyle* null, align 8
@TCSH_F_SEEK = common dso_local global i64 0, align 8
@TC_BREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gotolab(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.whyle*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @TC_GOTO, align 4
  store i32 %4, i32* @zlast, align 4
  %5 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  store %struct.whyle* %5, %struct.whyle** %3, align 8
  br label %6

6:                                                ; preds = %33, %1
  %7 = load %struct.whyle*, %struct.whyle** %3, align 8
  %8 = icmp ne %struct.whyle* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.whyle*, %struct.whyle** %3, align 8
  %11 = getelementptr inbounds %struct.whyle, %struct.whyle* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCSH_F_SEEK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.whyle*, %struct.whyle** %3, align 8
  %18 = getelementptr inbounds %struct.whyle, %struct.whyle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @TC_BREAK, align 4
  %24 = call i32 @search(i32 %23, i32 0, i32* null)
  %25 = load %struct.whyle*, %struct.whyle** %3, align 8
  %26 = getelementptr inbounds %struct.whyle, %struct.whyle* %25, i32 0, i32 0
  %27 = call i32 @btell(%struct.TYPE_3__* %26)
  br label %32

28:                                               ; preds = %16, %9
  %29 = load %struct.whyle*, %struct.whyle** %3, align 8
  %30 = getelementptr inbounds %struct.whyle, %struct.whyle* %29, i32 0, i32 0
  %31 = call i32 @bseek(%struct.TYPE_3__* %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.whyle*, %struct.whyle** %3, align 8
  %35 = getelementptr inbounds %struct.whyle, %struct.whyle* %34, i32 0, i32 1
  %36 = load %struct.whyle*, %struct.whyle** %35, align 8
  store %struct.whyle* %36, %struct.whyle** %3, align 8
  br label %6

37:                                               ; preds = %6
  %38 = load i32, i32* @TC_GOTO, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @search(i32 %38, i32 0, i32* %39)
  %41 = call i32 (...) @wfree()
  ret void
}

declare dso_local i32 @search(i32, i32, i32*) #1

declare dso_local i32 @btell(%struct.TYPE_3__*) #1

declare dso_local i32 @bseek(%struct.TYPE_3__*) #1

declare dso_local i32 @wfree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
