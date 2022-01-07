; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/aarch64/extr_dtrace_subr.c_dtrace_invop_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/aarch64/extr_dtrace_subr.c_dtrace_invop_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i64, i64*, i32 }

@LDP_STP_MASK = common dso_local global i32 0, align 4
@ARG1_SHIFT = common dso_local global i32 0, align 4
@ARG1_MASK = common dso_local global i32 0, align 4
@ARG2_SHIFT = common dso_local global i32 0, align 4
@ARG2_MASK = common dso_local global i32 0, align 4
@OFFSET_SHIFT = common dso_local global i32 0, align 4
@OFFSET_MASK = common dso_local global i32 0, align 4
@OFFSET_SIZE = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i64 0, align 8
@B_MASK = common dso_local global i32 0, align 4
@B_INSTR = common dso_local global i32 0, align 4
@B_DATA_MASK = common dso_local global i32 0, align 4
@RET_INSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @dtrace_invop_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_invop_start(%struct.trapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  %14 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %18 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %19 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dtrace_invop(i32 %16, %struct.trapframe* %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @LDP_STP_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %143

30:                                               ; preds = %27, %1
  %31 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %10, align 8
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ARG1_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @ARG1_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ARG2_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @ARG2_MASK, align 4
  %46 = and i32 %44, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @OFFSET_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* @OFFSET_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %130 [
    i32 128, label %54
    i32 129, label %92
  ]

54:                                               ; preds = %30
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @OFFSET_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = ashr i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* @OFFSET_MASK, align 4
  %64 = and i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = load i64*, i64** %10, align 8
  %67 = sext i32 %65 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64* %69, i64** %10, align 8
  br label %75

70:                                               ; preds = %54
  %71 = load i32, i32* %11, align 4
  %72 = load i64*, i64** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64* %74, i64** %10, align 8
  br label %75

75:                                               ; preds = %70, %60
  %76 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  store i64 %89, i64* %91, align 8
  br label %131

92:                                               ; preds = %30
  %93 = load i64*, i64** %10, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %97 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  %101 = load i64*, i64** %10, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %105 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %103, i64* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @OFFSET_SIZE, align 4
  %111 = sub nsw i32 %110, 1
  %112 = ashr i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %92
  %115 = load i32, i32* %11, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* @OFFSET_MASK, align 4
  %118 = and i32 %116, %117
  %119 = add nsw i32 %118, 1
  %120 = load i64*, i64** %10, align 8
  %121 = sext i32 %119 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64* %123, i64** %10, align 8
  br label %129

124:                                              ; preds = %92
  %125 = load i32, i32* %11, align 4
  %126 = load i64*, i64** %10, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64* %128, i64** %10, align 8
  br label %129

129:                                              ; preds = %124, %114
  br label %131

130:                                              ; preds = %30
  br label %131

131:                                              ; preds = %130, %129, %75
  %132 = load i64*, i64** %10, align 8
  %133 = ptrtoint i64* %132 to i64
  %134 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %135 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* @INSN_SIZE, align 8
  %137 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %138 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  store i32 0, i32* %2, align 4
  br label %171

143:                                              ; preds = %27
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @B_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @B_INSTR, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @B_DATA_MASK, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = mul nsw i32 %153, 4
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %157 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 8
  store i32 0, i32* %2, align 4
  br label %171

160:                                              ; preds = %143
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @RET_INSTR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %166 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %169 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  store i32 0, i32* %2, align 4
  br label %171

170:                                              ; preds = %160
  store i32 -1, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %164, %149, %131
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @dtrace_invop(i32, %struct.trapframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
