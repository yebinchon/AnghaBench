; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_arm.c__arm_minidump_kvatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_arm.c__arm_minidump_kvatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"_arm_minidump_kvatop called in live kernel!\00", align 1
@ARM_PAGE_SHIFT = common dso_local global i64 0, align 8
@ARM_L2_TYPE_MASK = common dso_local global i64 0, align 8
@ARM_L2_TYPE_INV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"_arm_minidump_kvatop: pte not valid\00", align 1
@ARM_L2_TYPE_L = common dso_local global i64 0, align 8
@ARM_L2_S_OFFSET = common dso_local global i64 0, align 8
@ARM_L2_L_FRAME = common dso_local global i64 0, align 8
@ARM_L2_L_OFFSET = common dso_local global i64 0, align 8
@ARM_L2_S_FRAME = common dso_local global i64 0, align 8
@MINIDUMP_MMU_FORMAT_V4 = common dso_local global i64 0, align 8
@ARM_L2_TYPE_T = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"_arm_minidump_kvatop: pte not supported\00", align 1
@ARM_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"_arm_minidump_kvatop: physical address 0x%jx not in minidump\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"_arm_minidump_kvatop: virtual address 0x%jx not minidumped\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32*)* @_arm_minidump_kvatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_arm_minidump_kvatop(%struct.TYPE_9__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i64 @ISALIVE(%struct.TYPE_9__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %18, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %150

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.vmstate*, %struct.vmstate** %22, align 8
  store %struct.vmstate* %23, %struct.vmstate** %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %26 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %136

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %33 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %31, %35
  %37 = load i64, i64* @ARM_PAGE_SHIFT, align 8
  %38 = ashr i64 %36, %37
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %41 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 8
  %46 = icmp uge i64 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %145

48:                                               ; preds = %30
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @_arm_pte_get(%struct.TYPE_9__* %49, i64 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ARM_L2_TYPE_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* @ARM_L2_TYPE_INV, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %58, i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %145

63:                                               ; preds = %48
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @ARM_L2_TYPE_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* @ARM_L2_TYPE_L, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @ARM_L2_S_OFFSET, align 8
  %72 = and i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @ARM_L2_L_FRAME, align 8
  %76 = and i64 %74, %75
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @ARM_L2_L_OFFSET, align 8
  %79 = and i64 %77, %78
  %80 = load i64, i64* @ARM_L2_S_FRAME, align 8
  %81 = and i64 %79, %80
  %82 = add nsw i64 %76, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %114

84:                                               ; preds = %63
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.vmstate*, %struct.vmstate** %86, align 8
  %88 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MINIDUMP_MMU_FORMAT_V4, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %84
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @ARM_L2_TYPE_MASK, align 8
  %96 = and i64 %94, %95
  %97 = load i64, i64* @ARM_L2_TYPE_T, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %100, i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %145

105:                                              ; preds = %93, %84
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @ARM_L2_S_OFFSET, align 8
  %108 = and i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @ARM_L2_S_FRAME, align 8
  %112 = and i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %105, %69
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @ARM_PAGE_SIZE, align 4
  %118 = call i32 @_kvm_pt_find(%struct.TYPE_9__* %115, i32 %116, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %122, i32 %125, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %145

128:                                              ; preds = %114
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @ARM_PAGE_SIZE, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %4, align 4
  br label %150

136:                                              ; preds = %20
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %137, i32 %140, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %121, %99, %57, %47
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = load i64, i64* %6, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %146, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %145, %128, %17
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @ISALIVE(%struct.TYPE_9__*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @_arm_pte_get(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @_kvm_pt_find(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
