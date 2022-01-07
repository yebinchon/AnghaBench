; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/riscv/extr_dtrace_subr.c_dtrace_invop_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/riscv/extr_dtrace_subr.c_dtrace_invop_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i64 }

@MATCH_SD = common dso_local global i32 0, align 4
@RS2_RA = common dso_local global i32 0, align 4
@RS1_SP = common dso_local global i32 0, align 4
@MASK_SD = common dso_local global i32 0, align 4
@RS2_MASK = common dso_local global i32 0, align 4
@RS1_MASK = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i64 0, align 8
@MATCH_JALR = common dso_local global i32 0, align 4
@X_RA = common dso_local global i32 0, align 4
@RS1_SHIFT = common dso_local global i32 0, align 4
@MASK_JALR = common dso_local global i32 0, align 4
@RD_MASK = common dso_local global i32 0, align 4
@IMM_MASK = common dso_local global i32 0, align 4
@MATCH_C_SDSP = common dso_local global i32 0, align 4
@RS2_C_RA = common dso_local global i32 0, align 4
@MASK_C_SDSP = common dso_local global i32 0, align 4
@RS2_C_MASK = common dso_local global i32 0, align 4
@INSN_C_SIZE = common dso_local global i64 0, align 8
@MATCH_C_JR = common dso_local global i32 0, align 4
@RD_SHIFT = common dso_local global i32 0, align 4
@MASK_C_JR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @dtrace_invop_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_invop_start(%struct.trapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  %8 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %9 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dtrace_invop(i32 %10, %struct.trapframe* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MATCH_SD, align 4
  %18 = load i32, i32* @RS2_RA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RS1_SP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MASK_SD, align 4
  %23 = load i32, i32* @RS2_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RS1_MASK, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @match_opcode(i32 %16, i32 %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 7
  %32 = and i32 %31, 31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 25
  %35 = and i32 %34, 127
  %36 = shl i32 %35, 5
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %4, align 8
  %46 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i64, i64* @INSN_SIZE, align 8
  %51 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %52 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %137

57:                                               ; preds = %1
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MATCH_JALR, align 4
  %60 = load i32, i32* @X_RA, align 4
  %61 = load i32, i32* @RS1_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load i32, i32* @MASK_JALR, align 4
  %65 = load i32, i32* @RD_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RS1_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IMM_MASK, align 4
  %70 = or i32 %68, %69
  %71 = call i64 @match_opcode(i32 %58, i32 %63, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %78 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %137

79:                                               ; preds = %57
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MATCH_C_SDSP, align 4
  %82 = load i32, i32* @RS2_C_RA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @MASK_C_SDSP, align 4
  %85 = load i32, i32* @RS2_C_MASK, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @match_opcode(i32 %80, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  %91 = ashr i32 %90, 10
  %92 = and i32 %91, 7
  %93 = shl i32 %92, 3
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %7, align 4
  %95 = ashr i32 %94, 7
  %96 = and i32 %95, 7
  %97 = shl i32 %96, 6
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %4, align 8
  %107 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %4, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i64, i64* @INSN_C_SIZE, align 8
  %112 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %113 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  store i32 0, i32* %2, align 4
  br label %137

118:                                              ; preds = %79
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @MATCH_C_JR, align 4
  %121 = load i32, i32* @X_RA, align 4
  %122 = load i32, i32* @RD_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %120, %123
  %125 = load i32, i32* @MASK_C_JR, align 4
  %126 = load i32, i32* @RD_MASK, align 4
  %127 = or i32 %125, %126
  %128 = call i64 @match_opcode(i32 %119, i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %118
  %131 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %132 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %135 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %2, align 4
  br label %137

136:                                              ; preds = %118
  store i32 -1, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %130, %89, %73, %29
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @dtrace_invop(i32, %struct.trapframe*, i32) #1

declare dso_local i64 @match_opcode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
