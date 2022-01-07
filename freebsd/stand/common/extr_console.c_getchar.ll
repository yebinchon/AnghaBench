; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_getchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (...)* }

@consoles = common dso_local global %struct.TYPE_2__** null, align 8
@C_PRESENTIN = common dso_local global i32 0, align 4
@C_ACTIVEIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getchar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %43, %0
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %40, %3
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %5, i64 %7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %4
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @C_PRESENTIN, align 4
  %20 = load i32, i32* @C_ACTIVEIN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @C_PRESENTIN, align 4
  %24 = load i32, i32* @C_ACTIVEIN, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %11
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  store i32 %35, i32* %2, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %2, align 4
  ret i32 %38

39:                                               ; preds = %27, %11
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %4

43:                                               ; preds = %4
  br label %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
