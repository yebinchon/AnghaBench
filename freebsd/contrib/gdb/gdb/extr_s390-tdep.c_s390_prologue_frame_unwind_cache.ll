; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_prologue_frame_unwind_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_prologue_frame_unwind_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.s390_unwind_cache = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.gdbarch = type { i32 }
%struct.s390_prologue_data = type { i32, i64, %struct.prologue_value*, %struct.prologue_value* }
%struct.prologue_value = type { i64, i64, i64 }

@S390_FRAME_REGNUM = common dso_local global i32 0, align 4
@S390_R0_REGNUM = common dso_local global i64 0, align 8
@S390_SP_REGNUM = common dso_local global i64 0, align 8
@pv_register = common dso_local global i64 0, align 8
@NORMAL_FRAME = common dso_local global i64 0, align 8
@S390_RETADDR_REGNUM = common dso_local global i64 0, align 8
@S390_NUM_SPILL_SLOTS = common dso_local global i32 0, align 4
@S390_PC_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.frame_info*, %struct.s390_unwind_cache*)* @s390_prologue_frame_unwind_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_prologue_frame_unwind_cache(%struct.frame_info* %0, %struct.s390_unwind_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca %struct.s390_unwind_cache*, align 8
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_prologue_data, align 8
  %9 = alloca %struct.prologue_value*, align 8
  %10 = alloca %struct.prologue_value*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.s390_prologue_data, align 8
  %20 = alloca %struct.prologue_value*, align 8
  %21 = alloca %struct.prologue_value*, align 8
  %22 = alloca %struct.prologue_value*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store %struct.s390_unwind_cache* %1, %struct.s390_unwind_cache** %5, align 8
  %23 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %24 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %23)
  store %struct.gdbarch* %24, %struct.gdbarch** %6, align 8
  %25 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %26 = call i32 @gdbarch_ptr_bit(%struct.gdbarch* %25)
  %27 = sdiv i32 %26, 8
  store i32 %27, i32* %7, align 4
  %28 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 3
  %29 = load %struct.prologue_value*, %struct.prologue_value** %28, align 8
  %30 = load i32, i32* @S390_FRAME_REGNUM, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @S390_R0_REGNUM, align 8
  %33 = sub i64 %31, %32
  %34 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %29, i64 %33
  store %struct.prologue_value* %34, %struct.prologue_value** %9, align 8
  %35 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 3
  %36 = load %struct.prologue_value*, %struct.prologue_value** %35, align 8
  %37 = load i64, i64* @S390_SP_REGNUM, align 8
  %38 = load i64, i64* @S390_R0_REGNUM, align 8
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %36, i64 %39
  store %struct.prologue_value* %40, %struct.prologue_value** %10, align 8
  %41 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %42 = call i64 @frame_func_unwind(%struct.frame_info* %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %332

46:                                               ; preds = %2
  %47 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %50 = call i64 @frame_pc_unwind(%struct.frame_info* %49)
  %51 = call i64 @s390_analyze_prologue(%struct.gdbarch* %47, i64 %48, i64 %50, %struct.s390_prologue_data* %8)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %332

55:                                               ; preds = %46
  %56 = load %struct.prologue_value*, %struct.prologue_value** %10, align 8
  %57 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @pv_register, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.prologue_value*, %struct.prologue_value** %10, align 8
  %63 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @S390_SP_REGNUM, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55
  store i32 0, i32* %3, align 4
  br label %332

68:                                               ; preds = %61
  %69 = load %struct.prologue_value*, %struct.prologue_value** %10, align 8
  %70 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %68
  %74 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %75 = call i64 @get_frame_type(%struct.frame_info* %74)
  %76 = load i64, i64* @NORMAL_FRAME, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %80 = call i64 @frame_relative_level(%struct.frame_info* %79)
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %332

83:                                               ; preds = %78, %73
  %84 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %85 = load i64, i64* @S390_RETADDR_REGNUM, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i64 @frame_unwind_register_unsigned(%struct.frame_info* %84, i32 %86)
  store i64 %87, i64* %15, align 8
  %88 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i64 @gdbarch_addr_bits_remove(%struct.gdbarch* %88, i64 %89)
  %91 = sub nsw i64 %90, 1
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i64 @get_pc_function_start(i64 %92)
  %94 = load i64, i64* %13, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %19, i32 0, i32 3
  %98 = load %struct.prologue_value*, %struct.prologue_value** %97, align 8
  %99 = load i64, i64* @S390_SP_REGNUM, align 8
  %100 = load i64, i64* @S390_R0_REGNUM, align 8
  %101 = sub i64 %99, %100
  %102 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %98, i64 %101
  store %struct.prologue_value* %102, %struct.prologue_value** %20, align 8
  %103 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i64 @s390_analyze_prologue(%struct.gdbarch* %103, i64 %104, i64 -1, %struct.s390_prologue_data* %19)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %96
  %108 = load %struct.prologue_value*, %struct.prologue_value** %20, align 8
  %109 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @pv_register, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.prologue_value*, %struct.prologue_value** %20, align 8
  %115 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @S390_SP_REGNUM, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.prologue_value*, %struct.prologue_value** %20, align 8
  %121 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119, %113, %107, %96
  store i32 0, i32* %3, align 4
  br label %332

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %83
  br label %127

127:                                              ; preds = %126, %68
  %128 = load %struct.prologue_value*, %struct.prologue_value** %10, align 8
  %129 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 0, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %18, align 4
  %133 = load %struct.prologue_value*, %struct.prologue_value** %10, align 8
  %134 = load %struct.prologue_value*, %struct.prologue_value** %9, align 8
  %135 = call i64 @pv_is_identical(%struct.prologue_value* %133, %struct.prologue_value* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* @S390_FRAME_REGNUM, align 4
  store i32 %138, i32* %17, align 4
  br label %142

139:                                              ; preds = %127
  %140 = load i64, i64* @S390_SP_REGNUM, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %139, %137
  %143 = load i32, i32* %18, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %142
  %146 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %147 = call i64 @get_frame_type(%struct.frame_info* %146)
  %148 = load i64, i64* @NORMAL_FRAME, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %152 = call i64 @frame_relative_level(%struct.frame_info* %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %150, %145
  %155 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %156 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %157 = call i64 @frame_pc_unwind(%struct.frame_info* %156)
  %158 = call i64 @s390_in_function_epilogue_p(%struct.gdbarch* %155, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = call i32 @memset(%struct.s390_prologue_data* %8, i32 0, i32 32)
  store i32 0, i32* %18, align 4
  %162 = load i64, i64* @S390_SP_REGNUM, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %160, %154
  br label %165

165:                                              ; preds = %164, %150, %142
  %166 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %167 = load i32, i32* %17, align 4
  %168 = call i64 @frame_unwind_register_unsigned(%struct.frame_info* %166, i32 %167)
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  store i64 %171, i64* %16, align 8
  store i32 0, i32* %11, align 4
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 2, %174
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %172, %176
  store i64 %177, i64* %12, align 8
  br label %178

178:                                              ; preds = %208, %165
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 14
  br i1 %180, label %181, label %216

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 2
  %183 = load %struct.prologue_value*, %struct.prologue_value** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %183, i64 %185
  store %struct.prologue_value* %186, %struct.prologue_value** %21, align 8
  %187 = load %struct.prologue_value*, %struct.prologue_value** %21, align 8
  %188 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @pv_register, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %181
  %193 = load %struct.prologue_value*, %struct.prologue_value** %21, align 8
  %194 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load i64, i64* %12, align 8
  %199 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %200 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %199, i32 0, i32 3
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load %struct.prologue_value*, %struct.prologue_value** %21, align 8
  %203 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  store i64 %198, i64* %206, align 8
  br label %207

207:                                              ; preds = %197, %192, %181
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  %211 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %12, align 8
  %215 = add nsw i64 %214, %213
  store i64 %215, i64* %12, align 8
  br label %178

216:                                              ; preds = %178
  store i32 14, i32* %11, align 4
  %217 = load i64, i64* %16, align 8
  %218 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = mul nsw i32 16, %219
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %217, %221
  store i64 %222, i64* %12, align 8
  br label %223

223:                                              ; preds = %254, %216
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @S390_NUM_SPILL_SLOTS, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %261

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 2
  %229 = load %struct.prologue_value*, %struct.prologue_value** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %229, i64 %231
  store %struct.prologue_value* %232, %struct.prologue_value** %22, align 8
  %233 = load %struct.prologue_value*, %struct.prologue_value** %22, align 8
  %234 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @pv_register, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %227
  %239 = load %struct.prologue_value*, %struct.prologue_value** %22, align 8
  %240 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = load i64, i64* %12, align 8
  %245 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %246 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %245, i32 0, i32 3
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = load %struct.prologue_value*, %struct.prologue_value** %22, align 8
  %249 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  store i64 %244, i64* %252, align 8
  br label %253

253:                                              ; preds = %243, %238, %227
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %11, align 4
  %257 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %8, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* %12, align 8
  %260 = add nsw i64 %259, %258
  store i64 %260, i64* %12, align 8
  br label %223

261:                                              ; preds = %223
  %262 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %263 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %262, i32 0, i32 3
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = load i64, i64* @S390_PC_REGNUM, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %265
  %267 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %268 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %267, i32 0, i32 3
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = load i64, i64* @S390_RETADDR_REGNUM, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %270
  %272 = bitcast %struct.TYPE_2__* %266 to i8*
  %273 = bitcast %struct.TYPE_2__* %271 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 16, i1 false)
  %274 = load i32, i32* %18, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %291

276:                                              ; preds = %261
  %277 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %278 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %277, i32 0, i32 3
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load i64, i64* @S390_PC_REGNUM, align 8
  %281 = call i32 @trad_frame_addr_p(%struct.TYPE_2__* %279, i64 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %276
  %284 = load i64, i64* @S390_RETADDR_REGNUM, align 8
  %285 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %286 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %285, i32 0, i32 3
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = load i64, i64* @S390_PC_REGNUM, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  store i64 %284, i64* %290, align 8
  br label %291

291:                                              ; preds = %283, %276, %261
  %292 = load i32, i32* %18, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %310

294:                                              ; preds = %291
  %295 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %296 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %295, i32 0, i32 3
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = load i64, i64* @S390_SP_REGNUM, align 8
  %299 = call i32 @trad_frame_addr_p(%struct.TYPE_2__* %297, i64 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %294
  %302 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %303 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %302, i32 0, i32 3
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = load i64, i64* @S390_PC_REGNUM, align 8
  %306 = call i32 @trad_frame_addr_p(%struct.TYPE_2__* %304, i64 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %301, %294
  store i64 -1, i64* %16, align 8
  br label %309

309:                                              ; preds = %308, %301
  br label %310

310:                                              ; preds = %309, %291
  %311 = load i64, i64* %16, align 8
  %312 = icmp ne i64 %311, -1
  br i1 %312, label %313, label %328

313:                                              ; preds = %310
  %314 = load i64, i64* %16, align 8
  %315 = load i32, i32* %7, align 4
  %316 = mul nsw i32 16, %315
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %314, %317
  %319 = add nsw i64 %318, 32
  %320 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %321 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %320, i32 0, i32 2
  store i64 %319, i64* %321, align 8
  %322 = load i64, i64* %16, align 8
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = sub nsw i64 %322, %324
  %326 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %327 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %326, i32 0, i32 1
  store i64 %325, i64* %327, align 8
  br label %328

328:                                              ; preds = %313, %310
  %329 = load i64, i64* %13, align 8
  %330 = load %struct.s390_unwind_cache*, %struct.s390_unwind_cache** %5, align 8
  %331 = getelementptr inbounds %struct.s390_unwind_cache, %struct.s390_unwind_cache* %330, i32 0, i32 0
  store i64 %329, i64* %331, align 8
  store i32 1, i32* %3, align 4
  br label %332

332:                                              ; preds = %328, %124, %82, %67, %54, %45
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

declare dso_local i32 @gdbarch_ptr_bit(%struct.gdbarch*) #1

declare dso_local i64 @frame_func_unwind(%struct.frame_info*) #1

declare dso_local i64 @s390_analyze_prologue(%struct.gdbarch*, i64, i64, %struct.s390_prologue_data*) #1

declare dso_local i64 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local i64 @frame_relative_level(%struct.frame_info*) #1

declare dso_local i64 @frame_unwind_register_unsigned(%struct.frame_info*, i32) #1

declare dso_local i64 @gdbarch_addr_bits_remove(%struct.gdbarch*, i64) #1

declare dso_local i64 @get_pc_function_start(i64) #1

declare dso_local i64 @pv_is_identical(%struct.prologue_value*, %struct.prologue_value*) #1

declare dso_local i64 @s390_in_function_epilogue_p(%struct.gdbarch*, i64) #1

declare dso_local i32 @memset(%struct.s390_prologue_data*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @trad_frame_addr_p(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
