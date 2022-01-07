; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_teardown_msix_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_teardown_msix_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pptdev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32**, %struct.resource** }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pptdev*, i32)* @ppt_teardown_msix_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppt_teardown_msix_intr(%struct.pptdev* %0, i32 %1) #0 {
  %3 = alloca %struct.pptdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i8*, align 8
  store %struct.pptdev* %0, %struct.pptdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %9 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %15 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load %struct.resource**, %struct.resource*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %17, i64 %19
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %23 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %35 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @bus_teardown_intr(i32 %36, %struct.resource* %37, i8* %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = icmp ne %struct.resource* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %45 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SYS_RES_IRQ, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %48, %struct.resource* %49)
  br label %51

51:                                               ; preds = %43, %40
  %52 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %53 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.resource**, %struct.resource*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.resource*, %struct.resource** %55, i64 %57
  store %struct.resource* null, %struct.resource** %58, align 8
  %59 = load %struct.pptdev*, %struct.pptdev** %3, align 8
  %60 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* null, i32** %65, align 8
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
