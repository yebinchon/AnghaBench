; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_array_index_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_array_index_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@vec = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_array_index_of(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vec, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @UCL_ARRAY_GET(%struct.TYPE_4__* %7, i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vec, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vec, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vec, align 8
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @kv_A(i32 %24, i32 %22)
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @UCL_ARRAY_GET(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @kv_A(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
