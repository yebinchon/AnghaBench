; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_ccond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_ccond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MANDOCERR_BLK_NOTOPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, i32, i32)* @roff_ccond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_ccond(%struct.roff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.roff*, %struct.roff** %5, align 8
  %9 = getelementptr inbounds %struct.roff, %struct.roff* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* null, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @MANDOCERR_BLK_NOTOPEN, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mandoc_msg(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.roff*, %struct.roff** %5, align 8
  %19 = getelementptr inbounds %struct.roff, %struct.roff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 131, label %23
    i32 130, label %23
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %17, %17, %17, %17
  br label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @MANDOCERR_BLK_NOTOPEN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mandoc_msg(i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.roff*, %struct.roff** %5, align 8
  %31 = getelementptr inbounds %struct.roff, %struct.roff* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @MANDOCERR_BLK_NOTOPEN, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mandoc_msg(i32 %37, i32 %38, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load %struct.roff*, %struct.roff** %5, align 8
  %43 = call i32 @roffnode_pop(%struct.roff* %42)
  %44 = load %struct.roff*, %struct.roff** %5, align 8
  %45 = call i32 @roffnode_cleanscope(%struct.roff* %44)
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %36, %24, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*) #1

declare dso_local i32 @roffnode_pop(%struct.roff*) #1

declare dso_local i32 @roffnode_cleanscope(%struct.roff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
