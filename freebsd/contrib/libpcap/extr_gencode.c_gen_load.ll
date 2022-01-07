; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.arth = type { i32, %struct.slist*, %struct.block* }
%struct.slist = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.block = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"data size must be 1, 2, or 4\00", align 1
@BPF_B = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported index operation\00", align 1
@DLT_IEEE802_11_RADIO_AVS = common dso_local global i32 0, align 4
@DLT_IEEE802_11_RADIO = common dso_local global i32 0, align 4
@DLT_PRISM_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"radio information not present in capture\00", align 1
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IND = common dso_local global i32 0, align 4
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_MISC = common dso_local global i32 0, align 4
@BPF_TAX = common dso_local global i32 0, align 4
@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arth* @gen_load(%struct.TYPE_18__* %0, i32 %1, %struct.arth* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arth*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.slist*, align 8
  %10 = alloca %struct.slist*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arth* %2, %struct.arth** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = call i32 @alloc_reg(%struct.TYPE_18__* %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = load %struct.arth*, %struct.arth** %7, align 8
  %17 = getelementptr inbounds %struct.arth, %struct.arth* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @free_reg(%struct.TYPE_18__* %15, i32 %18)
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %21 [
    i32 1, label %24
    i32 2, label %26
    i32 4, label %28
  ]

21:                                               ; preds = %4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = call i32 @bpf_error(%struct.TYPE_18__* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %4, %21
  %25 = load i32, i32* @BPF_B, align 4
  store i32 %25, i32* %8, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @BPF_H, align 4
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @BPF_W, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %26, %24
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %32 [
    i32 134, label %35
    i32 138, label %75
    i32 141, label %131
    i32 149, label %131
    i32 133, label %131
    i32 148, label %131
    i32 146, label %131
    i32 132, label %131
    i32 139, label %131
    i32 136, label %131
    i32 137, label %131
    i32 140, label %131
    i32 131, label %208
    i32 130, label %208
    i32 129, label %208
    i32 145, label %208
    i32 143, label %208
    i32 142, label %208
    i32 135, label %208
    i32 128, label %208
    i32 147, label %208
    i32 144, label %281
  ]

32:                                               ; preds = %30
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = call i32 @bpf_error(%struct.TYPE_18__* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %32
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DLT_IEEE802_11_RADIO_AVS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DLT_IEEE802_11_RADIO, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DLT_PRISM_HEADER, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = call i32 @bpf_error(%struct.TYPE_18__* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47, %41, %35
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = load %struct.arth*, %struct.arth** %7, align 8
  %59 = call %struct.slist* @xfer_to_x(%struct.TYPE_18__* %57, %struct.arth* %58)
  store %struct.slist* %59, %struct.slist** %9, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = load i32, i32* @BPF_LD, align 4
  %62 = load i32, i32* @BPF_IND, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %60, i32 %65)
  store %struct.slist* %66, %struct.slist** %10, align 8
  %67 = load %struct.slist*, %struct.slist** %9, align 8
  %68 = load %struct.slist*, %struct.slist** %10, align 8
  %69 = call i32 @sappend(%struct.slist* %67, %struct.slist* %68)
  %70 = load %struct.arth*, %struct.arth** %7, align 8
  %71 = getelementptr inbounds %struct.arth, %struct.arth* %70, i32 0, i32 1
  %72 = load %struct.slist*, %struct.slist** %71, align 8
  %73 = load %struct.slist*, %struct.slist** %9, align 8
  %74 = call i32 @sappend(%struct.slist* %72, %struct.slist* %73)
  br label %376

75:                                               ; preds = %30
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = call %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_18__* %76, %struct.TYPE_16__* %78)
  store %struct.slist* %79, %struct.slist** %9, align 8
  %80 = load %struct.slist*, %struct.slist** %9, align 8
  %81 = icmp ne %struct.slist* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  %83 = load %struct.slist*, %struct.slist** %9, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = load %struct.arth*, %struct.arth** %7, align 8
  %86 = call %struct.slist* @xfer_to_a(%struct.TYPE_18__* %84, %struct.arth* %85)
  %87 = call i32 @sappend(%struct.slist* %83, %struct.slist* %86)
  %88 = load %struct.slist*, %struct.slist** %9, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = load i32, i32* @BPF_ALU, align 4
  %91 = load i32, i32* @BPF_ADD, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @BPF_X, align 4
  %94 = or i32 %92, %93
  %95 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %89, i32 %94)
  %96 = call i32 @sappend(%struct.slist* %88, %struct.slist* %95)
  %97 = load %struct.slist*, %struct.slist** %9, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = load i32, i32* @BPF_MISC, align 4
  %100 = load i32, i32* @BPF_TAX, align 4
  %101 = or i32 %99, %100
  %102 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %98, i32 %101)
  %103 = call i32 @sappend(%struct.slist* %97, %struct.slist* %102)
  br label %108

104:                                              ; preds = %75
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = load %struct.arth*, %struct.arth** %7, align 8
  %107 = call %struct.slist* @xfer_to_x(%struct.TYPE_18__* %105, %struct.arth* %106)
  store %struct.slist* %107, %struct.slist** %9, align 8
  br label %108

108:                                              ; preds = %104, %82
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = load i32, i32* @BPF_LD, align 4
  %111 = load i32, i32* @BPF_IND, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %112, %113
  %115 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %109, i32 %114)
  store %struct.slist* %115, %struct.slist** %10, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.slist*, %struct.slist** %10, align 8
  %121 = getelementptr inbounds %struct.slist, %struct.slist* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load %struct.slist*, %struct.slist** %9, align 8
  %124 = load %struct.slist*, %struct.slist** %10, align 8
  %125 = call i32 @sappend(%struct.slist* %123, %struct.slist* %124)
  %126 = load %struct.arth*, %struct.arth** %7, align 8
  %127 = getelementptr inbounds %struct.arth, %struct.arth* %126, i32 0, i32 1
  %128 = load %struct.slist*, %struct.slist** %127, align 8
  %129 = load %struct.slist*, %struct.slist** %9, align 8
  %130 = call i32 @sappend(%struct.slist* %128, %struct.slist* %129)
  br label %376

131:                                              ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = call %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_18__* %132, %struct.TYPE_16__* %134)
  store %struct.slist* %135, %struct.slist** %9, align 8
  %136 = load %struct.slist*, %struct.slist** %9, align 8
  %137 = icmp ne %struct.slist* %136, null
  br i1 %137, label %138, label %160

138:                                              ; preds = %131
  %139 = load %struct.slist*, %struct.slist** %9, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = load %struct.arth*, %struct.arth** %7, align 8
  %142 = call %struct.slist* @xfer_to_a(%struct.TYPE_18__* %140, %struct.arth* %141)
  %143 = call i32 @sappend(%struct.slist* %139, %struct.slist* %142)
  %144 = load %struct.slist*, %struct.slist** %9, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %146 = load i32, i32* @BPF_ALU, align 4
  %147 = load i32, i32* @BPF_ADD, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @BPF_X, align 4
  %150 = or i32 %148, %149
  %151 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %145, i32 %150)
  %152 = call i32 @sappend(%struct.slist* %144, %struct.slist* %151)
  %153 = load %struct.slist*, %struct.slist** %9, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %155 = load i32, i32* @BPF_MISC, align 4
  %156 = load i32, i32* @BPF_TAX, align 4
  %157 = or i32 %155, %156
  %158 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %154, i32 %157)
  %159 = call i32 @sappend(%struct.slist* %153, %struct.slist* %158)
  br label %164

160:                                              ; preds = %131
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = load %struct.arth*, %struct.arth** %7, align 8
  %163 = call %struct.slist* @xfer_to_x(%struct.TYPE_18__* %161, %struct.arth* %162)
  store %struct.slist* %163, %struct.slist** %9, align 8
  br label %164

164:                                              ; preds = %160, %138
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %166 = load i32, i32* @BPF_LD, align 4
  %167 = load i32, i32* @BPF_IND, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %168, %169
  %171 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %165, i32 %170)
  store %struct.slist* %171, %struct.slist** %10, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  %180 = load %struct.slist*, %struct.slist** %10, align 8
  %181 = getelementptr inbounds %struct.slist, %struct.slist* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 4
  %183 = load %struct.slist*, %struct.slist** %9, align 8
  %184 = load %struct.slist*, %struct.slist** %10, align 8
  %185 = call i32 @sappend(%struct.slist* %183, %struct.slist* %184)
  %186 = load %struct.arth*, %struct.arth** %7, align 8
  %187 = getelementptr inbounds %struct.arth, %struct.arth* %186, i32 0, i32 1
  %188 = load %struct.slist*, %struct.slist** %187, align 8
  %189 = load %struct.slist*, %struct.slist** %9, align 8
  %190 = call i32 @sappend(%struct.slist* %188, %struct.slist* %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = call %struct.block* @gen_proto_abbrev(%struct.TYPE_18__* %191, i32 %192)
  store %struct.block* %193, %struct.block** %11, align 8
  %194 = load %struct.arth*, %struct.arth** %7, align 8
  %195 = getelementptr inbounds %struct.arth, %struct.arth* %194, i32 0, i32 2
  %196 = load %struct.block*, %struct.block** %195, align 8
  %197 = icmp ne %struct.block* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %164
  %199 = load %struct.arth*, %struct.arth** %7, align 8
  %200 = getelementptr inbounds %struct.arth, %struct.arth* %199, i32 0, i32 2
  %201 = load %struct.block*, %struct.block** %200, align 8
  %202 = load %struct.block*, %struct.block** %11, align 8
  %203 = call i32 @gen_and(%struct.block* %201, %struct.block* %202)
  br label %204

204:                                              ; preds = %198, %164
  %205 = load %struct.block*, %struct.block** %11, align 8
  %206 = load %struct.arth*, %struct.arth** %7, align 8
  %207 = getelementptr inbounds %struct.arth, %struct.arth* %206, i32 0, i32 2
  store %struct.block* %205, %struct.block** %207, align 8
  br label %376

208:                                              ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %210 = call %struct.slist* @gen_loadx_iphdrlen(%struct.TYPE_18__* %209)
  store %struct.slist* %210, %struct.slist** %9, align 8
  %211 = load %struct.slist*, %struct.slist** %9, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %213 = load %struct.arth*, %struct.arth** %7, align 8
  %214 = call %struct.slist* @xfer_to_a(%struct.TYPE_18__* %212, %struct.arth* %213)
  %215 = call i32 @sappend(%struct.slist* %211, %struct.slist* %214)
  %216 = load %struct.slist*, %struct.slist** %9, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = load i32, i32* @BPF_ALU, align 4
  %219 = load i32, i32* @BPF_ADD, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @BPF_X, align 4
  %222 = or i32 %220, %221
  %223 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %217, i32 %222)
  %224 = call i32 @sappend(%struct.slist* %216, %struct.slist* %223)
  %225 = load %struct.slist*, %struct.slist** %9, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %227 = load i32, i32* @BPF_MISC, align 4
  %228 = load i32, i32* @BPF_TAX, align 4
  %229 = or i32 %227, %228
  %230 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %226, i32 %229)
  %231 = call i32 @sappend(%struct.slist* %225, %struct.slist* %230)
  %232 = load %struct.slist*, %struct.slist** %9, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %234 = load i32, i32* @BPF_LD, align 4
  %235 = load i32, i32* @BPF_IND, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* %8, align 4
  %238 = or i32 %236, %237
  %239 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %233, i32 %238)
  store %struct.slist* %239, %struct.slist** %10, align 8
  %240 = call i32 @sappend(%struct.slist* %232, %struct.slist* %239)
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %244, %247
  %249 = load %struct.slist*, %struct.slist** %10, align 8
  %250 = getelementptr inbounds %struct.slist, %struct.slist* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 4
  %252 = load %struct.arth*, %struct.arth** %7, align 8
  %253 = getelementptr inbounds %struct.arth, %struct.arth* %252, i32 0, i32 1
  %254 = load %struct.slist*, %struct.slist** %253, align 8
  %255 = load %struct.slist*, %struct.slist** %9, align 8
  %256 = call i32 @sappend(%struct.slist* %254, %struct.slist* %255)
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %258 = load i32, i32* %6, align 4
  %259 = call %struct.block* @gen_proto_abbrev(%struct.TYPE_18__* %257, i32 %258)
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %261 = call %struct.block* @gen_ipfrag(%struct.TYPE_18__* %260)
  store %struct.block* %261, %struct.block** %11, align 8
  %262 = call i32 @gen_and(%struct.block* %259, %struct.block* %261)
  %263 = load %struct.arth*, %struct.arth** %7, align 8
  %264 = getelementptr inbounds %struct.arth, %struct.arth* %263, i32 0, i32 2
  %265 = load %struct.block*, %struct.block** %264, align 8
  %266 = icmp ne %struct.block* %265, null
  br i1 %266, label %267, label %273

267:                                              ; preds = %208
  %268 = load %struct.arth*, %struct.arth** %7, align 8
  %269 = getelementptr inbounds %struct.arth, %struct.arth* %268, i32 0, i32 2
  %270 = load %struct.block*, %struct.block** %269, align 8
  %271 = load %struct.block*, %struct.block** %11, align 8
  %272 = call i32 @gen_and(%struct.block* %270, %struct.block* %271)
  br label %273

273:                                              ; preds = %267, %208
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %275 = call %struct.block* @gen_proto_abbrev(%struct.TYPE_18__* %274, i32 141)
  %276 = load %struct.block*, %struct.block** %11, align 8
  %277 = call i32 @gen_and(%struct.block* %275, %struct.block* %276)
  %278 = load %struct.block*, %struct.block** %11, align 8
  %279 = load %struct.arth*, %struct.arth** %7, align 8
  %280 = getelementptr inbounds %struct.arth, %struct.arth* %279, i32 0, i32 2
  store %struct.block* %278, %struct.block** %280, align 8
  br label %376

281:                                              ; preds = %30
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %283 = call %struct.block* @gen_proto_abbrev(%struct.TYPE_18__* %282, i32 140)
  store %struct.block* %283, %struct.block** %11, align 8
  %284 = load %struct.arth*, %struct.arth** %7, align 8
  %285 = getelementptr inbounds %struct.arth, %struct.arth* %284, i32 0, i32 2
  %286 = load %struct.block*, %struct.block** %285, align 8
  %287 = icmp ne %struct.block* %286, null
  br i1 %287, label %288, label %294

288:                                              ; preds = %281
  %289 = load %struct.arth*, %struct.arth** %7, align 8
  %290 = getelementptr inbounds %struct.arth, %struct.arth* %289, i32 0, i32 2
  %291 = load %struct.block*, %struct.block** %290, align 8
  %292 = load %struct.block*, %struct.block** %11, align 8
  %293 = call i32 @gen_and(%struct.block* %291, %struct.block* %292)
  br label %294

294:                                              ; preds = %288, %281
  %295 = load %struct.block*, %struct.block** %11, align 8
  %296 = load %struct.arth*, %struct.arth** %7, align 8
  %297 = getelementptr inbounds %struct.arth, %struct.arth* %296, i32 0, i32 2
  store %struct.block* %295, %struct.block** %297, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %299 = load i32, i32* @OR_LINKPL, align 4
  %300 = load i32, i32* @BPF_B, align 4
  %301 = call %struct.block* @gen_cmp(%struct.TYPE_18__* %298, i32 %299, i32 6, i32 %300, i32 58)
  store %struct.block* %301, %struct.block** %11, align 8
  %302 = load %struct.arth*, %struct.arth** %7, align 8
  %303 = getelementptr inbounds %struct.arth, %struct.arth* %302, i32 0, i32 2
  %304 = load %struct.block*, %struct.block** %303, align 8
  %305 = icmp ne %struct.block* %304, null
  br i1 %305, label %306, label %312

306:                                              ; preds = %294
  %307 = load %struct.arth*, %struct.arth** %7, align 8
  %308 = getelementptr inbounds %struct.arth, %struct.arth* %307, i32 0, i32 2
  %309 = load %struct.block*, %struct.block** %308, align 8
  %310 = load %struct.block*, %struct.block** %11, align 8
  %311 = call i32 @gen_and(%struct.block* %309, %struct.block* %310)
  br label %312

312:                                              ; preds = %306, %294
  %313 = load %struct.block*, %struct.block** %11, align 8
  %314 = load %struct.arth*, %struct.arth** %7, align 8
  %315 = getelementptr inbounds %struct.arth, %struct.arth* %314, i32 0, i32 2
  store %struct.block* %313, %struct.block** %315, align 8
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 1
  %319 = call %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_18__* %316, %struct.TYPE_16__* %318)
  store %struct.slist* %319, %struct.slist** %9, align 8
  %320 = load %struct.slist*, %struct.slist** %9, align 8
  %321 = icmp ne %struct.slist* %320, null
  br i1 %321, label %322, label %344

322:                                              ; preds = %312
  %323 = load %struct.slist*, %struct.slist** %9, align 8
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %325 = load %struct.arth*, %struct.arth** %7, align 8
  %326 = call %struct.slist* @xfer_to_a(%struct.TYPE_18__* %324, %struct.arth* %325)
  %327 = call i32 @sappend(%struct.slist* %323, %struct.slist* %326)
  %328 = load %struct.slist*, %struct.slist** %9, align 8
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %330 = load i32, i32* @BPF_ALU, align 4
  %331 = load i32, i32* @BPF_ADD, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @BPF_X, align 4
  %334 = or i32 %332, %333
  %335 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %329, i32 %334)
  %336 = call i32 @sappend(%struct.slist* %328, %struct.slist* %335)
  %337 = load %struct.slist*, %struct.slist** %9, align 8
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %339 = load i32, i32* @BPF_MISC, align 4
  %340 = load i32, i32* @BPF_TAX, align 4
  %341 = or i32 %339, %340
  %342 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %338, i32 %341)
  %343 = call i32 @sappend(%struct.slist* %337, %struct.slist* %342)
  br label %348

344:                                              ; preds = %312
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %346 = load %struct.arth*, %struct.arth** %7, align 8
  %347 = call %struct.slist* @xfer_to_x(%struct.TYPE_18__* %345, %struct.arth* %346)
  store %struct.slist* %347, %struct.slist** %9, align 8
  br label %348

348:                                              ; preds = %344, %322
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %350 = load i32, i32* @BPF_LD, align 4
  %351 = load i32, i32* @BPF_IND, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* %8, align 4
  %354 = or i32 %352, %353
  %355 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %349, i32 %354)
  store %struct.slist* %355, %struct.slist** %10, align 8
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %359, %362
  %364 = add nsw i32 %363, 40
  %365 = load %struct.slist*, %struct.slist** %10, align 8
  %366 = getelementptr inbounds %struct.slist, %struct.slist* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 0
  store i32 %364, i32* %367, align 4
  %368 = load %struct.slist*, %struct.slist** %9, align 8
  %369 = load %struct.slist*, %struct.slist** %10, align 8
  %370 = call i32 @sappend(%struct.slist* %368, %struct.slist* %369)
  %371 = load %struct.arth*, %struct.arth** %7, align 8
  %372 = getelementptr inbounds %struct.arth, %struct.arth* %371, i32 0, i32 1
  %373 = load %struct.slist*, %struct.slist** %372, align 8
  %374 = load %struct.slist*, %struct.slist** %9, align 8
  %375 = call i32 @sappend(%struct.slist* %373, %struct.slist* %374)
  br label %376

376:                                              ; preds = %348, %273, %204, %108, %56
  %377 = load i32, i32* %12, align 4
  %378 = load %struct.arth*, %struct.arth** %7, align 8
  %379 = getelementptr inbounds %struct.arth, %struct.arth* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  %380 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %381 = load i32, i32* @BPF_ST, align 4
  %382 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %380, i32 %381)
  store %struct.slist* %382, %struct.slist** %9, align 8
  %383 = load i32, i32* %12, align 4
  %384 = load %struct.slist*, %struct.slist** %9, align 8
  %385 = getelementptr inbounds %struct.slist, %struct.slist* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 0
  store i32 %383, i32* %386, align 4
  %387 = load %struct.arth*, %struct.arth** %7, align 8
  %388 = getelementptr inbounds %struct.arth, %struct.arth* %387, i32 0, i32 1
  %389 = load %struct.slist*, %struct.slist** %388, align 8
  %390 = load %struct.slist*, %struct.slist** %9, align 8
  %391 = call i32 @sappend(%struct.slist* %389, %struct.slist* %390)
  %392 = load %struct.arth*, %struct.arth** %7, align 8
  ret %struct.arth* %392
}

declare dso_local i32 @alloc_reg(%struct.TYPE_18__*) #1

declare dso_local i32 @free_reg(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.slist* @xfer_to_x(%struct.TYPE_18__*, %struct.arth*) #1

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local %struct.slist* @gen_abs_offset_varpart(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local %struct.slist* @xfer_to_a(%struct.TYPE_18__*, %struct.arth*) #1

declare dso_local %struct.block* @gen_proto_abbrev(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.slist* @gen_loadx_iphdrlen(%struct.TYPE_18__*) #1

declare dso_local %struct.block* @gen_ipfrag(%struct.TYPE_18__*) #1

declare dso_local %struct.block* @gen_cmp(%struct.TYPE_18__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
