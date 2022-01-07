; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)* }

@consoles = common dso_local global %struct.TYPE_2__** null, align 8
@C_PRESENTOUT = common dso_local global i32 0, align 4
@C_ACTIVEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @putchar(i32 13)
  br label %7

7:                                                ; preds = %6, %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %42, %7
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @C_PRESENTOUT, align 4
  %24 = load i32, i32* @C_ACTIVEOUT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @C_PRESENTOUT, align 4
  %28 = load i32, i32* @C_ACTIVEOUT, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %15
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @consoles, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = call i32 %38(i32 %39)
  br label %41

41:                                               ; preds = %31, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %8

45:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
