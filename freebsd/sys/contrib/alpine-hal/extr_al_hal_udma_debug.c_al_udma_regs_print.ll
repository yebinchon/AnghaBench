; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_regs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i64 }

@UDMA_TX = common dso_local global i64 0, align 8
@AL_UDMA_DEBUG_AXI = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_GENERAL = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_READ = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_DWRR = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_RATE_LIMITER = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_STREAM_RATE_LIMITER = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_COMP = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_STAT = common dso_local global i32 0, align 4
@AL_UDMA_DEBUG_FEATURE = common dso_local global i32 0, align 4
@DMA_MAX_Q = common dso_local global i64 0, align 8
@AL_UDMA_DEBUG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_udma_regs_print(%struct.al_udma* %0, i32 %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = icmp ne %struct.al_udma* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %183

9:                                                ; preds = %2
  %10 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %11 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UDMA_TX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %107

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @AL_UDMA_DEBUG_AXI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %22 = call i32 @al_udma_regs_m2s_axi_print(%struct.al_udma* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AL_UDMA_DEBUG_GENERAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %30 = call i32 @al_udma_regs_m2s_general_print(%struct.al_udma* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AL_UDMA_DEBUG_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %38 = call i32 @al_udma_regs_m2s_rd_print(%struct.al_udma* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @AL_UDMA_DEBUG_DWRR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %46 = call i32 @al_udma_regs_m2s_dwrr_print(%struct.al_udma* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @AL_UDMA_DEBUG_RATE_LIMITER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %54 = call i32 @al_udma_regs_m2s_rate_limiter_print(%struct.al_udma* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @AL_UDMA_DEBUG_STREAM_RATE_LIMITER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %62 = call i32 @al_udma_regs_m2s_stream_rate_limiter_print(%struct.al_udma* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @AL_UDMA_DEBUG_COMP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %70 = call i32 @al_udma_regs_m2s_comp_print(%struct.al_udma* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @AL_UDMA_DEBUG_STAT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %78 = call i32 @al_udma_regs_m2s_stat_print(%struct.al_udma* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @AL_UDMA_DEBUG_FEATURE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %86 = call i32 @al_udma_regs_m2s_feature_print(%struct.al_udma* %85)
  br label %87

87:                                               ; preds = %84, %79
  store i64 0, i64* %5, align 8
  br label %88

88:                                               ; preds = %103, %87
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @DMA_MAX_Q, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @AL_UDMA_DEBUG_QUEUE(i64 %94)
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @al_udma_regs_m2s_q_print(%struct.al_udma* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %92
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %5, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %5, align 8
  br label %88

106:                                              ; preds = %88
  br label %183

107:                                              ; preds = %9
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @AL_UDMA_DEBUG_AXI, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %114 = call i32 @al_udma_regs_s2m_axi_print(%struct.al_udma* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @AL_UDMA_DEBUG_GENERAL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %122 = call i32 @al_udma_regs_s2m_general_print(%struct.al_udma* %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @AL_UDMA_DEBUG_READ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %130 = call i32 @al_udma_regs_s2m_rd_print(%struct.al_udma* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @AL_UDMA_DEBUG_WRITE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %138 = call i32 @al_udma_regs_s2m_wr_print(%struct.al_udma* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @AL_UDMA_DEBUG_COMP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %146 = call i32 @al_udma_regs_s2m_comp_print(%struct.al_udma* %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @AL_UDMA_DEBUG_STAT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %154 = call i32 @al_udma_regs_s2m_stat_print(%struct.al_udma* %153)
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @AL_UDMA_DEBUG_FEATURE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %162 = call i32 @al_udma_regs_s2m_feature_print(%struct.al_udma* %161)
  br label %163

163:                                              ; preds = %160, %155
  store i64 0, i64* %5, align 8
  br label %164

164:                                              ; preds = %179, %163
  %165 = load i64, i64* %5, align 8
  %166 = load i64, i64* @DMA_MAX_Q, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = load i32, i32* %4, align 4
  %170 = load i64, i64* %5, align 8
  %171 = call i32 @AL_UDMA_DEBUG_QUEUE(i64 %170)
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @al_udma_regs_s2m_q_print(%struct.al_udma* %175, i64 %176)
  br label %178

178:                                              ; preds = %174, %168
  br label %179

179:                                              ; preds = %178
  %180 = load i64, i64* %5, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %5, align 8
  br label %164

182:                                              ; preds = %164
  br label %183

183:                                              ; preds = %8, %182, %106
  ret void
}

declare dso_local i32 @al_udma_regs_m2s_axi_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_general_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_rd_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_dwrr_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_rate_limiter_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_stream_rate_limiter_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_comp_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_stat_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_m2s_feature_print(%struct.al_udma*) #1

declare dso_local i32 @AL_UDMA_DEBUG_QUEUE(i64) #1

declare dso_local i32 @al_udma_regs_m2s_q_print(%struct.al_udma*, i64) #1

declare dso_local i32 @al_udma_regs_s2m_axi_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_general_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_rd_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_wr_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_comp_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_stat_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_feature_print(%struct.al_udma*) #1

declare dso_local i32 @al_udma_regs_s2m_q_print(%struct.al_udma*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
