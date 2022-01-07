; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_arm.c__arm_minidump_walk_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_arm.c__arm_minidump_walk_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }

@ARM_L2_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_L2_TYPE_INV = common dso_local global i32 0, align 4
@ARM_PAGE_SHIFT = common dso_local global i32 0, align 4
@ARM_L2_TYPE_L = common dso_local global i32 0, align 4
@ARM_L2_L_FRAME = common dso_local global i32 0, align 4
@ARM_L2_L_OFFSET = common dso_local global i32 0, align 4
@ARM_L2_S_FRAME = common dso_local global i32 0, align 4
@MINIDUMP_MMU_FORMAT_V4 = common dso_local global i64 0, align 8
@ARM_L2_TYPE_T = common dso_local global i32 0, align 4
@ARM_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*)* @_arm_minidump_walk_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_arm_minidump_walk_pages(%struct.TYPE_8__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.vmstate*, %struct.vmstate** %16, align 8
  store %struct.vmstate* %17, %struct.vmstate** %8, align 8
  %18 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %19 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %96, %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %99

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @_arm_pte_get(%struct.TYPE_8__* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @ARM_L2_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @ARM_L2_TYPE_INV, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %96

39:                                               ; preds = %29
  %40 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %41 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @ARM_PAGE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @ARM_L2_TYPE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @ARM_L2_TYPE_L, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %39
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @ARM_L2_L_FRAME, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @ARM_L2_L_OFFSET, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @ARM_L2_S_FRAME, align 4
  %61 = and i32 %59, %60
  %62 = add nsw i32 %56, %61
  store i32 %62, i32* %11, align 4
  br label %81

63:                                               ; preds = %39
  %64 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %65 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MINIDUMP_MMU_FORMAT_V4, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @ARM_L2_TYPE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @ARM_L2_TYPE_T, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %96

77:                                               ; preds = %70, %63
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @ARM_L2_S_FRAME, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %53
  store i32 0, i32* %10, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @_arm_entry_to_prot(%struct.TYPE_8__* %88, i32 %89)
  %91 = load i32, i32* @ARM_PAGE_SIZE, align 4
  %92 = call i32 @_kvm_visit_cb(%struct.TYPE_8__* %82, i32* %83, i8* %84, i32 %85, i32 %86, i32 %87, i32 %90, i32 %91, i32 0)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %100

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %76, %38
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %25

99:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @_arm_pte_get(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_kvm_visit_cb(%struct.TYPE_8__*, i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_arm_entry_to_prot(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
