; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_aw_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_aw_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALLWINNERSOC_SUN7I = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@A20_CPUCFG_BASE = common dso_local global i32 0, align 4
@CPUCFG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't map the CPUCFG\0A\00", align 1
@CPUCFG_BASE = common dso_local global i32 0, align 4
@PRCM_BASE = common dso_local global i32 0, align 4
@PRCM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't map the PRCM\0A\00", align 1
@CPUCFG_P_REG0 = common dso_local global i32 0, align 4
@mpentry = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i32 0, align 4
@CPUCFG_GENCTL = common dso_local global i32 0, align 4
@CPUCFG_DBGCTL1 = common dso_local global i32 0, align 4
@CPU_PWR_CLAMP_STEPS = common dso_local global i32 0, align 4
@A20_CPU1_PWR_CLAMP = common dso_local global i32 0, align 4
@CPU_PWROFF = common dso_local global i32 0, align 4
@A20_CPU1_PWROFF_REG = common dso_local global i32 0, align 4
@CPU_RESET = common dso_local global i32 0, align 4
@CPU_CORE_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aw_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 (...) @allwinner_soc_family()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ALLWINNERSOC_SUN7I, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @fdtbus_bs_tag, align 4
  %15 = load i32, i32* @A20_CPUCFG_BASE, align 4
  %16 = load i32, i32* @CPUCFG_SIZE, align 4
  %17 = call i64 @bus_space_map(i32 %14, i32 %15, i32 %16, i32 0, i32* %3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  br label %39

22:                                               ; preds = %1
  %23 = load i32, i32* @fdtbus_bs_tag, align 4
  %24 = load i32, i32* @CPUCFG_BASE, align 4
  %25 = load i32, i32* @CPUCFG_SIZE, align 4
  %26 = call i64 @bus_space_map(i32 %23, i32 %24, i32 %25, i32 0, i32* %3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* @fdtbus_bs_tag, align 4
  %32 = load i32, i32* @PRCM_BASE, align 4
  %33 = load i32, i32* @PRCM_SIZE, align 4
  %34 = call i64 @bus_space_map(i32 %31, i32 %32, i32 %33, i32 0, i32* %4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %21
  %40 = call i32 (...) @dcache_wbinv_poc_all()
  %41 = load i32, i32* @fdtbus_bs_tag, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @CPUCFG_P_REG0, align 4
  %44 = load i64, i64* @mpentry, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @pmap_kextract(i32 %45)
  %47 = call i32 @bus_space_write_4(i32 %41, i32 %42, i32 %43, i32 %46)
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %58, %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @mp_ncpus, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @fdtbus_bs_tag, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @CPU_RST_CTL(i32 %55)
  %57 = call i32 @bus_space_write_4(i32 %53, i32 %54, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load i32, i32* @fdtbus_bs_tag, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @CPUCFG_GENCTL, align 4
  %65 = call i32 @bus_space_read_4(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %76, %61
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @mp_ncpus, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %66

79:                                               ; preds = %66
  %80 = load i32, i32* @fdtbus_bs_tag, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @CPUCFG_GENCTL, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @bus_space_write_4(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @fdtbus_bs_tag, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @CPUCFG_DBGCTL1, align 4
  %88 = call i32 @bus_space_read_4(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %99, %79
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @mp_ncpus, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = shl i32 1, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %89

102:                                              ; preds = %89
  %103 = load i32, i32* @fdtbus_bs_tag, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @CPUCFG_DBGCTL1, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @bus_space_write_4(i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %141, %102
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @mp_ncpus, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %137, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @CPU_PWR_CLAMP_STEPS, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @ALLWINNERSOC_SUN7I, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32, i32* @fdtbus_bs_tag, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @CPU_PWR_CLAMP(i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 255, %126
  %128 = call i32 @bus_space_write_4(i32 %122, i32 %123, i32 %125, i32 %127)
  br label %136

129:                                              ; preds = %117
  %130 = load i32, i32* @fdtbus_bs_tag, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @A20_CPU1_PWR_CLAMP, align 4
  %133 = load i32, i32* %6, align 4
  %134 = ashr i32 255, %133
  %135 = call i32 @bus_space_write_4(i32 %130, i32 %131, i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %129, %121
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %113

140:                                              ; preds = %113
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %108

144:                                              ; preds = %108
  %145 = call i32 @DELAY(i32 10000)
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @ALLWINNERSOC_SUN7I, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %144
  %150 = load i32, i32* @fdtbus_bs_tag, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @CPU_PWROFF, align 4
  %153 = call i32 @bus_space_read_4(i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %164, %149
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @mp_ncpus, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = shl i32 1, %159
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %154

167:                                              ; preds = %154
  %168 = load i32, i32* @fdtbus_bs_tag, align 4
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @CPU_PWROFF, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @bus_space_write_4(i32 %168, i32 %169, i32 %170, i32 %171)
  br label %185

173:                                              ; preds = %144
  %174 = load i32, i32* @fdtbus_bs_tag, align 4
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @A20_CPU1_PWROFF_REG, align 4
  %177 = call i32 @bus_space_read_4(i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, -2
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @fdtbus_bs_tag, align 4
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @A20_CPU1_PWROFF_REG, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @bus_space_write_4(i32 %180, i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %173, %167
  %186 = call i32 @DELAY(i32 1000)
  store i32 1, i32* %5, align 4
  br label %187

187:                                              ; preds = %200, %185
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @mp_ncpus, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load i32, i32* @fdtbus_bs_tag, align 4
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @CPU_RST_CTL(i32 %194)
  %196 = load i32, i32* @CPU_RESET, align 4
  %197 = load i32, i32* @CPU_CORE_RESET, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @bus_space_write_4(i32 %192, i32 %193, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %187

203:                                              ; preds = %187
  %204 = load i32, i32* @fdtbus_bs_tag, align 4
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @CPUCFG_DBGCTL1, align 4
  %207 = call i32 @bus_space_read_4(i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %208

208:                                              ; preds = %217, %203
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @mp_ncpus, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32, i32* %5, align 4
  %214 = shl i32 1, %213
  %215 = load i32, i32* %8, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %212
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %5, align 4
  br label %208

220:                                              ; preds = %208
  %221 = load i32, i32* @fdtbus_bs_tag, align 4
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* @CPUCFG_DBGCTL1, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @bus_space_write_4(i32 %221, i32 %222, i32 %223, i32 %224)
  %226 = call i32 (...) @dsb()
  %227 = call i32 (...) @sev()
  %228 = load i32, i32* @fdtbus_bs_tag, align 4
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* @CPUCFG_SIZE, align 4
  %231 = call i32 @bus_space_unmap(i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @ALLWINNERSOC_SUN7I, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %220
  %236 = load i32, i32* @fdtbus_bs_tag, align 4
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @PRCM_SIZE, align 4
  %239 = call i32 @bus_space_unmap(i32 %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %235, %220
  ret void
}

declare dso_local i32 @allwinner_soc_family(...) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @CPU_RST_CTL(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @CPU_PWR_CLAMP(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
