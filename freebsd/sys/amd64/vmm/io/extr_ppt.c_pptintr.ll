; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_pptintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_pptintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptdev = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.pptintr_arg = type { i32, i32, %struct.pptdev* }

@FILTER_STRAY = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pptintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptintr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pptdev*, align 8
  %5 = alloca %struct.pptintr_arg*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pptintr_arg*
  store %struct.pptintr_arg* %7, %struct.pptintr_arg** %5, align 8
  %8 = load %struct.pptintr_arg*, %struct.pptintr_arg** %5, align 8
  %9 = getelementptr inbounds %struct.pptintr_arg, %struct.pptintr_arg* %8, i32 0, i32 2
  %10 = load %struct.pptdev*, %struct.pptdev** %9, align 8
  store %struct.pptdev* %10, %struct.pptdev** %4, align 8
  %11 = load %struct.pptdev*, %struct.pptdev** %4, align 8
  %12 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.pptdev*, %struct.pptdev** %4, align 8
  %17 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.pptintr_arg*, %struct.pptintr_arg** %5, align 8
  %20 = getelementptr inbounds %struct.pptintr_arg, %struct.pptintr_arg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pptintr_arg*, %struct.pptintr_arg** %5, align 8
  %23 = getelementptr inbounds %struct.pptintr_arg, %struct.pptintr_arg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @lapic_intr_msi(i32* %18, i32 %21, i32 %24)
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %15
  %28 = load %struct.pptdev*, %struct.pptdev** %4, align 8
  %29 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @lapic_intr_msi(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
