; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_pt_instruction_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_pt_instruction_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn = type { i8* }
%struct.pt_insn_ext = type { i8*, i32 }
%struct.pt_ild = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@pte_internal = common dso_local global i32 0, align 4
@PTI_INST_INVALID = common dso_local global i8* null, align 8
@ptic_other = common dso_local global i8* null, align 8
@PTI_MAP_1 = common dso_local global i64 0, align 8
@PTI_MAP_0 = common dso_local global i64 0, align 8
@ptic_cond_jump = common dso_local global i8* null, align 8
@PTI_INST_JCC = common dso_local global i8* null, align 8
@ptic_far_call = common dso_local global i8* null, align 8
@PTI_INST_CALL_9A = common dso_local global i8* null, align 8
@ptic_call = common dso_local global i8* null, align 8
@PTI_INST_CALL_FFr2 = common dso_local global i8* null, align 8
@PTI_INST_CALL_FFr3 = common dso_local global i8* null, align 8
@ptic_jump = common dso_local global i8* null, align 8
@PTI_INST_JMP_FFr4 = common dso_local global i8* null, align 8
@ptic_far_jump = common dso_local global i8* null, align 8
@PTI_INST_JMP_FFr5 = common dso_local global i8* null, align 8
@PTI_INST_CALL_E8 = common dso_local global i8* null, align 8
@PTI_INST_INT = common dso_local global i8* null, align 8
@PTI_INST_INT3 = common dso_local global i8* null, align 8
@PTI_INST_INTO = common dso_local global i8* null, align 8
@PTI_INST_INT1 = common dso_local global i8* null, align 8
@ptic_far_return = common dso_local global i8* null, align 8
@PTI_INST_IRET = common dso_local global i8* null, align 8
@PTI_INST_JMP_E9 = common dso_local global i8* null, align 8
@PTI_INST_JMP_EA = common dso_local global i8* null, align 8
@PTI_INST_JMP_EB = common dso_local global i8* null, align 8
@PTI_INST_JrCXZ = common dso_local global i8* null, align 8
@PTI_INST_LOOPNE = common dso_local global i8* null, align 8
@PTI_INST_LOOPE = common dso_local global i8* null, align 8
@PTI_INST_LOOP = common dso_local global i8* null, align 8
@PTI_INST_MOV_CR3 = common dso_local global i8* null, align 8
@ptic_return = common dso_local global i8* null, align 8
@PTI_INST_RET_C3 = common dso_local global i8* null, align 8
@PTI_INST_RET_C2 = common dso_local global i8* null, align 8
@PTI_INST_RET_CB = common dso_local global i8* null, align 8
@PTI_INST_RET_CA = common dso_local global i8* null, align 8
@PTI_INST_SYSCALL = common dso_local global i8* null, align 8
@PTI_INST_SYSENTER = common dso_local global i8* null, align 8
@PTI_INST_SYSEXIT = common dso_local global i8* null, align 8
@PTI_INST_SYSRET = common dso_local global i8* null, align 8
@PTI_INST_VMCALL = common dso_local global i8* null, align 8
@PTI_INST_VMLAUNCH = common dso_local global i8* null, align 8
@PTI_INST_VMRESUME = common dso_local global i8* null, align 8
@PTI_INST_VMPTRLD = common dso_local global i8* null, align 8
@ptic_ptwrite = common dso_local global i8* null, align 8
@PTI_INST_PTWRITE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_ild*)* @pt_instruction_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_instruction_decode(%struct.pt_insn* %0, %struct.pt_insn_ext* %1, %struct.pt_ild* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn*, align 8
  %6 = alloca %struct.pt_insn_ext*, align 8
  %7 = alloca %struct.pt_ild*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pt_insn* %0, %struct.pt_insn** %5, align 8
  store %struct.pt_insn_ext* %1, %struct.pt_insn_ext** %6, align 8
  store %struct.pt_ild* %2, %struct.pt_ild** %7, align 8
  %11 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %12 = icmp ne %struct.pt_insn_ext* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %15 = icmp ne %struct.pt_ild* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %532

19:                                               ; preds = %13
  %20 = load i8*, i8** @PTI_INST_INVALID, align 8
  %21 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %22 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %24 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %23, i32 0, i32 1
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load i8*, i8** @ptic_other, align 8
  %27 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %28 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %30 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %33 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @PTI_MAP_1, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %532

39:                                               ; preds = %19
  %40 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %41 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %532

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  %49 = icmp sge i64 %48, 112
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = icmp sle i64 %51, 127
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @PTI_MAP_0, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i8*, i8** @ptic_cond_jump, align 8
  %59 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %60 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @PTI_INST_JCC, align 8
  %62 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %63 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %65 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %66 = call i32 @set_branch_target(%struct.pt_insn_ext* %64, %struct.pt_ild* %65)
  store i32 %66, i32* %4, align 4
  br label %532

67:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %532

68:                                               ; preds = %50, %47
  %69 = load i64, i64* %8, align 8
  %70 = icmp sge i64 %69, 128
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i64, i64* %8, align 8
  %73 = icmp sle i64 %72, 143
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @PTI_MAP_1, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i8*, i8** @ptic_cond_jump, align 8
  %80 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %81 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @PTI_INST_JCC, align 8
  %83 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %84 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %86 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %87 = call i32 @set_branch_target(%struct.pt_insn_ext* %85, %struct.pt_ild* %86)
  store i32 %87, i32* %4, align 4
  br label %532

88:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %532

89:                                               ; preds = %71, %68
  %90 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %91 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  switch i64 %92, label %531 [
    i64 154, label %93
    i64 255, label %105
    i64 232, label %157
    i64 205, label %172
    i64 204, label %184
    i64 206, label %196
    i64 241, label %208
    i64 207, label %220
    i64 233, label %232
    i64 234, label %247
    i64 235, label %259
    i64 227, label %274
    i64 224, label %289
    i64 225, label %304
    i64 226, label %319
    i64 34, label %334
    i64 195, label %356
    i64 194, label %368
    i64 203, label %380
    i64 202, label %392
    i64 5, label %404
    i64 52, label %416
    i64 53, label %428
    i64 7, label %440
    i64 1, label %452
    i64 199, label %484
    i64 174, label %501
  ]

93:                                               ; preds = %89
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @PTI_MAP_0, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i8*, i8** @ptic_far_call, align 8
  %99 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %100 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @PTI_INST_CALL_9A, align 8
  %102 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %103 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %93
  store i32 0, i32* %4, align 4
  br label %532

105:                                              ; preds = %89
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @PTI_MAP_0, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %156

109:                                              ; preds = %105
  %110 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %111 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %110)
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp eq i64 %113, 2
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i8*, i8** @ptic_call, align 8
  %117 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %118 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @PTI_INST_CALL_FFr2, align 8
  %120 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %121 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %155

122:                                              ; preds = %109
  %123 = load i64, i64* %10, align 8
  %124 = icmp eq i64 %123, 3
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i8*, i8** @ptic_far_call, align 8
  %127 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %128 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @PTI_INST_CALL_FFr3, align 8
  %130 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %131 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %154

132:                                              ; preds = %122
  %133 = load i64, i64* %10, align 8
  %134 = icmp eq i64 %133, 4
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i8*, i8** @ptic_jump, align 8
  %137 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %138 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @PTI_INST_JMP_FFr4, align 8
  %140 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %141 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %153

142:                                              ; preds = %132
  %143 = load i64, i64* %10, align 8
  %144 = icmp eq i64 %143, 5
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i8*, i8** @ptic_far_jump, align 8
  %147 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %148 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @PTI_INST_JMP_FFr5, align 8
  %150 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %151 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %145, %142
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153, %125
  br label %155

155:                                              ; preds = %154, %115
  br label %156

156:                                              ; preds = %155, %105
  store i32 0, i32* %4, align 4
  br label %532

157:                                              ; preds = %89
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @PTI_MAP_0, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %157
  %162 = load i8*, i8** @ptic_call, align 8
  %163 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %164 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @PTI_INST_CALL_E8, align 8
  %166 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %167 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %169 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %170 = call i32 @set_branch_target(%struct.pt_insn_ext* %168, %struct.pt_ild* %169)
  store i32 %170, i32* %4, align 4
  br label %532

171:                                              ; preds = %157
  store i32 0, i32* %4, align 4
  br label %532

172:                                              ; preds = %89
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @PTI_MAP_0, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load i8*, i8** @ptic_far_call, align 8
  %178 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %179 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** @PTI_INST_INT, align 8
  %181 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %182 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %176, %172
  store i32 0, i32* %4, align 4
  br label %532

184:                                              ; preds = %89
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* @PTI_MAP_0, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i8*, i8** @ptic_far_call, align 8
  %190 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %191 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** @PTI_INST_INT3, align 8
  %193 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %194 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %188, %184
  store i32 0, i32* %4, align 4
  br label %532

196:                                              ; preds = %89
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* @PTI_MAP_0, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load i8*, i8** @ptic_far_call, align 8
  %202 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %203 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  %204 = load i8*, i8** @PTI_INST_INTO, align 8
  %205 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %206 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %200, %196
  store i32 0, i32* %4, align 4
  br label %532

208:                                              ; preds = %89
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* @PTI_MAP_0, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i8*, i8** @ptic_far_call, align 8
  %214 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %215 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @PTI_INST_INT1, align 8
  %217 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %218 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %212, %208
  store i32 0, i32* %4, align 4
  br label %532

220:                                              ; preds = %89
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* @PTI_MAP_0, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = load i8*, i8** @ptic_far_return, align 8
  %226 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %227 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %226, i32 0, i32 0
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @PTI_INST_IRET, align 8
  %229 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %230 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  br label %231

231:                                              ; preds = %224, %220
  store i32 0, i32* %4, align 4
  br label %532

232:                                              ; preds = %89
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* @PTI_MAP_0, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  %237 = load i8*, i8** @ptic_jump, align 8
  %238 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %239 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** @PTI_INST_JMP_E9, align 8
  %241 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %242 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  %243 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %244 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %245 = call i32 @set_branch_target(%struct.pt_insn_ext* %243, %struct.pt_ild* %244)
  store i32 %245, i32* %4, align 4
  br label %532

246:                                              ; preds = %232
  store i32 0, i32* %4, align 4
  br label %532

247:                                              ; preds = %89
  %248 = load i64, i64* %9, align 8
  %249 = load i64, i64* @PTI_MAP_0, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %247
  %252 = load i8*, i8** @ptic_far_jump, align 8
  %253 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %254 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %253, i32 0, i32 0
  store i8* %252, i8** %254, align 8
  %255 = load i8*, i8** @PTI_INST_JMP_EA, align 8
  %256 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %257 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %251, %247
  store i32 0, i32* %4, align 4
  br label %532

259:                                              ; preds = %89
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* @PTI_MAP_0, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %259
  %264 = load i8*, i8** @ptic_jump, align 8
  %265 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %266 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %265, i32 0, i32 0
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** @PTI_INST_JMP_EB, align 8
  %268 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %269 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  %270 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %271 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %272 = call i32 @set_branch_target(%struct.pt_insn_ext* %270, %struct.pt_ild* %271)
  store i32 %272, i32* %4, align 4
  br label %532

273:                                              ; preds = %259
  store i32 0, i32* %4, align 4
  br label %532

274:                                              ; preds = %89
  %275 = load i64, i64* %9, align 8
  %276 = load i64, i64* @PTI_MAP_0, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = load i8*, i8** @ptic_cond_jump, align 8
  %280 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %281 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %280, i32 0, i32 0
  store i8* %279, i8** %281, align 8
  %282 = load i8*, i8** @PTI_INST_JrCXZ, align 8
  %283 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %284 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  %285 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %286 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %287 = call i32 @set_branch_target(%struct.pt_insn_ext* %285, %struct.pt_ild* %286)
  store i32 %287, i32* %4, align 4
  br label %532

288:                                              ; preds = %274
  store i32 0, i32* %4, align 4
  br label %532

289:                                              ; preds = %89
  %290 = load i64, i64* %9, align 8
  %291 = load i64, i64* @PTI_MAP_0, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = load i8*, i8** @ptic_cond_jump, align 8
  %295 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %296 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  %297 = load i8*, i8** @PTI_INST_LOOPNE, align 8
  %298 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %299 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %298, i32 0, i32 0
  store i8* %297, i8** %299, align 8
  %300 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %301 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %302 = call i32 @set_branch_target(%struct.pt_insn_ext* %300, %struct.pt_ild* %301)
  store i32 %302, i32* %4, align 4
  br label %532

303:                                              ; preds = %289
  store i32 0, i32* %4, align 4
  br label %532

304:                                              ; preds = %89
  %305 = load i64, i64* %9, align 8
  %306 = load i64, i64* @PTI_MAP_0, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %304
  %309 = load i8*, i8** @ptic_cond_jump, align 8
  %310 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %311 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @PTI_INST_LOOPE, align 8
  %313 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %314 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %313, i32 0, i32 0
  store i8* %312, i8** %314, align 8
  %315 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %316 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %317 = call i32 @set_branch_target(%struct.pt_insn_ext* %315, %struct.pt_ild* %316)
  store i32 %317, i32* %4, align 4
  br label %532

318:                                              ; preds = %304
  store i32 0, i32* %4, align 4
  br label %532

319:                                              ; preds = %89
  %320 = load i64, i64* %9, align 8
  %321 = load i64, i64* @PTI_MAP_0, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %319
  %324 = load i8*, i8** @ptic_cond_jump, align 8
  %325 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %326 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %325, i32 0, i32 0
  store i8* %324, i8** %326, align 8
  %327 = load i8*, i8** @PTI_INST_LOOP, align 8
  %328 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %329 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %328, i32 0, i32 0
  store i8* %327, i8** %329, align 8
  %330 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %331 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %332 = call i32 @set_branch_target(%struct.pt_insn_ext* %330, %struct.pt_ild* %331)
  store i32 %332, i32* %4, align 4
  br label %532

333:                                              ; preds = %319
  store i32 0, i32* %4, align 4
  br label %532

334:                                              ; preds = %89
  %335 = load i64, i64* %9, align 8
  %336 = load i64, i64* @PTI_MAP_1, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %355

338:                                              ; preds = %334
  %339 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %340 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %339)
  %341 = icmp eq i32 %340, 3
  br i1 %341, label %342, label %354

342:                                              ; preds = %338
  %343 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %344 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %342
  %350 = load i8*, i8** @PTI_INST_MOV_CR3, align 8
  %351 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %352 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %351, i32 0, i32 0
  store i8* %350, i8** %352, align 8
  br label %353

353:                                              ; preds = %349, %342
  br label %354

354:                                              ; preds = %353, %338
  br label %355

355:                                              ; preds = %354, %334
  store i32 0, i32* %4, align 4
  br label %532

356:                                              ; preds = %89
  %357 = load i64, i64* %9, align 8
  %358 = load i64, i64* @PTI_MAP_0, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %367

360:                                              ; preds = %356
  %361 = load i8*, i8** @ptic_return, align 8
  %362 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %363 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %362, i32 0, i32 0
  store i8* %361, i8** %363, align 8
  %364 = load i8*, i8** @PTI_INST_RET_C3, align 8
  %365 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %366 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %365, i32 0, i32 0
  store i8* %364, i8** %366, align 8
  br label %367

367:                                              ; preds = %360, %356
  store i32 0, i32* %4, align 4
  br label %532

368:                                              ; preds = %89
  %369 = load i64, i64* %9, align 8
  %370 = load i64, i64* @PTI_MAP_0, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %379

372:                                              ; preds = %368
  %373 = load i8*, i8** @ptic_return, align 8
  %374 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %375 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %374, i32 0, i32 0
  store i8* %373, i8** %375, align 8
  %376 = load i8*, i8** @PTI_INST_RET_C2, align 8
  %377 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %378 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %377, i32 0, i32 0
  store i8* %376, i8** %378, align 8
  br label %379

379:                                              ; preds = %372, %368
  store i32 0, i32* %4, align 4
  br label %532

380:                                              ; preds = %89
  %381 = load i64, i64* %9, align 8
  %382 = load i64, i64* @PTI_MAP_0, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %380
  %385 = load i8*, i8** @ptic_far_return, align 8
  %386 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %387 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %386, i32 0, i32 0
  store i8* %385, i8** %387, align 8
  %388 = load i8*, i8** @PTI_INST_RET_CB, align 8
  %389 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %390 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %389, i32 0, i32 0
  store i8* %388, i8** %390, align 8
  br label %391

391:                                              ; preds = %384, %380
  store i32 0, i32* %4, align 4
  br label %532

392:                                              ; preds = %89
  %393 = load i64, i64* %9, align 8
  %394 = load i64, i64* @PTI_MAP_0, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %403

396:                                              ; preds = %392
  %397 = load i8*, i8** @ptic_far_return, align 8
  %398 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %399 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %398, i32 0, i32 0
  store i8* %397, i8** %399, align 8
  %400 = load i8*, i8** @PTI_INST_RET_CA, align 8
  %401 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %402 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %401, i32 0, i32 0
  store i8* %400, i8** %402, align 8
  br label %403

403:                                              ; preds = %396, %392
  store i32 0, i32* %4, align 4
  br label %532

404:                                              ; preds = %89
  %405 = load i64, i64* %9, align 8
  %406 = load i64, i64* @PTI_MAP_1, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %415

408:                                              ; preds = %404
  %409 = load i8*, i8** @ptic_far_call, align 8
  %410 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %411 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %410, i32 0, i32 0
  store i8* %409, i8** %411, align 8
  %412 = load i8*, i8** @PTI_INST_SYSCALL, align 8
  %413 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %414 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %413, i32 0, i32 0
  store i8* %412, i8** %414, align 8
  br label %415

415:                                              ; preds = %408, %404
  store i32 0, i32* %4, align 4
  br label %532

416:                                              ; preds = %89
  %417 = load i64, i64* %9, align 8
  %418 = load i64, i64* @PTI_MAP_1, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %427

420:                                              ; preds = %416
  %421 = load i8*, i8** @ptic_far_call, align 8
  %422 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %423 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %422, i32 0, i32 0
  store i8* %421, i8** %423, align 8
  %424 = load i8*, i8** @PTI_INST_SYSENTER, align 8
  %425 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %426 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %425, i32 0, i32 0
  store i8* %424, i8** %426, align 8
  br label %427

427:                                              ; preds = %420, %416
  store i32 0, i32* %4, align 4
  br label %532

428:                                              ; preds = %89
  %429 = load i64, i64* %9, align 8
  %430 = load i64, i64* @PTI_MAP_1, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %439

432:                                              ; preds = %428
  %433 = load i8*, i8** @ptic_far_return, align 8
  %434 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %435 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %434, i32 0, i32 0
  store i8* %433, i8** %435, align 8
  %436 = load i8*, i8** @PTI_INST_SYSEXIT, align 8
  %437 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %438 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %437, i32 0, i32 0
  store i8* %436, i8** %438, align 8
  br label %439

439:                                              ; preds = %432, %428
  store i32 0, i32* %4, align 4
  br label %532

440:                                              ; preds = %89
  %441 = load i64, i64* %9, align 8
  %442 = load i64, i64* @PTI_MAP_1, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %451

444:                                              ; preds = %440
  %445 = load i8*, i8** @ptic_far_return, align 8
  %446 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %447 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %446, i32 0, i32 0
  store i8* %445, i8** %447, align 8
  %448 = load i8*, i8** @PTI_INST_SYSRET, align 8
  %449 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %450 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %449, i32 0, i32 0
  store i8* %448, i8** %450, align 8
  br label %451

451:                                              ; preds = %444, %440
  store i32 0, i32* %4, align 4
  br label %532

452:                                              ; preds = %89
  %453 = load i64, i64* %9, align 8
  %454 = load i64, i64* @PTI_MAP_1, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %483

456:                                              ; preds = %452
  %457 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %458 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  switch i32 %459, label %481 [
    i32 193, label %460
    i32 194, label %467
    i32 195, label %474
  ]

460:                                              ; preds = %456
  %461 = load i8*, i8** @ptic_far_call, align 8
  %462 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %463 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %462, i32 0, i32 0
  store i8* %461, i8** %463, align 8
  %464 = load i8*, i8** @PTI_INST_VMCALL, align 8
  %465 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %466 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %465, i32 0, i32 0
  store i8* %464, i8** %466, align 8
  br label %482

467:                                              ; preds = %456
  %468 = load i8*, i8** @ptic_far_return, align 8
  %469 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %470 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %469, i32 0, i32 0
  store i8* %468, i8** %470, align 8
  %471 = load i8*, i8** @PTI_INST_VMLAUNCH, align 8
  %472 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %473 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %472, i32 0, i32 0
  store i8* %471, i8** %473, align 8
  br label %482

474:                                              ; preds = %456
  %475 = load i8*, i8** @ptic_far_return, align 8
  %476 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %477 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %476, i32 0, i32 0
  store i8* %475, i8** %477, align 8
  %478 = load i8*, i8** @PTI_INST_VMRESUME, align 8
  %479 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %480 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %479, i32 0, i32 0
  store i8* %478, i8** %480, align 8
  br label %482

481:                                              ; preds = %456
  br label %482

482:                                              ; preds = %481, %474, %467, %460
  br label %483

483:                                              ; preds = %482, %452
  store i32 0, i32* %4, align 4
  br label %532

484:                                              ; preds = %89
  %485 = load i64, i64* %9, align 8
  %486 = load i64, i64* @PTI_MAP_1, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %500

488:                                              ; preds = %484
  %489 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %490 = call i32 @pti_get_modrm_mod(%struct.pt_ild* %489)
  %491 = icmp ne i32 %490, 3
  br i1 %491, label %492, label %500

492:                                              ; preds = %488
  %493 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %494 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %493)
  %495 = icmp eq i32 %494, 6
  br i1 %495, label %496, label %500

496:                                              ; preds = %492
  %497 = load i8*, i8** @PTI_INST_VMPTRLD, align 8
  %498 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %499 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %498, i32 0, i32 0
  store i8* %497, i8** %499, align 8
  br label %500

500:                                              ; preds = %496, %492, %488, %484
  store i32 0, i32* %4, align 4
  br label %532

501:                                              ; preds = %89
  %502 = load i64, i64* %9, align 8
  %503 = load i64, i64* @PTI_MAP_1, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %530

505:                                              ; preds = %501
  %506 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %507 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %506, i32 0, i32 2
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %530

512:                                              ; preds = %505
  %513 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %514 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %530, label %519

519:                                              ; preds = %512
  %520 = load %struct.pt_ild*, %struct.pt_ild** %7, align 8
  %521 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %520)
  %522 = icmp eq i32 %521, 4
  br i1 %522, label %523, label %530

523:                                              ; preds = %519
  %524 = load i8*, i8** @ptic_ptwrite, align 8
  %525 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %526 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %525, i32 0, i32 0
  store i8* %524, i8** %526, align 8
  %527 = load i8*, i8** @PTI_INST_PTWRITE, align 8
  %528 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %6, align 8
  %529 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %528, i32 0, i32 0
  store i8* %527, i8** %529, align 8
  br label %530

530:                                              ; preds = %523, %519, %512, %505, %501
  store i32 0, i32* %4, align 4
  br label %532

531:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %532

532:                                              ; preds = %531, %530, %500, %483, %451, %439, %427, %415, %403, %391, %379, %367, %355, %333, %323, %318, %308, %303, %293, %288, %278, %273, %263, %258, %246, %236, %231, %219, %207, %195, %183, %171, %161, %156, %104, %88, %78, %67, %57, %46, %38, %16
  %533 = load i32, i32* %4, align 4
  ret i32 %533
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_branch_target(%struct.pt_insn_ext*, %struct.pt_ild*) #1

declare dso_local i32 @pti_get_modrm_reg(%struct.pt_ild*) #1

declare dso_local i32 @pti_get_modrm_mod(%struct.pt_ild*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
