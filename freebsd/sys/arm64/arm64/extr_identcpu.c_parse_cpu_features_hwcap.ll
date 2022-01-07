; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_identcpu.c_parse_cpu_features_hwcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_identcpu.c_parse_cpu_features_hwcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@cpu_desc = common dso_local global %struct.TYPE_2__* null, align 8
@ID_AA64ISAR0_DP_IMPL = common dso_local global i64 0, align 8
@HWCAP_ASIMDDP = common dso_local global i32 0, align 4
@ID_AA64ISAR0_SM4_IMPL = common dso_local global i64 0, align 8
@HWCAP_SM4 = common dso_local global i32 0, align 4
@ID_AA64ISAR0_SM3_IMPL = common dso_local global i64 0, align 8
@HWCAP_SM3 = common dso_local global i32 0, align 4
@ID_AA64ISAR0_RDM_IMPL = common dso_local global i64 0, align 8
@HWCAP_ASIMDRDM = common dso_local global i32 0, align 4
@ID_AA64ISAR0_Atomic_IMPL = common dso_local global i64 0, align 8
@HWCAP_ATOMICS = common dso_local global i32 0, align 4
@ID_AA64ISAR0_CRC32_BASE = common dso_local global i64 0, align 8
@HWCAP_CRC32 = common dso_local global i32 0, align 4
@HWCAP_SHA2 = common dso_local global i32 0, align 4
@HWCAP_SHA512 = common dso_local global i32 0, align 4
@HWCAP_SHA1 = common dso_local global i32 0, align 4
@HWCAP_AES = common dso_local global i32 0, align 4
@HWCAP_PMULL = common dso_local global i32 0, align 4
@ID_AA64ISAR1_LRCPC_IMPL = common dso_local global i64 0, align 8
@HWCAP_LRCPC = common dso_local global i32 0, align 4
@ID_AA64ISAR1_FCMA_IMPL = common dso_local global i64 0, align 8
@HWCAP_FCMA = common dso_local global i32 0, align 4
@ID_AA64ISAR1_JSCVT_IMPL = common dso_local global i64 0, align 8
@HWCAP_JSCVT = common dso_local global i32 0, align 4
@ID_AA64ISAR1_DPB_IMPL = common dso_local global i64 0, align 8
@HWCAP_DCPOP = common dso_local global i32 0, align 4
@ID_AA64PFR0_SVE_IMPL = common dso_local global i64 0, align 8
@HWCAP_SVE = common dso_local global i32 0, align 4
@HWCAP_ASIMD = common dso_local global i32 0, align 4
@HWCAP_FP = common dso_local global i32 0, align 4
@HWCAP_FPHP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @parse_cpu_features_hwcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cpu_features_hwcap(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ID_AA64ISAR0_DP_VAL(i32 %8)
  %10 = load i64, i64* @ID_AA64ISAR0_DP_IMPL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @HWCAP_ASIMDDP, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ID_AA64ISAR0_SM4_VAL(i32 %21)
  %23 = load i64, i64* @ID_AA64ISAR0_SM4_IMPL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @HWCAP_SM4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ID_AA64ISAR0_SM3_VAL(i32 %34)
  %36 = load i64, i64* @ID_AA64ISAR0_SM3_IMPL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @HWCAP_SM3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %44 = load i64, i64* %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ID_AA64ISAR0_RDM_VAL(i32 %47)
  %49 = load i64, i64* @ID_AA64ISAR0_RDM_IMPL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @HWCAP_ASIMDRDM, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ID_AA64ISAR0_Atomic_VAL(i32 %60)
  %62 = load i64, i64* @ID_AA64ISAR0_Atomic_IMPL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @HWCAP_ATOMICS, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %55
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ID_AA64ISAR0_CRC32_VAL(i32 %73)
  %75 = load i64, i64* @ID_AA64ISAR0_CRC32_BASE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @HWCAP_CRC32, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %68
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %83 = load i64, i64* %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ID_AA64ISAR0_SHA2_VAL(i32 %86)
  switch i32 %87, label %98 [
    i32 132, label %88
    i32 133, label %92
  ]

88:                                               ; preds = %81
  %89 = load i32, i32* @HWCAP_SHA2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %99

92:                                               ; preds = %81
  %93 = load i32, i32* @HWCAP_SHA2, align 4
  %94 = load i32, i32* @HWCAP_SHA512, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %92, %88
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %101 = load i64, i64* %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ID_AA64ISAR0_SHA1_VAL(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @HWCAP_SHA1, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %113 = load i64, i64* %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ID_AA64ISAR0_AES_VAL(i32 %116)
  switch i32 %117, label %128 [
    i32 135, label %118
    i32 134, label %122
  ]

118:                                              ; preds = %111
  %119 = load i32, i32* @HWCAP_AES, align 4
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  br label %129

122:                                              ; preds = %111
  %123 = load i32, i32* @HWCAP_PMULL, align 4
  %124 = load i32, i32* @HWCAP_AES, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  br label %129

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %122, %118
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %131 = load i64, i64* %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @ID_AA64ISAR1_LRCPC_VAL(i32 %134)
  %136 = load i64, i64* @ID_AA64ISAR1_LRCPC_IMPL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i32, i32* @HWCAP_LRCPC, align 4
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %129
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %144 = load i64, i64* %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ID_AA64ISAR1_FCMA_VAL(i32 %147)
  %149 = load i64, i64* @ID_AA64ISAR1_FCMA_IMPL, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* @HWCAP_FCMA, align 4
  %153 = load i32, i32* %3, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %142
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %157 = load i64, i64* %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @ID_AA64ISAR1_JSCVT_VAL(i32 %160)
  %162 = load i64, i64* @ID_AA64ISAR1_JSCVT_IMPL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %155
  %165 = load i32, i32* @HWCAP_JSCVT, align 4
  %166 = load i32, i32* %3, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %155
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %170 = load i64, i64* %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @ID_AA64ISAR1_DPB_VAL(i32 %173)
  %175 = load i64, i64* @ID_AA64ISAR1_DPB_IMPL, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  %178 = load i32, i32* @HWCAP_DCPOP, align 4
  %179 = load i32, i32* %3, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %177, %168
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %183 = load i64, i64* %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @ID_AA64PFR0_SVE_VAL(i32 %186)
  %188 = load i64, i64* @ID_AA64PFR0_SVE_IMPL, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = load i32, i32* @HWCAP_SVE, align 4
  %192 = load i32, i32* %3, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %181
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %196 = load i64, i64* %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ID_AA64PFR0_AdvSIMD_VAL(i32 %199)
  switch i32 %200, label %211 [
    i32 130, label %201
    i32 131, label %205
  ]

201:                                              ; preds = %194
  %202 = load i32, i32* @HWCAP_ASIMD, align 4
  %203 = load i32, i32* %3, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %3, align 4
  br label %212

205:                                              ; preds = %194
  %206 = load i32, i32* @HWCAP_ASIMD, align 4
  %207 = load i32, i32* @HWCAP_ASIMDDP, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %3, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %3, align 4
  br label %212

211:                                              ; preds = %194
  br label %212

212:                                              ; preds = %211, %205, %201
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_desc, align 8
  %214 = load i64, i64* %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ID_AA64PFR0_FP_VAL(i32 %217)
  switch i32 %218, label %229 [
    i32 128, label %219
    i32 129, label %223
  ]

219:                                              ; preds = %212
  %220 = load i32, i32* @HWCAP_FP, align 4
  %221 = load i32, i32* %3, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %3, align 4
  br label %230

223:                                              ; preds = %212
  %224 = load i32, i32* @HWCAP_FP, align 4
  %225 = load i32, i32* @HWCAP_FPHP, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %3, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %3, align 4
  br label %230

229:                                              ; preds = %212
  br label %230

230:                                              ; preds = %229, %223, %219
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i64 @ID_AA64ISAR0_DP_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR0_SM4_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR0_SM3_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR0_RDM_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR0_Atomic_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR0_CRC32_VAL(i32) #1

declare dso_local i32 @ID_AA64ISAR0_SHA2_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR0_SHA1_VAL(i32) #1

declare dso_local i32 @ID_AA64ISAR0_AES_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR1_LRCPC_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR1_FCMA_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR1_JSCVT_VAL(i32) #1

declare dso_local i64 @ID_AA64ISAR1_DPB_VAL(i32) #1

declare dso_local i64 @ID_AA64PFR0_SVE_VAL(i32) #1

declare dso_local i32 @ID_AA64PFR0_AdvSIMD_VAL(i32) #1

declare dso_local i32 @ID_AA64PFR0_FP_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
