; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@CR0_NE = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RCX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_IDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_reset(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 2, i32* %6, align 4
  %16 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @vm_set_register(%struct.vmctx* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %293

24:                                               ; preds = %2
  store i32 65520, i32* %7, align 4
  %25 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @vm_set_register(%struct.vmctx* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %293

32:                                               ; preds = %24
  %33 = load i32, i32* @CR0_NE, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @vm_set_register(%struct.vmctx* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %293

41:                                               ; preds = %32
  %42 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @vm_set_register(%struct.vmctx* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %293

49:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %50 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @vm_set_register(%struct.vmctx* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %293

57:                                               ; preds = %49
  store i32 -65536, i32* %11, align 4
  store i32 65535, i32* %14, align 4
  store i32 147, i32* %13, align 4
  %58 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @vm_set_desc(%struct.vmctx* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %293

68:                                               ; preds = %57
  store i32 61440, i32* %15, align 4
  %69 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @vm_set_register(%struct.vmctx* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %293

76:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  store i32 65535, i32* %14, align 4
  store i32 147, i32* %13, align 4
  %77 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @vm_set_desc(%struct.vmctx* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %293

87:                                               ; preds = %76
  %88 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @vm_set_desc(%struct.vmctx* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %293

98:                                               ; preds = %87
  %99 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @vm_set_desc(%struct.vmctx* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %293

109:                                              ; preds = %98
  %110 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @vm_set_desc(%struct.vmctx* %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %293

120:                                              ; preds = %109
  %121 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @vm_set_desc(%struct.vmctx* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %293

131:                                              ; preds = %120
  store i32 0, i32* %15, align 4
  %132 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @vm_set_register(%struct.vmctx* %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %293

139:                                              ; preds = %131
  %140 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @vm_set_register(%struct.vmctx* %140, i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %293

147:                                              ; preds = %139
  %148 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @vm_set_register(%struct.vmctx* %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %293

155:                                              ; preds = %147
  %156 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @vm_set_register(%struct.vmctx* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %293

163:                                              ; preds = %155
  %164 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @vm_set_register(%struct.vmctx* %164, i32 %165, i32 %166, i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %293

171:                                              ; preds = %163
  store i32 3840, i32* %12, align 4
  %172 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @vm_set_register(%struct.vmctx* %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %293

179:                                              ; preds = %171
  %180 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @vm_set_register(%struct.vmctx* %180, i32 %181, i32 %182, i32 %183)
  store i32 %184, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %293

187:                                              ; preds = %179
  %188 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @VM_REG_GUEST_RCX, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @vm_set_register(%struct.vmctx* %188, i32 %189, i32 %190, i32 %191)
  store i32 %192, i32* %5, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %293

195:                                              ; preds = %187
  %196 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @vm_set_register(%struct.vmctx* %196, i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %5, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %293

203:                                              ; preds = %195
  %204 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @vm_set_register(%struct.vmctx* %204, i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %293

211:                                              ; preds = %203
  %212 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @vm_set_register(%struct.vmctx* %212, i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %293

219:                                              ; preds = %211
  %220 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @vm_set_register(%struct.vmctx* %220, i32 %221, i32 %222, i32 %223)
  store i32 %224, i32* %5, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %293

227:                                              ; preds = %219
  %228 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @vm_set_register(%struct.vmctx* %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %5, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %293

235:                                              ; preds = %227
  store i32 0, i32* %11, align 4
  store i32 65535, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %236 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @vm_set_desc(%struct.vmctx* %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br label %293

246:                                              ; preds = %235
  %247 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @VM_REG_GUEST_IDTR, align 4
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @vm_set_desc(%struct.vmctx* %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %293

257:                                              ; preds = %246
  store i32 0, i32* %11, align 4
  store i32 65535, i32* %14, align 4
  store i32 139, i32* %13, align 4
  %258 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %261 = load i32, i32* %13, align 4
  %262 = call i32 @vm_set_desc(%struct.vmctx* %258, i32 %259, i32 %260, i32 0, i32 0, i32 %261)
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  br label %293

266:                                              ; preds = %257
  store i32 0, i32* %15, align 4
  %267 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @vm_set_register(%struct.vmctx* %267, i32 %268, i32 %269, i32 %270)
  store i32 %271, i32* %5, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %293

274:                                              ; preds = %266
  store i32 0, i32* %11, align 4
  store i32 65535, i32* %14, align 4
  store i32 130, i32* %13, align 4
  %275 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %13, align 4
  %281 = call i32 @vm_set_desc(%struct.vmctx* %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  store i32 %281, i32* %5, align 4
  %282 = load i32, i32* %5, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %274
  br label %293

285:                                              ; preds = %274
  store i32 0, i32* %15, align 4
  %286 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %289 = call i32 @vm_set_register(%struct.vmctx* %286, i32 %287, i32 %288, i32 0)
  store i32 %289, i32* %5, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  br label %293

292:                                              ; preds = %285
  store i32 0, i32* %5, align 4
  br label %293

293:                                              ; preds = %292, %291, %284, %273, %265, %256, %245, %234, %226, %218, %210, %202, %194, %186, %178, %170, %162, %154, %146, %138, %130, %119, %108, %97, %86, %75, %67, %56, %48, %40, %31, %23
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local i32 @vm_set_register(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @vm_set_desc(%struct.vmctx*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
