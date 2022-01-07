; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_boot1.c_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_boot1.c_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)* }

@ST = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 13, i8* %7, align 1
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %8, align 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ST, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ST, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %18 = call i32 %13(%struct.TYPE_4__* %16, i8* %17)
  br label %19

19:                                               ; preds = %6, %1
  %20 = load i32, i32* %2, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %23, align 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ST, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ST, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %33 = call i32 %28(%struct.TYPE_4__* %31, i8* %32)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
