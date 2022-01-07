; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi_freebsd.c_vm_setup_freebsd_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi_freebsd.c_vm_setup_freebsd_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@CR0_PE = common dso_local global i32 0, align 4
@CR0_PG = common dso_local global i32 0, align 4
@CR0_NE = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@CR4_PAE = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@DESC_UNUSABLE = common dso_local global i32 0, align 4
@GUEST_CODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@GUEST_DATA_SEL = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@GUEST_GDTR_LIMIT64 = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_setup_freebsd_registers(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* @CR0_PE, align 4
  %23 = load i32, i32* @CR0_PG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CR0_NE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @vm_set_register(%struct.vmctx* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  br label %252

34:                                               ; preds = %6
  %35 = load i32, i32* @CR4_PAE, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @vm_set_register(%struct.vmctx* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %252

43:                                               ; preds = %34
  %44 = load i32, i32* @EFER_LME, align 4
  %45 = load i32, i32* @EFER_LMA, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %16, align 4
  %47 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @vm_set_register(%struct.vmctx* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %252

54:                                               ; preds = %43
  store i32 2, i32* %17, align 4
  %55 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @vm_set_register(%struct.vmctx* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %252

63:                                               ; preds = %54
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 8347, i32* %19, align 4
  %64 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @vm_set_desc(%struct.vmctx* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %252

74:                                               ; preds = %63
  store i32 147, i32* %19, align 4
  %75 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @vm_set_desc(%struct.vmctx* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %252

85:                                               ; preds = %74
  %86 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %19, align 4
  %92 = call i32 @vm_set_desc(%struct.vmctx* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %252

96:                                               ; preds = %85
  %97 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @vm_set_desc(%struct.vmctx* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %252

107:                                              ; preds = %96
  %108 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @vm_set_desc(%struct.vmctx* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %252

118:                                              ; preds = %107
  %119 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @vm_set_desc(%struct.vmctx* %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %252

129:                                              ; preds = %118
  store i32 139, i32* %19, align 4
  %130 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @vm_set_desc(%struct.vmctx* %130, i32 %131, i32 %132, i32 0, i32 0, i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %252

138:                                              ; preds = %129
  %139 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %142 = load i32, i32* @DESC_UNUSABLE, align 4
  %143 = call i32 @vm_set_desc(%struct.vmctx* %139, i32 %140, i32 %141, i32 0, i32 0, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %252

147:                                              ; preds = %138
  %148 = load i32, i32* @GUEST_CODE_SEL, align 4
  %149 = load i32, i32* @SEL_KPL, align 4
  %150 = call i32 @GSEL(i32 %148, i32 %149)
  store i32 %150, i32* %21, align 4
  %151 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %154 = load i32, i32* %21, align 4
  %155 = call i32 @vm_set_register(%struct.vmctx* %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %252

158:                                              ; preds = %147
  %159 = load i32, i32* @GUEST_DATA_SEL, align 4
  %160 = load i32, i32* @SEL_KPL, align 4
  %161 = call i32 @GSEL(i32 %159, i32 %160)
  store i32 %161, i32* %21, align 4
  %162 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %165 = load i32, i32* %21, align 4
  %166 = call i32 @vm_set_register(%struct.vmctx* %162, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %252

169:                                              ; preds = %158
  %170 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %173 = load i32, i32* %21, align 4
  %174 = call i32 @vm_set_register(%struct.vmctx* %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %252

177:                                              ; preds = %169
  %178 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %181 = load i32, i32* %21, align 4
  %182 = call i32 @vm_set_register(%struct.vmctx* %178, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %252

185:                                              ; preds = %177
  %186 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %189 = load i32, i32* %21, align 4
  %190 = call i32 @vm_set_register(%struct.vmctx* %186, i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %252

193:                                              ; preds = %185
  %194 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @vm_set_register(%struct.vmctx* %194, i32 %195, i32 %196, i32 %197)
  store i32 %198, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %252

201:                                              ; preds = %193
  %202 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %205 = call i32 @vm_set_register(%struct.vmctx* %202, i32 %203, i32 %204, i32 0)
  store i32 %205, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %252

208:                                              ; preds = %201
  %209 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %212 = call i32 @vm_set_register(%struct.vmctx* %209, i32 %210, i32 %211, i32 0)
  store i32 %212, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %252

215:                                              ; preds = %208
  %216 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @vm_set_register(%struct.vmctx* %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %252

223:                                              ; preds = %215
  %224 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @vm_set_register(%struct.vmctx* %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %252

231:                                              ; preds = %223
  %232 = load i32, i32* %11, align 4
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* @GUEST_GDTR_LIMIT64, align 4
  store i32 %233, i32* %20, align 4
  %234 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %20, align 4
  %239 = call i32 @vm_set_desc(%struct.vmctx* %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 0)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %231
  br label %252

243:                                              ; preds = %231
  %244 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @vm_set_register(%struct.vmctx* %244, i32 %245, i32 %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %252

251:                                              ; preds = %243
  store i32 0, i32* %13, align 4
  br label %252

252:                                              ; preds = %251, %250, %242, %230, %222, %214, %207, %200, %192, %184, %176, %168, %157, %146, %137, %128, %117, %106, %95, %84, %73, %62, %53, %42, %33
  %253 = load i32, i32* %13, align 4
  ret i32 %253
}

declare dso_local i32 @vm_set_register(%struct.vmctx*, i32, i32, i32) #1

declare dso_local i32 @vm_set_desc(%struct.vmctx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
