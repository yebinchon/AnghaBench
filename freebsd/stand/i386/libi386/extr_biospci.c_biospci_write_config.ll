; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospci.c_biospci_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biospci.c_biospci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i32, i32 }

@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCI_INT = common dso_local global i32 0, align 4
@WRITE_CONFIG_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @biospci_write_config(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* @V86_FLAGS, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 6), align 4
  %11 = load i32, i32* @PCI_INT, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 5), align 8
  %12 = load i32, i32* @WRITE_CONFIG_BYTE, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 4), align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 3), align 8
  %18 = call i32 (...) @v86int()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 8
  %20 = call i64 @V86_CY(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 8
  %24 = and i32 %23, 65280
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %4
  store i32 -1, i32* %5, align 4
  br label %28

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
