; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.pt_event, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.pt_event = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.pt_block = type { i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_insn = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@pt_insn_binds_to_pip = common dso_local global i32 0, align 4
@pt_insn_binds_to_vmcs = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*)* @pt_blk_proceed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_event(%struct.pt_block_decoder* %0, %struct.pt_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_block*, align 8
  %6 = alloca %struct.pt_insn_ext, align 4
  %7 = alloca %struct.pt_insn, align 4
  %8 = alloca %struct.pt_event*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_block* %1, %struct.pt_block** %5, align 8
  %10 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %11 = icmp ne %struct.pt_block_decoder* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %14 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %19 = icmp ne %struct.pt_block* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %12, %2
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %273

23:                                               ; preds = %17
  %24 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %25 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %24, i32 0, i32 5
  store %struct.pt_event* %25, %struct.pt_event** %8, align 8
  %26 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %27 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %269 [
    i32 141, label %29
    i32 142, label %30
    i32 146, label %53
    i32 147, label %91
    i32 135, label %105
    i32 145, label %125
    i32 128, label %135
    i32 144, label %155
    i32 136, label %165
    i32 140, label %166
    i32 129, label %176
    i32 131, label %196
    i32 139, label %197
    i32 137, label %222
    i32 133, label %247
    i32 132, label %247
    i32 134, label %248
    i32 130, label %268
    i32 143, label %268
    i32 138, label %268
  ]

29:                                               ; preds = %23
  br label %269

30:                                               ; preds = %23
  %31 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %32 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %33 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %34 = call i32 @pt_blk_proceed_to_disabled(%struct.pt_block_decoder* %31, %struct.pt_block* %32, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, %struct.pt_event* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @pte_bad_query, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %273

44:                                               ; preds = %37
  %45 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %46 = call i32 @pt_blk_set_disable_resume_ip(%struct.pt_block_decoder* %45, %struct.pt_insn* %7)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %273

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %30
  br label %269

53:                                               ; preds = %23
  %54 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %55 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %56 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %57 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %54, %struct.pt_block* %55, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %273

66:                                               ; preds = %53
  %67 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %68 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %66
  %75 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %76 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %77 = call i32 @pt_blk_handle_erratum_skd022(%struct.pt_block_decoder* %75, %struct.pt_event* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %273

85:                                               ; preds = %80
  %86 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %87 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %88 = call i32 @pt_blk_proceed_event(%struct.pt_block_decoder* %86, %struct.pt_block* %87)
  store i32 %88, i32* %3, align 4
  br label %273

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %66
  br label %269

91:                                               ; preds = %23
  %92 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %93 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %94 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %95 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %92, %struct.pt_block* %93, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %273

104:                                              ; preds = %91
  br label %269

105:                                              ; preds = %23
  %106 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %107 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  br label %269

111:                                              ; preds = %105
  %112 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %113 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %114 = load i32, i32* @pt_insn_binds_to_pip, align 4
  %115 = call i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder* %112, %struct.pt_block* %113, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %273

120:                                              ; preds = %111
  %121 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %122 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %124 = call i32 @pt_blk_postpone_insn(%struct.pt_block_decoder* %123, %struct.pt_insn* %7, %struct.pt_insn_ext* %6)
  store i32 %124, i32* %3, align 4
  br label %273

125:                                              ; preds = %23
  %126 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %127 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %128 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %129 = call i32 @pt_blk_proceed_to_async_paging(%struct.pt_block_decoder* %126, %struct.pt_block* %127, %struct.pt_event* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %273

134:                                              ; preds = %125
  br label %269

135:                                              ; preds = %23
  %136 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %137 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %269

141:                                              ; preds = %135
  %142 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %143 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %144 = load i32, i32* @pt_insn_binds_to_vmcs, align 4
  %145 = call i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder* %142, %struct.pt_block* %143, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %273

150:                                              ; preds = %141
  %151 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %152 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %154 = call i32 @pt_blk_postpone_insn(%struct.pt_block_decoder* %153, %struct.pt_insn* %7, %struct.pt_insn_ext* %6)
  store i32 %154, i32* %3, align 4
  br label %273

155:                                              ; preds = %23
  %156 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %157 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %158 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %159 = call i32 @pt_blk_proceed_to_async_vmcs(%struct.pt_block_decoder* %156, %struct.pt_block* %157, %struct.pt_event* %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %273

164:                                              ; preds = %155
  br label %269

165:                                              ; preds = %23
  br label %269

166:                                              ; preds = %23
  %167 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %168 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %169 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %170 = call i32 @pt_blk_proceed_to_exec_mode(%struct.pt_block_decoder* %167, %struct.pt_block* %168, %struct.pt_event* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %3, align 4
  br label %273

175:                                              ; preds = %166
  br label %269

176:                                              ; preds = %23
  %177 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %178 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %269

182:                                              ; preds = %176
  %183 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %184 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %185 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %186 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %183, %struct.pt_block* %184, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %3, align 4
  br label %273

195:                                              ; preds = %182
  br label %269

196:                                              ; preds = %23
  br label %269

197:                                              ; preds = %23
  %198 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %199 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %204 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202, %197
  br label %269

208:                                              ; preds = %202
  %209 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %210 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %211 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %212 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %209, %struct.pt_block* %210, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp sle i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %208
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %3, align 4
  br label %273

221:                                              ; preds = %208
  br label %269

222:                                              ; preds = %23
  %223 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %224 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %229 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227, %222
  br label %269

233:                                              ; preds = %227
  %234 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %235 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %236 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %237 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %234, %struct.pt_block* %235, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, i32 %240)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp sle i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %233
  %245 = load i32, i32* %9, align 4
  store i32 %245, i32* %3, align 4
  br label %273

246:                                              ; preds = %233
  br label %269

247:                                              ; preds = %23, %23
  br label %269

248:                                              ; preds = %23
  %249 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %250 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  br label %269

254:                                              ; preds = %248
  %255 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %256 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %257 = load %struct.pt_event*, %struct.pt_event** %8, align 8
  %258 = call i32 @pt_blk_proceed_to_ptwrite(%struct.pt_block_decoder* %255, %struct.pt_block* %256, %struct.pt_insn* %7, %struct.pt_insn_ext* %6, %struct.pt_event* %257)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp sle i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i32, i32* %9, align 4
  store i32 %262, i32* %3, align 4
  br label %273

263:                                              ; preds = %254
  %264 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %265 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %264, i32 0, i32 2
  store i32 1, i32* %265, align 4
  %266 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %267 = call i32 @pt_blk_postpone_insn(%struct.pt_block_decoder* %266, %struct.pt_insn* %7, %struct.pt_insn_ext* %6)
  store i32 %267, i32* %3, align 4
  br label %273

268:                                              ; preds = %23, %23, %23
  br label %269

269:                                              ; preds = %23, %268, %253, %247, %246, %232, %221, %207, %196, %195, %181, %175, %165, %164, %140, %134, %110, %104, %90, %52, %29
  %270 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %271 = load i32, i32* @pts_event_pending, align 4
  %272 = call i32 @pt_blk_status(%struct.pt_block_decoder* %270, i32 %271)
  store i32 %272, i32* %3, align 4
  br label %273

273:                                              ; preds = %269, %263, %261, %244, %219, %193, %173, %162, %150, %148, %132, %120, %118, %102, %85, %83, %64, %49, %42, %20
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @pt_blk_proceed_to_disabled(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_set_disable_resume_ip(%struct.pt_block_decoder*, %struct.pt_insn*) #1

declare dso_local i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32) #1

declare dso_local i32 @pt_blk_handle_erratum_skd022(%struct.pt_block_decoder*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32) #1

declare dso_local i32 @pt_blk_postpone_insn(%struct.pt_block_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_blk_proceed_to_async_paging(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_proceed_to_async_vmcs(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_proceed_to_exec_mode(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_proceed_to_ptwrite(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_event*) #1

declare dso_local i32 @pt_blk_status(%struct.pt_block_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
