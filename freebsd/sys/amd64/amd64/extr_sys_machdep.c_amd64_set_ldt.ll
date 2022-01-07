; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_amd64_set_ldt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_amd64_set_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.proc*, i32 }
%struct.proc = type { %struct.mdproc }
%struct.mdproc = type { %struct.proc_ldt* }
%struct.proc_ldt = type { i64 }
%struct.i386_ldt_args = type { i32, i32, i64 }
%struct.user_segment_descriptor = type { i32, i64, i64 }

@PCB_FULL_IRET = common dso_local global i32 0, align 4
@max_ldt_segment = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@dt_lock = common dso_local global i32 0, align 4
@LDT_AUTO_ALLOC = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@SEL_UPL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd64_set_ldt(%struct.thread* %0, %struct.i386_ldt_args* %1, %struct.user_segment_descriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.i386_ldt_args*, align 8
  %7 = alloca %struct.user_segment_descriptor*, align 8
  %8 = alloca %struct.mdproc*, align 8
  %9 = alloca %struct.proc_ldt*, align 8
  %10 = alloca %struct.user_segment_descriptor*, align 8
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.i386_ldt_args* %1, %struct.i386_ldt_args** %6, align 8
  store %struct.user_segment_descriptor* %2, %struct.user_segment_descriptor** %7, align 8
  %15 = load %struct.thread*, %struct.thread** %5, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  store %struct.mdproc* %18, %struct.mdproc** %8, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCB_FULL_IRET, align 4
  %23 = call i32 @set_pcb_flags(i32 %21, i32 %22)
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  store %struct.proc* %26, %struct.proc** %11, align 8
  %27 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %7, align 8
  %28 = icmp eq %struct.user_segment_descriptor* %27, null
  br i1 %28, label %29, label %109

29:                                               ; preds = %3
  %30 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %31 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %36 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* @max_ldt_segment, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %43 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %46 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %305

51:                                               ; preds = %44
  %52 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %53 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %52, i32 0, i32 0
  %54 = load %struct.proc_ldt*, %struct.proc_ldt** %53, align 8
  store %struct.proc_ldt* %54, %struct.proc_ldt** %9, align 8
  %55 = icmp eq %struct.proc_ldt* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %58 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @max_ldt_segment, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %51
  store i32 0, i32* %4, align 4
  br label %305

64:                                               ; preds = %56
  %65 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %66 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %69 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @max_ldt_segment, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i64, i64* @max_ldt_segment, align 8
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %76, %64
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %81 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %4, align 4
  br label %305

87:                                               ; preds = %78
  %88 = call i32 @mtx_lock(i32* @dt_lock)
  %89 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %90 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %104, %87
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %99 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i64*
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store volatile i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %93

107:                                              ; preds = %93
  %108 = call i32 @mtx_unlock(i32* @dt_lock)
  store i32 0, i32* %4, align 4
  br label %305

109:                                              ; preds = %3
  %110 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %111 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @LDT_AUTO_ALLOC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %118 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %150, label %121

121:                                              ; preds = %116, %109
  %122 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %123 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %126 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %12, align 8
  %130 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %131 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @max_ldt_segment, align 8
  %135 = icmp uge i64 %133, %134
  br i1 %135, label %147, label %136

136:                                              ; preds = %121
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* @max_ldt_segment, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %143 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %141, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %140, %136, %121
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %4, align 4
  br label %305

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %116
  store i64 0, i64* %13, align 8
  br label %151

151:                                              ; preds = %195, %150
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %154 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ult i64 %152, %156
  br i1 %157, label %158, label %198

158:                                              ; preds = %151
  %159 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %7, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %159, i64 %160
  store %struct.user_segment_descriptor* %161, %struct.user_segment_descriptor** %10, align 8
  %162 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %163 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %179 [
    i32 134, label %165
    i32 139, label %168
    i32 135, label %168
    i32 143, label %168
    i32 142, label %168
    i32 130, label %168
    i32 141, label %168
    i32 140, label %168
    i32 133, label %168
    i32 128, label %168
    i32 132, label %168
    i32 138, label %168
    i32 137, label %168
    i32 131, label %168
    i32 136, label %168
    i32 129, label %168
    i32 156, label %170
    i32 157, label %170
    i32 152, label %170
    i32 153, label %170
    i32 151, label %178
    i32 150, label %178
    i32 147, label %178
    i32 146, label %178
    i32 149, label %178
    i32 148, label %178
    i32 145, label %178
    i32 144, label %178
    i32 159, label %178
    i32 158, label %178
    i32 155, label %178
    i32 154, label %178
  ]

165:                                              ; preds = %158
  %166 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %167 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %181

168:                                              ; preds = %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158
  %169 = load i32, i32* @EACCES, align 4
  store i32 %169, i32* %4, align 4
  br label %305

170:                                              ; preds = %158, %158, %158, %158
  %171 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %172 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @EACCES, align 4
  store i32 %176, i32* %4, align 4
  br label %305

177:                                              ; preds = %170
  br label %181

178:                                              ; preds = %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158, %158
  br label %181

179:                                              ; preds = %158
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %4, align 4
  br label %305

181:                                              ; preds = %178, %177, %165
  %182 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %183 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %188 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SEL_UPL, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @EACCES, align 4
  store i32 %193, i32* %4, align 4
  br label %305

194:                                              ; preds = %186, %181
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %13, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %13, align 8
  br label %151

198:                                              ; preds = %151
  %199 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %200 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* @LDT_AUTO_ALLOC, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %259

205:                                              ; preds = %198
  %206 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %207 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %259

210:                                              ; preds = %205
  %211 = call i32 @mtx_lock(i32* @dt_lock)
  %212 = load %struct.proc*, %struct.proc** %11, align 8
  %213 = call %struct.proc_ldt* @user_ldt_alloc(%struct.proc* %212, i32 0)
  store %struct.proc_ldt* %213, %struct.proc_ldt** %9, align 8
  %214 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %215 = icmp eq %struct.proc_ldt* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = call i32 @mtx_unlock(i32* @dt_lock)
  %218 = load i32, i32* @ENOMEM, align 4
  store i32 %218, i32* %4, align 4
  br label %305

219:                                              ; preds = %210
  store i64 16, i64* %13, align 8
  %220 = load %struct.proc_ldt*, %struct.proc_ldt** %9, align 8
  %221 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to %struct.user_segment_descriptor*
  %224 = load i64, i64* %13, align 8
  %225 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %223, i64 %224
  store %struct.user_segment_descriptor* %225, %struct.user_segment_descriptor** %10, align 8
  br label %226

226:                                              ; preds = %237, %219
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* @max_ldt_segment, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %232 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 134
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %242

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %13, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %13, align 8
  %240 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %241 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %240, i32 1
  store %struct.user_segment_descriptor* %241, %struct.user_segment_descriptor** %10, align 8
  br label %226

242:                                              ; preds = %235, %226
  %243 = load i64, i64* %13, align 8
  %244 = load i64, i64* @max_ldt_segment, align 8
  %245 = icmp uge i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = call i32 @mtx_unlock(i32* @dt_lock)
  %248 = load i32, i32* @ENOSPC, align 4
  store i32 %248, i32* %4, align 4
  br label %305

249:                                              ; preds = %242
  %250 = load i64, i64* %13, align 8
  %251 = trunc i64 %250 to i32
  %252 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %253 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.thread*, %struct.thread** %5, align 8
  %255 = load i64, i64* %13, align 8
  %256 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %7, align 8
  %257 = call i32 @amd64_set_ldt_data(%struct.thread* %254, i64 %255, i32 1, %struct.user_segment_descriptor* %256)
  store i32 %257, i32* %14, align 4
  %258 = call i32 @mtx_unlock(i32* @dt_lock)
  br label %291

259:                                              ; preds = %205, %198
  %260 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %261 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %264 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %262, %265
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %12, align 8
  %268 = load i64, i64* %12, align 8
  %269 = load i64, i64* @max_ldt_segment, align 8
  %270 = icmp ugt i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %259
  %272 = load i32, i32* @EINVAL, align 4
  store i32 %272, i32* %4, align 4
  br label %305

273:                                              ; preds = %259
  %274 = call i32 @mtx_lock(i32* @dt_lock)
  %275 = load %struct.proc*, %struct.proc** %11, align 8
  %276 = call %struct.proc_ldt* @user_ldt_alloc(%struct.proc* %275, i32 0)
  %277 = icmp ne %struct.proc_ldt* %276, null
  br i1 %277, label %278, label %289

278:                                              ; preds = %273
  %279 = load %struct.thread*, %struct.thread** %5, align 8
  %280 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %281 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %285 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %7, align 8
  %288 = call i32 @amd64_set_ldt_data(%struct.thread* %279, i64 %283, i32 %286, %struct.user_segment_descriptor* %287)
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %278, %273
  %290 = call i32 @mtx_unlock(i32* @dt_lock)
  br label %291

291:                                              ; preds = %289, %249
  %292 = load i32, i32* %14, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %291
  %295 = load %struct.i386_ldt_args*, %struct.i386_ldt_args** %6, align 8
  %296 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = load %struct.thread*, %struct.thread** %5, align 8
  %300 = getelementptr inbounds %struct.thread, %struct.thread* %299, i32 0, i32 0
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 0
  store i64 %298, i64* %302, align 8
  br label %303

303:                                              ; preds = %294, %291
  %304 = load i32, i32* %14, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %303, %271, %246, %216, %192, %179, %175, %168, %147, %107, %85, %63, %49
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @set_pcb_flags(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.proc_ldt* @user_ldt_alloc(%struct.proc*, i32) #1

declare dso_local i32 @amd64_set_ldt_data(%struct.thread*, i64, i32, %struct.user_segment_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
