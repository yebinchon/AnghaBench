; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_analyze_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_analyze_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.s390_prologue_data = type { i32, i32, %struct.prologue_value, %struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value* }
%struct.prologue_value = type { i32 }

@S390_NUM_GPRS = common dso_local global i32 0, align 4
@S390_R0_REGNUM = common dso_local global i64 0, align 8
@S390_NUM_FPRS = common dso_local global i32 0, align 4
@S390_F0_REGNUM = common dso_local global i64 0, align 8
@S390_NUM_SPILL_SLOTS = common dso_local global i32 0, align 4
@S390_MAX_INSTR_SIZE = common dso_local global i32 0, align 4
@S390_SP_REGNUM = common dso_local global i64 0, align 8
@S390_FRAME_REGNUM = common dso_local global i64 0, align 8
@op1_lhi = common dso_local global i32 0, align 4
@op2_lhi = common dso_local global i32 0, align 4
@op1_lghi = common dso_local global i32 0, align 4
@op2_lghi = common dso_local global i32 0, align 4
@op_lr = common dso_local global i32 0, align 4
@op_lgr = common dso_local global i32 0, align 4
@op_l = common dso_local global i32 0, align 4
@op1_ly = common dso_local global i32 0, align 4
@op2_ly = common dso_local global i32 0, align 4
@op1_lg = common dso_local global i32 0, align 4
@op2_lg = common dso_local global i32 0, align 4
@op_st = common dso_local global i32 0, align 4
@op1_sty = common dso_local global i32 0, align 4
@op2_sty = common dso_local global i32 0, align 4
@op1_stg = common dso_local global i32 0, align 4
@op2_stg = common dso_local global i32 0, align 4
@op_std = common dso_local global i32 0, align 4
@op_stm = common dso_local global i32 0, align 4
@op1_stmy = common dso_local global i32 0, align 4
@op2_stmy = common dso_local global i32 0, align 4
@op1_stmg = common dso_local global i32 0, align 4
@op2_stmg = common dso_local global i32 0, align 4
@op1_ahi = common dso_local global i32 0, align 4
@op2_ahi = common dso_local global i32 0, align 4
@op1_aghi = common dso_local global i32 0, align 4
@op2_aghi = common dso_local global i32 0, align 4
@op_ar = common dso_local global i32 0, align 4
@op_agr = common dso_local global i32 0, align 4
@op_a = common dso_local global i32 0, align 4
@op1_ay = common dso_local global i32 0, align 4
@op2_ay = common dso_local global i32 0, align 4
@op1_ag = common dso_local global i32 0, align 4
@op2_ag = common dso_local global i32 0, align 4
@op_sr = common dso_local global i32 0, align 4
@op_sgr = common dso_local global i32 0, align 4
@op_s = common dso_local global i32 0, align 4
@op1_sy = common dso_local global i32 0, align 4
@op2_sy = common dso_local global i32 0, align 4
@op1_sg = common dso_local global i32 0, align 4
@op2_sg = common dso_local global i32 0, align 4
@op_nr = common dso_local global i32 0, align 4
@op_ngr = common dso_local global i32 0, align 4
@op_la = common dso_local global i32 0, align 4
@op1_lay = common dso_local global i32 0, align 4
@op2_lay = common dso_local global i32 0, align 4
@op1_larl = common dso_local global i32 0, align 4
@op2_larl = common dso_local global i32 0, align 4
@op_basr = common dso_local global i32 0, align 4
@op1_bras = common dso_local global i32 0, align 4
@op2_bras = common dso_local global i32 0, align 4
@op_bas = common dso_local global i32 0, align 4
@op_bcr = common dso_local global i32 0, align 4
@op_bc = common dso_local global i32 0, align 4
@op1_brc = common dso_local global i32 0, align 4
@op2_brc = common dso_local global i32 0, align 4
@op1_brcl = common dso_local global i32 0, align 4
@op2_brcl = common dso_local global i32 0, align 4
@op1_brasl = common dso_local global i32 0, align 4
@op2_brasl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gdbarch*, i64, i64, %struct.s390_prologue_data*)* @s390_analyze_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s390_analyze_prologue(%struct.gdbarch* %0, i64 %1, i64 %2, %struct.s390_prologue_data* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.s390_prologue_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.prologue_value, align 4
  %25 = alloca %struct.prologue_value, align 4
  %26 = alloca %struct.prologue_value, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.prologue_value, align 4
  %29 = alloca %struct.prologue_value, align 4
  %30 = alloca %struct.prologue_value, align 4
  %31 = alloca %struct.prologue_value, align 4
  %32 = alloca %struct.prologue_value, align 4
  %33 = alloca %struct.prologue_value, align 4
  %34 = alloca %struct.prologue_value, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.prologue_value, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.prologue_value, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.prologue_value, align 4
  %44 = alloca %struct.prologue_value, align 4
  %45 = alloca %struct.prologue_value, align 4
  %46 = alloca %struct.prologue_value, align 4
  %47 = alloca %struct.prologue_value, align 4
  %48 = alloca %struct.prologue_value, align 4
  %49 = alloca %struct.prologue_value, align 4
  %50 = alloca %struct.prologue_value, align 4
  %51 = alloca %struct.prologue_value, align 4
  %52 = alloca %struct.prologue_value, align 4
  %53 = alloca %struct.prologue_value, align 4
  %54 = alloca %struct.prologue_value, align 4
  %55 = alloca %struct.prologue_value, align 4
  %56 = alloca %struct.prologue_value*, align 8
  %57 = alloca %struct.prologue_value*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.s390_prologue_data* %3, %struct.s390_prologue_data** %8, align 8
  %58 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %59 = call i32 @gdbarch_ptr_bit(%struct.gdbarch* %58)
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %9, align 4
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %64 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %66 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %65, i32 0, i32 1
  store i32 8, i32* %66, align 4
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %83, %4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @S390_NUM_GPRS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %73 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %72, i32 0, i32 3
  %74 = load %struct.prologue_value*, %struct.prologue_value** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %74, i64 %76
  %78 = load i64, i64* @S390_R0_REGNUM, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = call i32 @pv_set_to_register(%struct.prologue_value* %77, i64 %81, i32 0)
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %67

86:                                               ; preds = %67
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @S390_NUM_FPRS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %93 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %92, i32 0, i32 4
  %94 = load %struct.prologue_value*, %struct.prologue_value** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %94, i64 %96
  %98 = load i64, i64* @S390_F0_REGNUM, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = call i32 @pv_set_to_register(%struct.prologue_value* %97, i64 %101, i32 0)
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %87

106:                                              ; preds = %87
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @S390_NUM_SPILL_SLOTS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %113 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %112, i32 0, i32 5
  %114 = load %struct.prologue_value*, %struct.prologue_value** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %114, i64 %116
  %118 = call i32 @pv_set_to_unknown(%struct.prologue_value* %117)
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %107

122:                                              ; preds = %107
  %123 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %124 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %123, i32 0, i32 2
  %125 = call i32 @pv_set_to_unknown(%struct.prologue_value* %124)
  %126 = load i64, i64* %6, align 8
  store i64 %126, i64* %11, align 8
  br label %127

127:                                              ; preds = %1109, %122
  %128 = load i64, i64* %11, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %7, align 8
  %133 = icmp slt i64 %131, %132
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  br i1 %135, label %136, label %1111

136:                                              ; preds = %134
  %137 = load i32, i32* @S390_MAX_INSTR_SIZE, align 4
  %138 = zext i32 %137 to i64
  %139 = call i8* @llvm.stacksave()
  store i8* %139, i8** %14, align 8
  %140 = alloca i32, i64 %138, align 16
  store i64 %138, i64* %15, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @s390_readinstruction(i32* %140, i64 %141)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i64 0, i64* %10, align 8
  store i32 11, i32* %27, align 4
  br label %1105

146:                                              ; preds = %136
  %147 = load i64, i64* %11, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  store i64 %150, i64* %12, align 8
  %151 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %152 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %151, i32 0, i32 3
  %153 = load %struct.prologue_value*, %struct.prologue_value** %152, align 8
  %154 = load i64, i64* @S390_SP_REGNUM, align 8
  %155 = load i64, i64* @S390_R0_REGNUM, align 8
  %156 = sub i64 %154, %155
  %157 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %153, i64 %156
  %158 = bitcast %struct.prologue_value* %24 to i8*
  %159 = bitcast %struct.prologue_value* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 4, i1 false)
  %160 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %161 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %160, i32 0, i32 3
  %162 = load %struct.prologue_value*, %struct.prologue_value** %161, align 8
  %163 = load i64, i64* @S390_FRAME_REGNUM, align 8
  %164 = load i64, i64* @S390_R0_REGNUM, align 8
  %165 = sub i64 %163, %164
  %166 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %162, i64 %165
  %167 = bitcast %struct.prologue_value* %25 to i8*
  %168 = bitcast %struct.prologue_value* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 4, i1 false)
  %169 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %170 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %169, i32 0, i32 2
  %171 = bitcast %struct.prologue_value* %26 to i8*
  %172 = bitcast %struct.prologue_value* %170 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %171, i8* align 8 %172, i64 4, i1 false)
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 4
  br i1 %174, label %175, label %190

175:                                              ; preds = %146
  %176 = load i32, i32* @op1_lhi, align 4
  %177 = load i32, i32* @op2_lhi, align 4
  %178 = call i64 @is_ri(i32* %140, i32 %176, i32 %177, i32* %18, i32* %22)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %182 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %181, i32 0, i32 3
  %183 = load %struct.prologue_value*, %struct.prologue_value** %182, align 8
  %184 = load i32, i32* %18, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %183, i64 %185
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = call i32 @pv_set_to_constant(%struct.prologue_value* %186, i64 %188)
  br label %1065

190:                                              ; preds = %175, %146
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 8
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = load i32, i32* @op1_lghi, align 4
  %195 = load i32, i32* @op2_lghi, align 4
  %196 = call i64 @is_ri(i32* %140, i32 %194, i32 %195, i32* %18, i32* %22)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %200 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %199, i32 0, i32 3
  %201 = load %struct.prologue_value*, %struct.prologue_value** %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %201, i64 %203
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = call i32 @pv_set_to_constant(%struct.prologue_value* %204, i64 %206)
  br label %1064

208:                                              ; preds = %193, %190
  %209 = load i32, i32* %9, align 4
  %210 = icmp eq i32 %209, 4
  br i1 %210, label %211, label %230

211:                                              ; preds = %208
  %212 = load i32, i32* @op_lr, align 4
  %213 = call i64 @is_rr(i32* %140, i32 %212, i32* %18, i32* %19)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %217 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %216, i32 0, i32 3
  %218 = load %struct.prologue_value*, %struct.prologue_value** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %218, i64 %220
  %222 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %223 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %222, i32 0, i32 3
  %224 = load %struct.prologue_value*, %struct.prologue_value** %223, align 8
  %225 = load i32, i32* %19, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %224, i64 %226
  %228 = bitcast %struct.prologue_value* %221 to i8*
  %229 = bitcast %struct.prologue_value* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %228, i8* align 4 %229, i64 4, i1 false)
  br label %1063

230:                                              ; preds = %211, %208
  %231 = load i32, i32* %9, align 4
  %232 = icmp eq i32 %231, 8
  br i1 %232, label %233, label %252

233:                                              ; preds = %230
  %234 = load i32, i32* @op_lgr, align 4
  %235 = call i64 @is_rre(i32* %140, i32 %234, i32* %18, i32* %19)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %252

237:                                              ; preds = %233
  %238 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %239 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %238, i32 0, i32 3
  %240 = load %struct.prologue_value*, %struct.prologue_value** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %240, i64 %242
  %244 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %245 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %244, i32 0, i32 3
  %246 = load %struct.prologue_value*, %struct.prologue_value** %245, align 8
  %247 = load i32, i32* %19, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %246, i64 %248
  %250 = bitcast %struct.prologue_value* %243 to i8*
  %251 = bitcast %struct.prologue_value* %249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 4, i1 false)
  br label %1062

252:                                              ; preds = %233, %230
  %253 = load i32, i32* %9, align 4
  %254 = icmp eq i32 %253, 4
  br i1 %254, label %255, label %275

255:                                              ; preds = %252
  %256 = load i32, i32* @op_l, align 4
  %257 = call i64 @is_rx(i32* %140, i32 %256, i32* %18, i32* %23, i32* %20, i32* %17)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %255
  %260 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %261 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %260, i32 0, i32 3
  %262 = load %struct.prologue_value*, %struct.prologue_value** %261, align 8
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* %17, align 4
  %266 = call i32 @compute_x_addr(%struct.prologue_value* %28, %struct.prologue_value* %262, i32 %263, i32 %264, i32 %265)
  %267 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %268 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %267, i32 0, i32 3
  %269 = load %struct.prologue_value*, %struct.prologue_value** %268, align 8
  %270 = load i32, i32* %18, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %269, i64 %271
  %273 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %274 = call i32 @s390_load(%struct.prologue_value* %28, i32 4, %struct.prologue_value* %272, %struct.s390_prologue_data* %273)
  br label %1061

275:                                              ; preds = %255, %252
  %276 = load i32, i32* %9, align 4
  %277 = icmp eq i32 %276, 4
  br i1 %277, label %278, label %299

278:                                              ; preds = %275
  %279 = load i32, i32* @op1_ly, align 4
  %280 = load i32, i32* @op2_ly, align 4
  %281 = call i64 @is_rxy(i32* %140, i32 %279, i32 %280, i32* %18, i32* %23, i32* %20, i32* %17)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %278
  %284 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %285 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %284, i32 0, i32 3
  %286 = load %struct.prologue_value*, %struct.prologue_value** %285, align 8
  %287 = load i32, i32* %23, align 4
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %17, align 4
  %290 = call i32 @compute_x_addr(%struct.prologue_value* %29, %struct.prologue_value* %286, i32 %287, i32 %288, i32 %289)
  %291 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %292 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %291, i32 0, i32 3
  %293 = load %struct.prologue_value*, %struct.prologue_value** %292, align 8
  %294 = load i32, i32* %18, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %293, i64 %295
  %297 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %298 = call i32 @s390_load(%struct.prologue_value* %29, i32 4, %struct.prologue_value* %296, %struct.s390_prologue_data* %297)
  br label %1060

299:                                              ; preds = %278, %275
  %300 = load i32, i32* %9, align 4
  %301 = icmp eq i32 %300, 8
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  %303 = load i32, i32* @op1_lg, align 4
  %304 = load i32, i32* @op2_lg, align 4
  %305 = call i64 @is_rxy(i32* %140, i32 %303, i32 %304, i32* %18, i32* %23, i32* %20, i32* %17)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %323

307:                                              ; preds = %302
  %308 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %309 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %308, i32 0, i32 3
  %310 = load %struct.prologue_value*, %struct.prologue_value** %309, align 8
  %311 = load i32, i32* %23, align 4
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* %17, align 4
  %314 = call i32 @compute_x_addr(%struct.prologue_value* %30, %struct.prologue_value* %310, i32 %311, i32 %312, i32 %313)
  %315 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %316 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %315, i32 0, i32 3
  %317 = load %struct.prologue_value*, %struct.prologue_value** %316, align 8
  %318 = load i32, i32* %18, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %317, i64 %319
  %321 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %322 = call i32 @s390_load(%struct.prologue_value* %30, i32 8, %struct.prologue_value* %320, %struct.s390_prologue_data* %321)
  br label %1059

323:                                              ; preds = %302, %299
  %324 = load i32, i32* %9, align 4
  %325 = icmp eq i32 %324, 4
  br i1 %325, label %326, label %346

326:                                              ; preds = %323
  %327 = load i32, i32* @op_st, align 4
  %328 = call i64 @is_rx(i32* %140, i32 %327, i32* %18, i32* %23, i32* %20, i32* %17)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %326
  %331 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %332 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %331, i32 0, i32 3
  %333 = load %struct.prologue_value*, %struct.prologue_value** %332, align 8
  %334 = load i32, i32* %23, align 4
  %335 = load i32, i32* %20, align 4
  %336 = load i32, i32* %17, align 4
  %337 = call i32 @compute_x_addr(%struct.prologue_value* %31, %struct.prologue_value* %333, i32 %334, i32 %335, i32 %336)
  %338 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %339 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %338, i32 0, i32 3
  %340 = load %struct.prologue_value*, %struct.prologue_value** %339, align 8
  %341 = load i32, i32* %18, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %340, i64 %342
  %344 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %345 = call i32 @s390_store(%struct.prologue_value* %31, i32 4, %struct.prologue_value* %343, %struct.s390_prologue_data* %344)
  br label %1058

346:                                              ; preds = %326, %323
  %347 = load i32, i32* %9, align 4
  %348 = icmp eq i32 %347, 4
  br i1 %348, label %349, label %370

349:                                              ; preds = %346
  %350 = load i32, i32* @op1_sty, align 4
  %351 = load i32, i32* @op2_sty, align 4
  %352 = call i64 @is_rxy(i32* %140, i32 %350, i32 %351, i32* %18, i32* %23, i32* %20, i32* %17)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %370

354:                                              ; preds = %349
  %355 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %356 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %355, i32 0, i32 3
  %357 = load %struct.prologue_value*, %struct.prologue_value** %356, align 8
  %358 = load i32, i32* %23, align 4
  %359 = load i32, i32* %20, align 4
  %360 = load i32, i32* %17, align 4
  %361 = call i32 @compute_x_addr(%struct.prologue_value* %32, %struct.prologue_value* %357, i32 %358, i32 %359, i32 %360)
  %362 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %363 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %362, i32 0, i32 3
  %364 = load %struct.prologue_value*, %struct.prologue_value** %363, align 8
  %365 = load i32, i32* %18, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %364, i64 %366
  %368 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %369 = call i32 @s390_store(%struct.prologue_value* %32, i32 4, %struct.prologue_value* %367, %struct.s390_prologue_data* %368)
  br label %1057

370:                                              ; preds = %349, %346
  %371 = load i32, i32* %9, align 4
  %372 = icmp eq i32 %371, 8
  br i1 %372, label %373, label %394

373:                                              ; preds = %370
  %374 = load i32, i32* @op1_stg, align 4
  %375 = load i32, i32* @op2_stg, align 4
  %376 = call i64 @is_rxy(i32* %140, i32 %374, i32 %375, i32* %18, i32* %23, i32* %20, i32* %17)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %394

378:                                              ; preds = %373
  %379 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %380 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %379, i32 0, i32 3
  %381 = load %struct.prologue_value*, %struct.prologue_value** %380, align 8
  %382 = load i32, i32* %23, align 4
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* %17, align 4
  %385 = call i32 @compute_x_addr(%struct.prologue_value* %33, %struct.prologue_value* %381, i32 %382, i32 %383, i32 %384)
  %386 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %387 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %386, i32 0, i32 3
  %388 = load %struct.prologue_value*, %struct.prologue_value** %387, align 8
  %389 = load i32, i32* %18, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %388, i64 %390
  %392 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %393 = call i32 @s390_store(%struct.prologue_value* %33, i32 8, %struct.prologue_value* %391, %struct.s390_prologue_data* %392)
  br label %1056

394:                                              ; preds = %373, %370
  %395 = load i32, i32* @op_std, align 4
  %396 = call i64 @is_rx(i32* %140, i32 %395, i32* %18, i32* %23, i32* %20, i32* %17)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %414

398:                                              ; preds = %394
  %399 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %400 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %399, i32 0, i32 3
  %401 = load %struct.prologue_value*, %struct.prologue_value** %400, align 8
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* %20, align 4
  %404 = load i32, i32* %17, align 4
  %405 = call i32 @compute_x_addr(%struct.prologue_value* %34, %struct.prologue_value* %401, i32 %402, i32 %403, i32 %404)
  %406 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %407 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %406, i32 0, i32 4
  %408 = load %struct.prologue_value*, %struct.prologue_value** %407, align 8
  %409 = load i32, i32* %18, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %408, i64 %410
  %412 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %413 = call i32 @s390_store(%struct.prologue_value* %34, i32 8, %struct.prologue_value* %411, %struct.s390_prologue_data* %412)
  br label %1055

414:                                              ; preds = %394
  %415 = load i32, i32* %9, align 4
  %416 = icmp eq i32 %415, 4
  br i1 %416, label %417, label %450

417:                                              ; preds = %414
  %418 = load i32, i32* @op_stm, align 4
  %419 = call i64 @is_rs(i32* %140, i32 %418, i32* %18, i32* %21, i32* %23, i32* %17)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %450

421:                                              ; preds = %417
  %422 = load i32, i32* %18, align 4
  store i32 %422, i32* %35, align 4
  store i32 0, i32* %36, align 4
  br label %423

423:                                              ; preds = %444, %421
  %424 = load i32, i32* %35, align 4
  %425 = load i32, i32* %21, align 4
  %426 = icmp ule i32 %424, %425
  br i1 %426, label %427, label %449

427:                                              ; preds = %423
  %428 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %429 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %428, i32 0, i32 3
  %430 = load %struct.prologue_value*, %struct.prologue_value** %429, align 8
  %431 = load i32, i32* %23, align 4
  %432 = load i32, i32* %36, align 4
  %433 = add nsw i32 %431, %432
  %434 = load i32, i32* %17, align 4
  %435 = call i32 @compute_x_addr(%struct.prologue_value* %37, %struct.prologue_value* %430, i32 %433, i32 0, i32 %434)
  %436 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %437 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %436, i32 0, i32 3
  %438 = load %struct.prologue_value*, %struct.prologue_value** %437, align 8
  %439 = load i32, i32* %35, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %438, i64 %440
  %442 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %443 = call i32 @s390_store(%struct.prologue_value* %37, i32 4, %struct.prologue_value* %441, %struct.s390_prologue_data* %442)
  br label %444

444:                                              ; preds = %427
  %445 = load i32, i32* %35, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %35, align 4
  %447 = load i32, i32* %36, align 4
  %448 = add nsw i32 %447, 4
  store i32 %448, i32* %36, align 4
  br label %423

449:                                              ; preds = %423
  br label %1054

450:                                              ; preds = %417, %414
  %451 = load i32, i32* %9, align 4
  %452 = icmp eq i32 %451, 4
  br i1 %452, label %453, label %487

453:                                              ; preds = %450
  %454 = load i32, i32* @op1_stmy, align 4
  %455 = load i32, i32* @op2_stmy, align 4
  %456 = call i64 @is_rsy(i32* %140, i32 %454, i32 %455, i32* %18, i32* %21, i32* %23, i32* %17)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %487

458:                                              ; preds = %453
  %459 = load i32, i32* %18, align 4
  store i32 %459, i32* %38, align 4
  store i32 0, i32* %39, align 4
  br label %460

460:                                              ; preds = %481, %458
  %461 = load i32, i32* %38, align 4
  %462 = load i32, i32* %21, align 4
  %463 = icmp ule i32 %461, %462
  br i1 %463, label %464, label %486

464:                                              ; preds = %460
  %465 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %466 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %465, i32 0, i32 3
  %467 = load %struct.prologue_value*, %struct.prologue_value** %466, align 8
  %468 = load i32, i32* %23, align 4
  %469 = load i32, i32* %39, align 4
  %470 = add nsw i32 %468, %469
  %471 = load i32, i32* %17, align 4
  %472 = call i32 @compute_x_addr(%struct.prologue_value* %40, %struct.prologue_value* %467, i32 %470, i32 0, i32 %471)
  %473 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %474 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %473, i32 0, i32 3
  %475 = load %struct.prologue_value*, %struct.prologue_value** %474, align 8
  %476 = load i32, i32* %38, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %475, i64 %477
  %479 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %480 = call i32 @s390_store(%struct.prologue_value* %40, i32 4, %struct.prologue_value* %478, %struct.s390_prologue_data* %479)
  br label %481

481:                                              ; preds = %464
  %482 = load i32, i32* %38, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %38, align 4
  %484 = load i32, i32* %39, align 4
  %485 = add nsw i32 %484, 4
  store i32 %485, i32* %39, align 4
  br label %460

486:                                              ; preds = %460
  br label %1053

487:                                              ; preds = %453, %450
  %488 = load i32, i32* %9, align 4
  %489 = icmp eq i32 %488, 8
  br i1 %489, label %490, label %524

490:                                              ; preds = %487
  %491 = load i32, i32* @op1_stmg, align 4
  %492 = load i32, i32* @op2_stmg, align 4
  %493 = call i64 @is_rsy(i32* %140, i32 %491, i32 %492, i32* %18, i32* %21, i32* %23, i32* %17)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %524

495:                                              ; preds = %490
  %496 = load i32, i32* %18, align 4
  store i32 %496, i32* %41, align 4
  store i32 0, i32* %42, align 4
  br label %497

497:                                              ; preds = %518, %495
  %498 = load i32, i32* %41, align 4
  %499 = load i32, i32* %21, align 4
  %500 = icmp ule i32 %498, %499
  br i1 %500, label %501, label %523

501:                                              ; preds = %497
  %502 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %503 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %502, i32 0, i32 3
  %504 = load %struct.prologue_value*, %struct.prologue_value** %503, align 8
  %505 = load i32, i32* %23, align 4
  %506 = load i32, i32* %42, align 4
  %507 = add nsw i32 %505, %506
  %508 = load i32, i32* %17, align 4
  %509 = call i32 @compute_x_addr(%struct.prologue_value* %43, %struct.prologue_value* %504, i32 %507, i32 0, i32 %508)
  %510 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %511 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %510, i32 0, i32 3
  %512 = load %struct.prologue_value*, %struct.prologue_value** %511, align 8
  %513 = load i32, i32* %41, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %512, i64 %514
  %516 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %517 = call i32 @s390_store(%struct.prologue_value* %43, i32 8, %struct.prologue_value* %515, %struct.s390_prologue_data* %516)
  br label %518

518:                                              ; preds = %501
  %519 = load i32, i32* %41, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %41, align 4
  %521 = load i32, i32* %42, align 4
  %522 = add nsw i32 %521, 8
  store i32 %522, i32* %42, align 4
  br label %497

523:                                              ; preds = %497
  br label %1052

524:                                              ; preds = %490, %487
  %525 = load i32, i32* %9, align 4
  %526 = icmp eq i32 %525, 4
  br i1 %526, label %527, label %541

527:                                              ; preds = %524
  %528 = load i32, i32* @op1_ahi, align 4
  %529 = load i32, i32* @op2_ahi, align 4
  %530 = call i64 @is_ri(i32* %140, i32 %528, i32 %529, i32* %18, i32* %22)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %527
  %533 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %534 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %533, i32 0, i32 3
  %535 = load %struct.prologue_value*, %struct.prologue_value** %534, align 8
  %536 = load i32, i32* %18, align 4
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %535, i64 %537
  %539 = load i32, i32* %22, align 4
  %540 = call i32 @pv_add_constant(%struct.prologue_value* %538, i32 %539)
  br label %1051

541:                                              ; preds = %527, %524
  %542 = load i32, i32* %9, align 4
  %543 = icmp eq i32 %542, 8
  br i1 %543, label %544, label %558

544:                                              ; preds = %541
  %545 = load i32, i32* @op1_aghi, align 4
  %546 = load i32, i32* @op2_aghi, align 4
  %547 = call i64 @is_ri(i32* %140, i32 %545, i32 %546, i32* %18, i32* %22)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %558

549:                                              ; preds = %544
  %550 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %551 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %550, i32 0, i32 3
  %552 = load %struct.prologue_value*, %struct.prologue_value** %551, align 8
  %553 = load i32, i32* %18, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %552, i64 %554
  %556 = load i32, i32* %22, align 4
  %557 = call i32 @pv_add_constant(%struct.prologue_value* %555, i32 %556)
  br label %1050

558:                                              ; preds = %544, %541
  %559 = load i32, i32* %9, align 4
  %560 = icmp eq i32 %559, 4
  br i1 %560, label %561, label %585

561:                                              ; preds = %558
  %562 = load i32, i32* @op_ar, align 4
  %563 = call i64 @is_rr(i32* %140, i32 %562, i32* %18, i32* %19)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %585

565:                                              ; preds = %561
  %566 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %567 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %566, i32 0, i32 3
  %568 = load %struct.prologue_value*, %struct.prologue_value** %567, align 8
  %569 = load i32, i32* %18, align 4
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %568, i64 %570
  %572 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %573 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %572, i32 0, i32 3
  %574 = load %struct.prologue_value*, %struct.prologue_value** %573, align 8
  %575 = load i32, i32* %18, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %574, i64 %576
  %578 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %579 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %578, i32 0, i32 3
  %580 = load %struct.prologue_value*, %struct.prologue_value** %579, align 8
  %581 = load i32, i32* %19, align 4
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %580, i64 %582
  %584 = call i32 @pv_add(%struct.prologue_value* %571, %struct.prologue_value* %577, %struct.prologue_value* %583)
  br label %1049

585:                                              ; preds = %561, %558
  %586 = load i32, i32* %9, align 4
  %587 = icmp eq i32 %586, 8
  br i1 %587, label %588, label %612

588:                                              ; preds = %585
  %589 = load i32, i32* @op_agr, align 4
  %590 = call i64 @is_rre(i32* %140, i32 %589, i32* %18, i32* %19)
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %612

592:                                              ; preds = %588
  %593 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %594 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %593, i32 0, i32 3
  %595 = load %struct.prologue_value*, %struct.prologue_value** %594, align 8
  %596 = load i32, i32* %18, align 4
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %595, i64 %597
  %599 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %600 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %599, i32 0, i32 3
  %601 = load %struct.prologue_value*, %struct.prologue_value** %600, align 8
  %602 = load i32, i32* %18, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %601, i64 %603
  %605 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %606 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %605, i32 0, i32 3
  %607 = load %struct.prologue_value*, %struct.prologue_value** %606, align 8
  %608 = load i32, i32* %19, align 4
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %607, i64 %609
  %611 = call i32 @pv_add(%struct.prologue_value* %598, %struct.prologue_value* %604, %struct.prologue_value* %610)
  br label %1048

612:                                              ; preds = %588, %585
  %613 = load i32, i32* %9, align 4
  %614 = icmp eq i32 %613, 4
  br i1 %614, label %615, label %642

615:                                              ; preds = %612
  %616 = load i32, i32* @op_a, align 4
  %617 = call i64 @is_rx(i32* %140, i32 %616, i32* %18, i32* %23, i32* %20, i32* %17)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %642

619:                                              ; preds = %615
  %620 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %621 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %620, i32 0, i32 3
  %622 = load %struct.prologue_value*, %struct.prologue_value** %621, align 8
  %623 = load i32, i32* %23, align 4
  %624 = load i32, i32* %20, align 4
  %625 = load i32, i32* %17, align 4
  %626 = call i32 @compute_x_addr(%struct.prologue_value* %44, %struct.prologue_value* %622, i32 %623, i32 %624, i32 %625)
  %627 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %628 = call i32 @s390_load(%struct.prologue_value* %44, i32 4, %struct.prologue_value* %45, %struct.s390_prologue_data* %627)
  %629 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %630 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %629, i32 0, i32 3
  %631 = load %struct.prologue_value*, %struct.prologue_value** %630, align 8
  %632 = load i32, i32* %18, align 4
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %631, i64 %633
  %635 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %636 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %635, i32 0, i32 3
  %637 = load %struct.prologue_value*, %struct.prologue_value** %636, align 8
  %638 = load i32, i32* %18, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %637, i64 %639
  %641 = call i32 @pv_add(%struct.prologue_value* %634, %struct.prologue_value* %640, %struct.prologue_value* %45)
  br label %1047

642:                                              ; preds = %615, %612
  %643 = load i32, i32* %9, align 4
  %644 = icmp eq i32 %643, 4
  br i1 %644, label %645, label %673

645:                                              ; preds = %642
  %646 = load i32, i32* @op1_ay, align 4
  %647 = load i32, i32* @op2_ay, align 4
  %648 = call i64 @is_rxy(i32* %140, i32 %646, i32 %647, i32* %18, i32* %23, i32* %20, i32* %17)
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %673

650:                                              ; preds = %645
  %651 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %652 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %651, i32 0, i32 3
  %653 = load %struct.prologue_value*, %struct.prologue_value** %652, align 8
  %654 = load i32, i32* %23, align 4
  %655 = load i32, i32* %20, align 4
  %656 = load i32, i32* %17, align 4
  %657 = call i32 @compute_x_addr(%struct.prologue_value* %46, %struct.prologue_value* %653, i32 %654, i32 %655, i32 %656)
  %658 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %659 = call i32 @s390_load(%struct.prologue_value* %46, i32 4, %struct.prologue_value* %47, %struct.s390_prologue_data* %658)
  %660 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %661 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %660, i32 0, i32 3
  %662 = load %struct.prologue_value*, %struct.prologue_value** %661, align 8
  %663 = load i32, i32* %18, align 4
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %662, i64 %664
  %666 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %667 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %666, i32 0, i32 3
  %668 = load %struct.prologue_value*, %struct.prologue_value** %667, align 8
  %669 = load i32, i32* %18, align 4
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %668, i64 %670
  %672 = call i32 @pv_add(%struct.prologue_value* %665, %struct.prologue_value* %671, %struct.prologue_value* %47)
  br label %1046

673:                                              ; preds = %645, %642
  %674 = load i32, i32* %9, align 4
  %675 = icmp eq i32 %674, 8
  br i1 %675, label %676, label %704

676:                                              ; preds = %673
  %677 = load i32, i32* @op1_ag, align 4
  %678 = load i32, i32* @op2_ag, align 4
  %679 = call i64 @is_rxy(i32* %140, i32 %677, i32 %678, i32* %18, i32* %23, i32* %20, i32* %17)
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %681, label %704

681:                                              ; preds = %676
  %682 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %683 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %682, i32 0, i32 3
  %684 = load %struct.prologue_value*, %struct.prologue_value** %683, align 8
  %685 = load i32, i32* %23, align 4
  %686 = load i32, i32* %20, align 4
  %687 = load i32, i32* %17, align 4
  %688 = call i32 @compute_x_addr(%struct.prologue_value* %48, %struct.prologue_value* %684, i32 %685, i32 %686, i32 %687)
  %689 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %690 = call i32 @s390_load(%struct.prologue_value* %48, i32 8, %struct.prologue_value* %49, %struct.s390_prologue_data* %689)
  %691 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %692 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %691, i32 0, i32 3
  %693 = load %struct.prologue_value*, %struct.prologue_value** %692, align 8
  %694 = load i32, i32* %18, align 4
  %695 = zext i32 %694 to i64
  %696 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %693, i64 %695
  %697 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %698 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %697, i32 0, i32 3
  %699 = load %struct.prologue_value*, %struct.prologue_value** %698, align 8
  %700 = load i32, i32* %18, align 4
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %699, i64 %701
  %703 = call i32 @pv_add(%struct.prologue_value* %696, %struct.prologue_value* %702, %struct.prologue_value* %49)
  br label %1045

704:                                              ; preds = %676, %673
  %705 = load i32, i32* %9, align 4
  %706 = icmp eq i32 %705, 4
  br i1 %706, label %707, label %731

707:                                              ; preds = %704
  %708 = load i32, i32* @op_sr, align 4
  %709 = call i64 @is_rr(i32* %140, i32 %708, i32* %18, i32* %19)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %731

711:                                              ; preds = %707
  %712 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %713 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %712, i32 0, i32 3
  %714 = load %struct.prologue_value*, %struct.prologue_value** %713, align 8
  %715 = load i32, i32* %18, align 4
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %714, i64 %716
  %718 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %719 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %718, i32 0, i32 3
  %720 = load %struct.prologue_value*, %struct.prologue_value** %719, align 8
  %721 = load i32, i32* %18, align 4
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %720, i64 %722
  %724 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %725 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %724, i32 0, i32 3
  %726 = load %struct.prologue_value*, %struct.prologue_value** %725, align 8
  %727 = load i32, i32* %19, align 4
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %726, i64 %728
  %730 = call i32 @pv_subtract(%struct.prologue_value* %717, %struct.prologue_value* %723, %struct.prologue_value* %729)
  br label %1044

731:                                              ; preds = %707, %704
  %732 = load i32, i32* %9, align 4
  %733 = icmp eq i32 %732, 8
  br i1 %733, label %734, label %758

734:                                              ; preds = %731
  %735 = load i32, i32* @op_sgr, align 4
  %736 = call i64 @is_rre(i32* %140, i32 %735, i32* %18, i32* %19)
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %738, label %758

738:                                              ; preds = %734
  %739 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %740 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %739, i32 0, i32 3
  %741 = load %struct.prologue_value*, %struct.prologue_value** %740, align 8
  %742 = load i32, i32* %18, align 4
  %743 = zext i32 %742 to i64
  %744 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %741, i64 %743
  %745 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %746 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %745, i32 0, i32 3
  %747 = load %struct.prologue_value*, %struct.prologue_value** %746, align 8
  %748 = load i32, i32* %18, align 4
  %749 = zext i32 %748 to i64
  %750 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %747, i64 %749
  %751 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %752 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %751, i32 0, i32 3
  %753 = load %struct.prologue_value*, %struct.prologue_value** %752, align 8
  %754 = load i32, i32* %19, align 4
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %753, i64 %755
  %757 = call i32 @pv_subtract(%struct.prologue_value* %744, %struct.prologue_value* %750, %struct.prologue_value* %756)
  br label %1043

758:                                              ; preds = %734, %731
  %759 = load i32, i32* %9, align 4
  %760 = icmp eq i32 %759, 4
  br i1 %760, label %761, label %788

761:                                              ; preds = %758
  %762 = load i32, i32* @op_s, align 4
  %763 = call i64 @is_rx(i32* %140, i32 %762, i32* %18, i32* %23, i32* %20, i32* %17)
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %765, label %788

765:                                              ; preds = %761
  %766 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %767 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %766, i32 0, i32 3
  %768 = load %struct.prologue_value*, %struct.prologue_value** %767, align 8
  %769 = load i32, i32* %23, align 4
  %770 = load i32, i32* %20, align 4
  %771 = load i32, i32* %17, align 4
  %772 = call i32 @compute_x_addr(%struct.prologue_value* %50, %struct.prologue_value* %768, i32 %769, i32 %770, i32 %771)
  %773 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %774 = call i32 @s390_load(%struct.prologue_value* %50, i32 4, %struct.prologue_value* %51, %struct.s390_prologue_data* %773)
  %775 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %776 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %775, i32 0, i32 3
  %777 = load %struct.prologue_value*, %struct.prologue_value** %776, align 8
  %778 = load i32, i32* %18, align 4
  %779 = zext i32 %778 to i64
  %780 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %777, i64 %779
  %781 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %782 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %781, i32 0, i32 3
  %783 = load %struct.prologue_value*, %struct.prologue_value** %782, align 8
  %784 = load i32, i32* %18, align 4
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %783, i64 %785
  %787 = call i32 @pv_subtract(%struct.prologue_value* %780, %struct.prologue_value* %786, %struct.prologue_value* %51)
  br label %1042

788:                                              ; preds = %761, %758
  %789 = load i32, i32* %9, align 4
  %790 = icmp eq i32 %789, 4
  br i1 %790, label %791, label %819

791:                                              ; preds = %788
  %792 = load i32, i32* @op1_sy, align 4
  %793 = load i32, i32* @op2_sy, align 4
  %794 = call i64 @is_rxy(i32* %140, i32 %792, i32 %793, i32* %18, i32* %23, i32* %20, i32* %17)
  %795 = icmp ne i64 %794, 0
  br i1 %795, label %796, label %819

796:                                              ; preds = %791
  %797 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %798 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %797, i32 0, i32 3
  %799 = load %struct.prologue_value*, %struct.prologue_value** %798, align 8
  %800 = load i32, i32* %23, align 4
  %801 = load i32, i32* %20, align 4
  %802 = load i32, i32* %17, align 4
  %803 = call i32 @compute_x_addr(%struct.prologue_value* %52, %struct.prologue_value* %799, i32 %800, i32 %801, i32 %802)
  %804 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %805 = call i32 @s390_load(%struct.prologue_value* %52, i32 4, %struct.prologue_value* %53, %struct.s390_prologue_data* %804)
  %806 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %807 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %806, i32 0, i32 3
  %808 = load %struct.prologue_value*, %struct.prologue_value** %807, align 8
  %809 = load i32, i32* %18, align 4
  %810 = zext i32 %809 to i64
  %811 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %808, i64 %810
  %812 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %813 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %812, i32 0, i32 3
  %814 = load %struct.prologue_value*, %struct.prologue_value** %813, align 8
  %815 = load i32, i32* %18, align 4
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %814, i64 %816
  %818 = call i32 @pv_subtract(%struct.prologue_value* %811, %struct.prologue_value* %817, %struct.prologue_value* %53)
  br label %1041

819:                                              ; preds = %791, %788
  %820 = load i32, i32* %9, align 4
  %821 = icmp eq i32 %820, 8
  br i1 %821, label %822, label %850

822:                                              ; preds = %819
  %823 = load i32, i32* @op1_sg, align 4
  %824 = load i32, i32* @op2_sg, align 4
  %825 = call i64 @is_rxy(i32* %140, i32 %823, i32 %824, i32* %18, i32* %23, i32* %20, i32* %17)
  %826 = icmp ne i64 %825, 0
  br i1 %826, label %827, label %850

827:                                              ; preds = %822
  %828 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %829 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %828, i32 0, i32 3
  %830 = load %struct.prologue_value*, %struct.prologue_value** %829, align 8
  %831 = load i32, i32* %23, align 4
  %832 = load i32, i32* %20, align 4
  %833 = load i32, i32* %17, align 4
  %834 = call i32 @compute_x_addr(%struct.prologue_value* %54, %struct.prologue_value* %830, i32 %831, i32 %832, i32 %833)
  %835 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %836 = call i32 @s390_load(%struct.prologue_value* %54, i32 8, %struct.prologue_value* %55, %struct.s390_prologue_data* %835)
  %837 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %838 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %837, i32 0, i32 3
  %839 = load %struct.prologue_value*, %struct.prologue_value** %838, align 8
  %840 = load i32, i32* %18, align 4
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %839, i64 %841
  %843 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %844 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %843, i32 0, i32 3
  %845 = load %struct.prologue_value*, %struct.prologue_value** %844, align 8
  %846 = load i32, i32* %18, align 4
  %847 = zext i32 %846 to i64
  %848 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %845, i64 %847
  %849 = call i32 @pv_subtract(%struct.prologue_value* %842, %struct.prologue_value* %848, %struct.prologue_value* %55)
  br label %1040

850:                                              ; preds = %822, %819
  %851 = load i32, i32* %9, align 4
  %852 = icmp eq i32 %851, 4
  br i1 %852, label %853, label %877

853:                                              ; preds = %850
  %854 = load i32, i32* @op_nr, align 4
  %855 = call i64 @is_rr(i32* %140, i32 %854, i32* %18, i32* %19)
  %856 = icmp ne i64 %855, 0
  br i1 %856, label %857, label %877

857:                                              ; preds = %853
  %858 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %859 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %858, i32 0, i32 3
  %860 = load %struct.prologue_value*, %struct.prologue_value** %859, align 8
  %861 = load i32, i32* %18, align 4
  %862 = zext i32 %861 to i64
  %863 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %860, i64 %862
  %864 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %865 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %864, i32 0, i32 3
  %866 = load %struct.prologue_value*, %struct.prologue_value** %865, align 8
  %867 = load i32, i32* %18, align 4
  %868 = zext i32 %867 to i64
  %869 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %866, i64 %868
  %870 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %871 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %870, i32 0, i32 3
  %872 = load %struct.prologue_value*, %struct.prologue_value** %871, align 8
  %873 = load i32, i32* %19, align 4
  %874 = zext i32 %873 to i64
  %875 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %872, i64 %874
  %876 = call i32 @pv_logical_and(%struct.prologue_value* %863, %struct.prologue_value* %869, %struct.prologue_value* %875)
  br label %1039

877:                                              ; preds = %853, %850
  %878 = load i32, i32* %9, align 4
  %879 = icmp eq i32 %878, 8
  br i1 %879, label %880, label %904

880:                                              ; preds = %877
  %881 = load i32, i32* @op_ngr, align 4
  %882 = call i64 @is_rre(i32* %140, i32 %881, i32* %18, i32* %19)
  %883 = icmp ne i64 %882, 0
  br i1 %883, label %884, label %904

884:                                              ; preds = %880
  %885 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %886 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %885, i32 0, i32 3
  %887 = load %struct.prologue_value*, %struct.prologue_value** %886, align 8
  %888 = load i32, i32* %18, align 4
  %889 = zext i32 %888 to i64
  %890 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %887, i64 %889
  %891 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %892 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %891, i32 0, i32 3
  %893 = load %struct.prologue_value*, %struct.prologue_value** %892, align 8
  %894 = load i32, i32* %18, align 4
  %895 = zext i32 %894 to i64
  %896 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %893, i64 %895
  %897 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %898 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %897, i32 0, i32 3
  %899 = load %struct.prologue_value*, %struct.prologue_value** %898, align 8
  %900 = load i32, i32* %19, align 4
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %899, i64 %901
  %903 = call i32 @pv_logical_and(%struct.prologue_value* %890, %struct.prologue_value* %896, %struct.prologue_value* %902)
  br label %1038

904:                                              ; preds = %880, %877
  %905 = load i32, i32* @op_la, align 4
  %906 = call i64 @is_rx(i32* %140, i32 %905, i32* %18, i32* %23, i32* %20, i32* %17)
  %907 = icmp ne i64 %906, 0
  br i1 %907, label %908, label %922

908:                                              ; preds = %904
  %909 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %910 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %909, i32 0, i32 3
  %911 = load %struct.prologue_value*, %struct.prologue_value** %910, align 8
  %912 = load i32, i32* %18, align 4
  %913 = zext i32 %912 to i64
  %914 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %911, i64 %913
  %915 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %916 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %915, i32 0, i32 3
  %917 = load %struct.prologue_value*, %struct.prologue_value** %916, align 8
  %918 = load i32, i32* %23, align 4
  %919 = load i32, i32* %20, align 4
  %920 = load i32, i32* %17, align 4
  %921 = call i32 @compute_x_addr(%struct.prologue_value* %914, %struct.prologue_value* %917, i32 %918, i32 %919, i32 %920)
  br label %1037

922:                                              ; preds = %904
  %923 = load i32, i32* @op1_lay, align 4
  %924 = load i32, i32* @op2_lay, align 4
  %925 = call i64 @is_rxy(i32* %140, i32 %923, i32 %924, i32* %18, i32* %23, i32* %20, i32* %17)
  %926 = icmp ne i64 %925, 0
  br i1 %926, label %927, label %941

927:                                              ; preds = %922
  %928 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %929 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %928, i32 0, i32 3
  %930 = load %struct.prologue_value*, %struct.prologue_value** %929, align 8
  %931 = load i32, i32* %18, align 4
  %932 = zext i32 %931 to i64
  %933 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %930, i64 %932
  %934 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %935 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %934, i32 0, i32 3
  %936 = load %struct.prologue_value*, %struct.prologue_value** %935, align 8
  %937 = load i32, i32* %23, align 4
  %938 = load i32, i32* %20, align 4
  %939 = load i32, i32* %17, align 4
  %940 = call i32 @compute_x_addr(%struct.prologue_value* %933, %struct.prologue_value* %936, i32 %937, i32 %938, i32 %939)
  br label %1036

941:                                              ; preds = %922
  %942 = load i32, i32* @op1_larl, align 4
  %943 = load i32, i32* @op2_larl, align 4
  %944 = call i64 @is_ril(i32* %140, i32 %942, i32 %943, i32* %18, i32* %22)
  %945 = icmp ne i64 %944, 0
  br i1 %945, label %946, label %959

946:                                              ; preds = %941
  %947 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %948 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %947, i32 0, i32 3
  %949 = load %struct.prologue_value*, %struct.prologue_value** %948, align 8
  %950 = load i32, i32* %18, align 4
  %951 = zext i32 %950 to i64
  %952 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %949, i64 %951
  %953 = load i64, i64* %11, align 8
  %954 = load i32, i32* %22, align 4
  %955 = mul nsw i32 %954, 2
  %956 = sext i32 %955 to i64
  %957 = add nsw i64 %953, %956
  %958 = call i32 @pv_set_to_constant(%struct.prologue_value* %952, i64 %957)
  br label %1035

959:                                              ; preds = %941
  %960 = load i32, i32* @op_basr, align 4
  %961 = call i64 @is_rr(i32* %140, i32 %960, i32* %18, i32* %19)
  %962 = icmp ne i64 %961, 0
  br i1 %962, label %963, label %975

963:                                              ; preds = %959
  %964 = load i32, i32* %19, align 4
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %975

966:                                              ; preds = %963
  %967 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %968 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %967, i32 0, i32 3
  %969 = load %struct.prologue_value*, %struct.prologue_value** %968, align 8
  %970 = load i32, i32* %18, align 4
  %971 = zext i32 %970 to i64
  %972 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %969, i64 %971
  %973 = load i64, i64* %12, align 8
  %974 = call i32 @pv_set_to_constant(%struct.prologue_value* %972, i64 %973)
  br label %1034

975:                                              ; preds = %963, %959
  %976 = load i32, i32* @op1_bras, align 4
  %977 = load i32, i32* @op2_bras, align 4
  %978 = call i64 @is_ri(i32* %140, i32 %976, i32 %977, i32* %18, i32* %22)
  %979 = icmp ne i64 %978, 0
  br i1 %979, label %980, label %999

980:                                              ; preds = %975
  %981 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %982 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %981, i32 0, i32 3
  %983 = load %struct.prologue_value*, %struct.prologue_value** %982, align 8
  %984 = load i32, i32* %18, align 4
  %985 = zext i32 %984 to i64
  %986 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %983, i64 %985
  %987 = load i64, i64* %12, align 8
  %988 = call i32 @pv_set_to_constant(%struct.prologue_value* %986, i64 %987)
  %989 = load i64, i64* %11, align 8
  %990 = load i32, i32* %22, align 4
  %991 = mul nsw i32 %990, 2
  %992 = sext i32 %991 to i64
  %993 = add nsw i64 %989, %992
  store i64 %993, i64* %12, align 8
  %994 = load i64, i64* %12, align 8
  %995 = load i64, i64* %11, align 8
  %996 = icmp sle i64 %994, %995
  br i1 %996, label %997, label %998

997:                                              ; preds = %980
  store i32 11, i32* %27, align 4
  br label %1105

998:                                              ; preds = %980
  br label %1033

999:                                              ; preds = %975
  %1000 = load i32, i32* @op_basr, align 4
  %1001 = call i64 @is_rr(i32* %140, i32 %1000, i32* %18, i32* %19)
  %1002 = icmp ne i64 %1001, 0
  br i1 %1002, label %1030, label %1003

1003:                                             ; preds = %999
  %1004 = load i32, i32* @op_bas, align 4
  %1005 = call i64 @is_rx(i32* %140, i32 %1004, i32* %18, i32* %23, i32* %20, i32* %17)
  %1006 = icmp ne i64 %1005, 0
  br i1 %1006, label %1030, label %1007

1007:                                             ; preds = %1003
  %1008 = load i32, i32* @op_bcr, align 4
  %1009 = call i64 @is_rr(i32* %140, i32 %1008, i32* %18, i32* %19)
  %1010 = icmp ne i64 %1009, 0
  br i1 %1010, label %1030, label %1011

1011:                                             ; preds = %1007
  %1012 = load i32, i32* @op_bc, align 4
  %1013 = call i64 @is_rx(i32* %140, i32 %1012, i32* %18, i32* %23, i32* %20, i32* %17)
  %1014 = icmp ne i64 %1013, 0
  br i1 %1014, label %1030, label %1015

1015:                                             ; preds = %1011
  %1016 = load i32, i32* @op1_brc, align 4
  %1017 = load i32, i32* @op2_brc, align 4
  %1018 = call i64 @is_ri(i32* %140, i32 %1016, i32 %1017, i32* %18, i32* %22)
  %1019 = icmp ne i64 %1018, 0
  br i1 %1019, label %1030, label %1020

1020:                                             ; preds = %1015
  %1021 = load i32, i32* @op1_brcl, align 4
  %1022 = load i32, i32* @op2_brcl, align 4
  %1023 = call i64 @is_ril(i32* %140, i32 %1021, i32 %1022, i32* %18, i32* %22)
  %1024 = icmp ne i64 %1023, 0
  br i1 %1024, label %1030, label %1025

1025:                                             ; preds = %1020
  %1026 = load i32, i32* @op1_brasl, align 4
  %1027 = load i32, i32* @op2_brasl, align 4
  %1028 = call i64 @is_ril(i32* %140, i32 %1026, i32 %1027, i32* %19, i32* %22)
  %1029 = icmp ne i64 %1028, 0
  br i1 %1029, label %1030, label %1031

1030:                                             ; preds = %1025, %1020, %1015, %1011, %1007, %1003, %999
  store i32 11, i32* %27, align 4
  br label %1105

1031:                                             ; preds = %1025
  br label %1032

1032:                                             ; preds = %1031
  br label %1033

1033:                                             ; preds = %1032, %998
  br label %1034

1034:                                             ; preds = %1033, %966
  br label %1035

1035:                                             ; preds = %1034, %946
  br label %1036

1036:                                             ; preds = %1035, %927
  br label %1037

1037:                                             ; preds = %1036, %908
  br label %1038

1038:                                             ; preds = %1037, %884
  br label %1039

1039:                                             ; preds = %1038, %857
  br label %1040

1040:                                             ; preds = %1039, %827
  br label %1041

1041:                                             ; preds = %1040, %796
  br label %1042

1042:                                             ; preds = %1041, %765
  br label %1043

1043:                                             ; preds = %1042, %738
  br label %1044

1044:                                             ; preds = %1043, %711
  br label %1045

1045:                                             ; preds = %1044, %681
  br label %1046

1046:                                             ; preds = %1045, %650
  br label %1047

1047:                                             ; preds = %1046, %619
  br label %1048

1048:                                             ; preds = %1047, %592
  br label %1049

1049:                                             ; preds = %1048, %565
  br label %1050

1050:                                             ; preds = %1049, %549
  br label %1051

1051:                                             ; preds = %1050, %532
  br label %1052

1052:                                             ; preds = %1051, %523
  br label %1053

1053:                                             ; preds = %1052, %486
  br label %1054

1054:                                             ; preds = %1053, %449
  br label %1055

1055:                                             ; preds = %1054, %398
  br label %1056

1056:                                             ; preds = %1055, %378
  br label %1057

1057:                                             ; preds = %1056, %354
  br label %1058

1058:                                             ; preds = %1057, %330
  br label %1059

1059:                                             ; preds = %1058, %307
  br label %1060

1060:                                             ; preds = %1059, %283
  br label %1061

1061:                                             ; preds = %1060, %259
  br label %1062

1062:                                             ; preds = %1061, %237
  br label %1063

1063:                                             ; preds = %1062, %215
  br label %1064

1064:                                             ; preds = %1063, %198
  br label %1065

1065:                                             ; preds = %1064, %180
  %1066 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %1067 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %1066, i32 0, i32 3
  %1068 = load %struct.prologue_value*, %struct.prologue_value** %1067, align 8
  %1069 = load i64, i64* @S390_SP_REGNUM, align 8
  %1070 = load i64, i64* @S390_R0_REGNUM, align 8
  %1071 = sub i64 %1069, %1070
  %1072 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %1068, i64 %1071
  store %struct.prologue_value* %1072, %struct.prologue_value** %56, align 8
  %1073 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %1074 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %1073, i32 0, i32 3
  %1075 = load %struct.prologue_value*, %struct.prologue_value** %1074, align 8
  %1076 = load i64, i64* @S390_FRAME_REGNUM, align 8
  %1077 = load i64, i64* @S390_R0_REGNUM, align 8
  %1078 = sub i64 %1076, %1077
  %1079 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %1075, i64 %1078
  store %struct.prologue_value* %1079, %struct.prologue_value** %57, align 8
  %1080 = load %struct.prologue_value*, %struct.prologue_value** %56, align 8
  %1081 = call i32 @pv_is_identical(%struct.prologue_value* %24, %struct.prologue_value* %1080)
  %1082 = icmp ne i32 %1081, 0
  br i1 %1082, label %1088, label %1083

1083:                                             ; preds = %1065
  %1084 = load %struct.prologue_value*, %struct.prologue_value** %56, align 8
  %1085 = load i64, i64* @S390_SP_REGNUM, align 8
  %1086 = call i32 @pv_is_register(%struct.prologue_value* %1084, i64 %1085, i32 0)
  %1087 = icmp ne i32 %1086, 0
  br i1 %1087, label %1088, label %1102

1088:                                             ; preds = %1083, %1065
  %1089 = load %struct.prologue_value*, %struct.prologue_value** %57, align 8
  %1090 = call i32 @pv_is_identical(%struct.prologue_value* %25, %struct.prologue_value* %1089)
  %1091 = icmp ne i32 %1090, 0
  br i1 %1091, label %1097, label %1092

1092:                                             ; preds = %1088
  %1093 = load %struct.prologue_value*, %struct.prologue_value** %57, align 8
  %1094 = load i64, i64* @S390_FRAME_REGNUM, align 8
  %1095 = call i32 @pv_is_register(%struct.prologue_value* %1093, i64 %1094, i32 0)
  %1096 = icmp ne i32 %1095, 0
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1092, %1088
  %1098 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %1099 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %1098, i32 0, i32 2
  %1100 = call i32 @pv_is_identical(%struct.prologue_value* %26, %struct.prologue_value* %1099)
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1104, label %1102

1102:                                             ; preds = %1097, %1092, %1083
  %1103 = load i64, i64* %12, align 8
  store i64 %1103, i64* %10, align 8
  br label %1104

1104:                                             ; preds = %1102, %1097
  store i32 0, i32* %27, align 4
  br label %1105

1105:                                             ; preds = %1104, %1030, %997, %145
  %1106 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %1106)
  %1107 = load i32, i32* %27, align 4
  switch i32 %1107, label %1113 [
    i32 0, label %1108
    i32 11, label %1111
  ]

1108:                                             ; preds = %1105
  br label %1109

1109:                                             ; preds = %1108
  %1110 = load i64, i64* %12, align 8
  store i64 %1110, i64* %11, align 8
  br label %127

1111:                                             ; preds = %1105, %134
  %1112 = load i64, i64* %10, align 8
  ret i64 %1112

1113:                                             ; preds = %1105
  unreachable
}

declare dso_local i32 @gdbarch_ptr_bit(%struct.gdbarch*) #1

declare dso_local i32 @pv_set_to_register(%struct.prologue_value*, i64, i32) #1

declare dso_local i32 @pv_set_to_unknown(%struct.prologue_value*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @s390_readinstruction(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @is_ri(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pv_set_to_constant(%struct.prologue_value*, i64) #1

declare dso_local i64 @is_rr(i32*, i32, i32*, i32*) #1

declare dso_local i64 @is_rre(i32*, i32, i32*, i32*) #1

declare dso_local i64 @is_rx(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_x_addr(%struct.prologue_value*, %struct.prologue_value*, i32, i32, i32) #1

declare dso_local i32 @s390_load(%struct.prologue_value*, i32, %struct.prologue_value*, %struct.s390_prologue_data*) #1

declare dso_local i64 @is_rxy(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @s390_store(%struct.prologue_value*, i32, %struct.prologue_value*, %struct.s390_prologue_data*) #1

declare dso_local i64 @is_rs(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @is_rsy(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pv_add_constant(%struct.prologue_value*, i32) #1

declare dso_local i32 @pv_add(%struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value*) #1

declare dso_local i32 @pv_subtract(%struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value*) #1

declare dso_local i32 @pv_logical_and(%struct.prologue_value*, %struct.prologue_value*, %struct.prologue_value*) #1

declare dso_local i64 @is_ril(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pv_is_identical(%struct.prologue_value*, %struct.prologue_value*) #1

declare dso_local i32 @pv_is_register(%struct.prologue_value*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
