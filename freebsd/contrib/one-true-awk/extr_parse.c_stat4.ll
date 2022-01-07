; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_parse.c_stat4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_parse.c_stat4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@NSTAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @stat4(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %17 = call %struct.TYPE_12__* @node4(i32 %12, %struct.TYPE_12__* %13, %struct.TYPE_12__* %14, %struct.TYPE_12__* %15, %struct.TYPE_12__* %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %11, align 8
  %18 = load i32, i32* @NSTAT, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  ret %struct.TYPE_12__* %21
}

declare dso_local %struct.TYPE_12__* @node4(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
