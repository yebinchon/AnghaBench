; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_no_event_fill_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_no_event_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pt_block = type { i64 }
%struct.pt_block_cache = type { i32 }
%struct.pt_mapped_section = type { i32 }
%struct.pt_bcache_entry = type { i32, i64, i64, i64, i8* }
%struct.pt_insn_ext = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pt_insn = type { i64, i64, i32, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@ptbq_indirect = common dso_local global i8* null, align 8
@ptbq_ind_call = common dso_local global i8* null, align 8
@ptbq_return = common dso_local global i8* null, align 8
@ptbq_cond = common dso_local global i8* null, align 8
@ptbq_decode = common dso_local global i8* null, align 8
@fallthrough = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_block_cache*, %struct.pt_mapped_section*, i64)* @pt_blk_proceed_no_event_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_no_event_fill_cache(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_block_cache* %2, %struct.pt_mapped_section* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_block_decoder*, align 8
  %8 = alloca %struct.pt_block*, align 8
  %9 = alloca %struct.pt_block_cache*, align 8
  %10 = alloca %struct.pt_mapped_section*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_bcache_entry, align 8
  %13 = alloca %struct.pt_insn_ext, align 4
  %14 = alloca %struct.pt_insn, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %7, align 8
  store %struct.pt_block* %1, %struct.pt_block** %8, align 8
  store %struct.pt_block_cache* %2, %struct.pt_block_cache** %9, align 8
  store %struct.pt_mapped_section* %3, %struct.pt_mapped_section** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %22 = icmp ne %struct.pt_block_decoder* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %5
  %27 = load i32, i32* @pte_internal, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %285

29:                                               ; preds = %23
  %30 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %31 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %32 = call i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder* %30, %struct.pt_block* %31, %struct.pt_insn* %14, %struct.pt_insn_ext* %13)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %20, align 4
  store i32 %36, i32* %6, align 4
  br label %285

37:                                               ; preds = %29
  %38 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %39 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @pt_msec_unmap(%struct.pt_mapped_section* %38, i64 %40)
  store i64 %41, i64* %17, align 8
  %42 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %43 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %42, i32 0, i32 1
  %44 = call i32 @pt_insn_next_ip(i64* %43, %struct.pt_insn* %14, %struct.pt_insn_ext* %13)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %128

47:                                               ; preds = %37
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @pte_bad_query, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %6, align 4
  br label %285

54:                                               ; preds = %47
  %55 = call i32 @memset(%struct.pt_bcache_entry* %12, i32 0, i32 40)
  %56 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 2
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 2
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %68, %54
  %71 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %109 [
    i32 129, label %73
    i32 135, label %73
    i32 130, label %73
    i32 131, label %76
    i32 137, label %88
    i32 128, label %100
    i32 136, label %103
    i32 134, label %106
    i32 132, label %106
    i32 133, label %106
  ]

73:                                               ; preds = %70, %70, %70
  %74 = load i32, i32* @pte_internal, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %285

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %13, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @pte_internal, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %285

85:                                               ; preds = %76
  %86 = load i8*, i8** @ptbq_indirect, align 8
  %87 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 4
  store i8* %86, i8** %87, align 8
  br label %109

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %13, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @pte_internal, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %285

97:                                               ; preds = %88
  %98 = load i8*, i8** @ptbq_ind_call, align 8
  %99 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 4
  store i8* %98, i8** %99, align 8
  br label %109

100:                                              ; preds = %70
  %101 = load i8*, i8** @ptbq_return, align 8
  %102 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 4
  store i8* %101, i8** %102, align 8
  br label %109

103:                                              ; preds = %70
  %104 = load i8*, i8** @ptbq_cond, align 8
  %105 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 4
  store i8* %104, i8** %105, align 8
  br label %109

106:                                              ; preds = %70, %70, %70
  %107 = load i8*, i8** @ptbq_indirect, align 8
  %108 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 4
  store i8* %107, i8** %108, align 8
  br label %109

109:                                              ; preds = %70, %106, %103, %100, %97, %85
  %110 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %111 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** @ptbq_decode, align 8
  %116 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 4
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @pt_bcache_add(%struct.pt_block_cache* %118, i64 %119, %struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %12)
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %20, align 4
  store i32 %124, i32* %6, align 4
  br label %285

125:                                              ; preds = %117
  %126 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %127 = call i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder* %126, %struct.pt_insn* %14, %struct.pt_insn_ext* %13)
  store i32 %127, i32* %6, align 4
  br label %285

128:                                              ; preds = %37
  %129 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %130 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %15, align 8
  %132 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %133 = load i64, i64* %15, align 8
  %134 = call i64 @pt_msec_unmap(%struct.pt_mapped_section* %132, i64 %133)
  store i64 %134, i64* %18, align 8
  %135 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  switch i32 %136, label %174 [
    i32 137, label %137
    i32 131, label %143
  ]

137:                                              ; preds = %128
  %138 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %139 = load i64, i64* %17, align 8
  %140 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @pt_blk_add_decode(%struct.pt_block_cache* %138, i64 %139, i64 %141)
  store i32 %142, i32* %6, align 4
  br label %285

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %13, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* @pte_internal, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %285

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %13, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %152
  %159 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %160 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %158, %152
  %167 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %168 = load i64, i64* %17, align 8
  %169 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @pt_blk_add_decode(%struct.pt_block_cache* %167, i64 %168, i64 %170)
  store i32 %171, i32* %6, align 4
  br label %285

172:                                              ; preds = %158
  %173 = load i32, i32* @fallthrough, align 4
  br label %174

174:                                              ; preds = %128, %172
  %175 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @pt_blk_is_in_section(%struct.pt_mapped_section* %175, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %181 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179, %174
  %185 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %186 = load i64, i64* %17, align 8
  %187 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @pt_blk_add_decode(%struct.pt_block_cache* %185, i64 %186, i64 %188)
  store i32 %189, i32* %6, align 4
  br label %285

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %193 = load i64, i64* %18, align 8
  %194 = call i32 @pt_bcache_lookup(%struct.pt_bcache_entry* %12, %struct.pt_block_cache* %192, i64 %193)
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %20, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %6, align 4
  br label %285

199:                                              ; preds = %191
  %200 = call i32 @pt_bce_is_valid(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %12)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %238, label %202

202:                                              ; preds = %199
  %203 = load i64, i64* %11, align 8
  %204 = sub i64 %203, 1
  store i64 %204, i64* %11, align 8
  %205 = load i64, i64* %11, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %209 = load i64, i64* %17, align 8
  %210 = load i64, i64* %18, align 8
  %211 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @pt_blk_add_trampoline(%struct.pt_block_cache* %208, i64 %209, i64 %210, i64 %212)
  store i32 %213, i32* %6, align 4
  br label %285

214:                                              ; preds = %202
  %215 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %216 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %217 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %218 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @pt_blk_proceed_no_event_fill_cache(%struct.pt_block_decoder* %215, %struct.pt_block* %216, %struct.pt_block_cache* %217, %struct.pt_mapped_section* %218, i64 %219)
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = load i32, i32* %20, align 4
  store i32 %224, i32* %6, align 4
  br label %285

225:                                              ; preds = %214
  %226 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %227 = load i64, i64* %18, align 8
  %228 = call i32 @pt_bcache_lookup(%struct.pt_bcache_entry* %12, %struct.pt_block_cache* %226, i64 %227)
  store i32 %228, i32* %20, align 4
  %229 = load i32, i32* %20, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %20, align 4
  store i32 %232, i32* %6, align 4
  br label %285

233:                                              ; preds = %225
  %234 = call i32 @pt_bce_is_valid(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %12)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  store i32 0, i32* %6, align 4
  br label %285

237:                                              ; preds = %233
  br label %238

238:                                              ; preds = %237, %199
  %239 = call i64 @pt_bce_exec_mode(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %12)
  %240 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %239, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load i32, i32* @pte_internal, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %6, align 4
  br label %285

246:                                              ; preds = %238
  %247 = load i64, i64* %15, align 8
  %248 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %247, %249
  store i64 %250, i64* %16, align 8
  %251 = load i64, i64* %16, align 8
  %252 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %251, %253
  store i64 %254, i64* %19, align 8
  %255 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %256 = load i64, i64* %16, align 8
  %257 = call i32 @pt_blk_is_in_section(%struct.pt_mapped_section* %255, i64 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %246
  store i32 0, i32* %6, align 4
  br label %285

260:                                              ; preds = %246
  %261 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 8
  %264 = load i64, i64* %19, align 8
  %265 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 3
  store i64 %264, i64* %265, align 8
  %266 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %260
  %270 = getelementptr inbounds %struct.pt_bcache_entry, %struct.pt_bcache_entry* %12, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %19, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %269, %260
  %275 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %276 = load i64, i64* %17, align 8
  %277 = load i64, i64* %18, align 8
  %278 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %14, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @pt_blk_add_trampoline(%struct.pt_block_cache* %275, i64 %276, i64 %277, i64 %279)
  store i32 %280, i32* %6, align 4
  br label %285

281:                                              ; preds = %269
  %282 = load %struct.pt_block_cache*, %struct.pt_block_cache** %9, align 8
  %283 = load i64, i64* %17, align 8
  %284 = call i32 @pt_bcache_add(%struct.pt_block_cache* %282, i64 %283, %struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8 %12)
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %281, %274, %259, %243, %236, %231, %223, %207, %197, %184, %166, %149, %137, %125, %123, %94, %82, %73, %52, %35, %26
  %286 = load i32, i32* %6, align 4
  ret i32 %286
}

declare dso_local i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i64 @pt_msec_unmap(%struct.pt_mapped_section*, i64) #1

declare dso_local i32 @pt_insn_next_ip(i64*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @memset(%struct.pt_bcache_entry*, i32, i32) #1

declare dso_local i32 @pt_bcache_add(%struct.pt_block_cache*, i64, %struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

declare dso_local i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_blk_add_decode(%struct.pt_block_cache*, i64, i64) #1

declare dso_local i32 @pt_blk_is_in_section(%struct.pt_mapped_section*, i64) #1

declare dso_local i32 @pt_bcache_lookup(%struct.pt_bcache_entry*, %struct.pt_block_cache*, i64) #1

declare dso_local i32 @pt_bce_is_valid(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

declare dso_local i32 @pt_blk_add_trampoline(%struct.pt_block_cache*, i64, i64, i64) #1

declare dso_local i64 @pt_bce_exec_mode(%struct.pt_bcache_entry* byval(%struct.pt_bcache_entry) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
