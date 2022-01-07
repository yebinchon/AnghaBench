; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_arm.c__arm_kvatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_arm.c__arm_kvatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { i32* }

@ARM_PAGE_SIZE = common dso_local global i32 0, align 4
@ARM_L1_S_ADDR_MASK = common dso_local global i32 0, align 4
@ARM_L1_S_OFFSET = common dso_local global i32 0, align 4
@ARM_L1_S_SIZE = common dso_local global i32 0, align 4
@ARM_L1_C_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"_arm_kvatop: pread\00", align 1
@ARM_L2_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_L2_TYPE_L = common dso_local global i32 0, align 4
@ARM_L2_L_FRAME = common dso_local global i32 0, align 4
@ARM_L2_L_OFFSET = common dso_local global i32 0, align 4
@ARM_L2_L_SIZE = common dso_local global i32 0, align 4
@ARM_L2_S_FRAME = common dso_local global i32 0, align 4
@ARM_L2_S_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid address (%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*)* @_arm_kvatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_arm_kvatop(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.vmstate*, %struct.vmstate** %14, align 8
  store %struct.vmstate* %15, %struct.vmstate** %8, align 8
  %16 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %17 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @ARM_PAGE_SIZE, align 4
  %25 = call i32 @_kvm_pa2off(%struct.TYPE_7__* %21, i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %135

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %29 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ARM_L1_IDX(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_kvm32toh(%struct.TYPE_7__* %27, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @l1pte_valid(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %131

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @l1pte_section_p(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ARM_L1_S_ADDR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ARM_L1_S_OFFSET, align 4
  %50 = and i32 %48, %49
  %51 = add nsw i32 %47, %50
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @ARM_L1_S_SIZE, align 4
  %58 = call i32 @_kvm_pa2off(%struct.TYPE_7__* %53, i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %135

59:                                               ; preds = %40
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ARM_L1_C_ADDR_MASK, align 4
  %62 = and i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @l2pte_index(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = add i64 %63, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ARM_L1_S_SIZE, align 4
  %73 = call i32 @_kvm_pa2off(%struct.TYPE_7__* %70, i32 %71, i32* %12, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @pread(i32 %76, i32* %10, i32 4, i32 %77)
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 4
  br i1 %80, label %81, label %87

81:                                               ; preds = %59
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @_kvm_syserr(%struct.TYPE_7__* %82, i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %131

87:                                               ; preds = %59
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @_kvm32toh(%struct.TYPE_7__* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @l2pte_valid(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %131

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @ARM_L2_TYPE_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @ARM_L2_TYPE_L, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @ARM_L2_L_FRAME, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ARM_L2_L_OFFSET, align 4
  %107 = and i32 %105, %106
  %108 = or i32 %104, %107
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @ARM_L2_L_SIZE, align 4
  %115 = call i32 @_kvm_pa2off(%struct.TYPE_7__* %110, i32 %112, i32* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  br label %135

116:                                              ; preds = %95
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @ARM_L2_S_FRAME, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @ARM_L2_S_OFFSET, align 4
  %122 = and i32 %120, %121
  %123 = or i32 %119, %122
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* @ARM_PAGE_SIZE, align 4
  %130 = call i32 @_kvm_pa2off(%struct.TYPE_7__* %125, i32 %127, i32* %128, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %135

131:                                              ; preds = %94, %81, %39
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @_kvm_err(%struct.TYPE_7__* %132, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %116, %101, %44, %20
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @_kvm_pa2off(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @_kvm32toh(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @ARM_L1_IDX(i32) #1

declare dso_local i32 @l1pte_valid(i32) #1

declare dso_local i64 @l1pte_section_p(i32) #1

declare dso_local i32 @l2pte_index(i32) #1

declare dso_local i32 @pread(i32, i32*, i32, i32) #1

declare dso_local i32 @_kvm_syserr(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @l2pte_valid(i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_7__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
