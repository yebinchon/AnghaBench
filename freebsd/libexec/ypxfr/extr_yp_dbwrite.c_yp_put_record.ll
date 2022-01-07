; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_yp_dbwrite.c_yp_put_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ypxfr/extr_yp_dbwrite.c_yp_put_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { {}*, i32 (%struct.TYPE_5__*)* }

@R_NOOVERWRITE = common dso_local global i32 0, align 4
@YP_FALSE = common dso_local global i32 0, align 4
@YP_BADDB = common dso_local global i32 0, align 4
@YP_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_put_record(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.TYPE_5__*, i32*, i32*, i32)**
  %14 = load i32 (%struct.TYPE_5__*, i32*, i32*, i32)*, i32 (%struct.TYPE_5__*, i32*, i32*, i32)** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @R_NOOVERWRITE, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = call i32 %14(%struct.TYPE_5__* %15, i32* %16, i32* %17, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %32 [
    i32 1, label %29
    i32 -1, label %31
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @YP_FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %41

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %27, %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = call i32 %35(%struct.TYPE_5__* %36)
  %38 = load i32, i32* @YP_BADDB, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @YP_TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %32, %29
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
