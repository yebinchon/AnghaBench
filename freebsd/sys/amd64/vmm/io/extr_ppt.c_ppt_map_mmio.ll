; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_map_mmio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_map_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.pptseg = type { i64, i32 }
%struct.pptdev = type { %struct.pptseg*, %struct.vm* }

@EBUSY = common dso_local global i32 0, align 4
@MAX_MMIOSEGS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppt_map_mmio(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pptseg*, align 8
  %19 = alloca %struct.pptdev*, align 8
  store %struct.vm* %0, %struct.vm** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.pptdev* @ppt_find(i32 %20, i32 %21, i32 %22)
  store %struct.pptdev* %23, %struct.pptdev** %19, align 8
  %24 = load %struct.pptdev*, %struct.pptdev** %19, align 8
  %25 = icmp ne %struct.pptdev* %24, null
  br i1 %25, label %26, label %73

26:                                               ; preds = %7
  %27 = load %struct.pptdev*, %struct.pptdev** %19, align 8
  %28 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %27, i32 0, i32 1
  %29 = load %struct.vm*, %struct.vm** %28, align 8
  %30 = load %struct.vm*, %struct.vm** %9, align 8
  %31 = icmp ne %struct.vm* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  store i32 %33, i32* %8, align 4
  br label %75

34:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @MAX_MMIOSEGS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load %struct.pptdev*, %struct.pptdev** %19, align 8
  %41 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %40, i32 0, i32 0
  %42 = load %struct.pptseg*, %struct.pptseg** %41, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %42, i64 %44
  store %struct.pptseg* %45, %struct.pptseg** %18, align 8
  %46 = load %struct.pptseg*, %struct.pptseg** %18, align 8
  %47 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %39
  %51 = load %struct.vm*, %struct.vm** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @vm_map_mmio(%struct.vm* %51, i32 %52, i64 %53, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.pptseg*, %struct.pptseg** %18, align 8
  %61 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.pptseg*, %struct.pptseg** %18, align 8
  %64 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %8, align 4
  br label %75

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %16, align 4
  br label %35

71:                                               ; preds = %35
  %72 = load i32, i32* @ENOSPC, align 4
  store i32 %72, i32* %8, align 4
  br label %75

73:                                               ; preds = %7
  %74 = load i32, i32* @ENOENT, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %71, %65, %32
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local %struct.pptdev* @ppt_find(i32, i32, i32) #1

declare dso_local i32 @vm_map_mmio(%struct.vm*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
