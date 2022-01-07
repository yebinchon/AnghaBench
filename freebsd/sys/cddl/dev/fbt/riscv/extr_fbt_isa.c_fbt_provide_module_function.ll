; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/riscv/extr_fbt_isa.c_fbt_provide_module_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/riscv/extr_fbt_isa.c_fbt_provide_module_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { i8*, i8**, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_9__*, i8*, %struct.TYPE_10__* }

@MATCH_SD = common dso_local global i32 0, align 4
@RS2_RA = common dso_local global i32 0, align 4
@RS1_SP = common dso_local global i32 0, align 4
@MASK_SD = common dso_local global i32 0, align 4
@RS2_MASK = common dso_local global i32 0, align 4
@RS1_MASK = common dso_local global i32 0, align 4
@DTRACE_INVOP_SD = common dso_local global i32 0, align 4
@FBT_PATCHVAL = common dso_local global i32 0, align 4
@DTRACE_INVOP_C_SDSP = common dso_local global i32 0, align 4
@FBT_C_PATCHVAL = common dso_local global i32 0, align 4
@M_FBT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@FBT_ENTRY = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i8** null, align 8
@MATCH_JALR = common dso_local global i32 0, align 4
@X_RA = common dso_local global i32 0, align 4
@RS1_SHIFT = common dso_local global i32 0, align 4
@MASK_JALR = common dso_local global i32 0, align 4
@RD_MASK = common dso_local global i32 0, align 4
@IMM_MASK = common dso_local global i32 0, align 4
@DTRACE_INVOP_RET = common dso_local global i32 0, align 4
@DTRACE_INVOP_C_RET = common dso_local global i32 0, align 4
@FBT_RETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_provide_module_function(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %15, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i64 @fbt_excluded(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %248

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8**
  store i8** %30, i8*** %12, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to i8**
  store i8** %38, i8*** %13, align 8
  br label %39

39:                                               ; preds = %68, %26
  %40 = load i8**, i8*** %12, align 8
  %41 = load i8**, i8*** %13, align 8
  %42 = icmp ult i8** %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i8**, i8*** %12, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @MATCH_SD, align 4
  %47 = load i32, i32* @RS2_RA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RS1_SP, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MASK_SD, align 4
  %52 = load i32, i32* @RS2_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RS1_MASK, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @match_opcode(i8* %45, i32 %50, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @DTRACE_INVOP_SD, align 4
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* @FBT_PATCHVAL, align 4
  store i32 %60, i32* %16, align 4
  br label %71

61:                                               ; preds = %43
  %62 = call i64 @check_c_sdsp(i8*** %12)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @DTRACE_INVOP_C_SDSP, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* @FBT_C_PATCHVAL, align 4
  store i32 %66, i32* %16, align 4
  br label %71

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i8**, i8*** %12, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %12, align 8
  br label %39

71:                                               ; preds = %64, %58, %39
  %72 = load i8**, i8*** %12, align 8
  %73 = load i8**, i8*** %13, align 8
  %74 = icmp uge i8** %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %248

76:                                               ; preds = %71
  %77 = load i32, i32* @M_FBT, align 4
  %78 = load i32, i32* @M_WAITOK, align 4
  %79 = load i32, i32* @M_ZERO, align 4
  %80 = or i32 %78, %79
  %81 = call %struct.TYPE_10__* @malloc(i32 80, i32 %77, i32 %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %10, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @fbt_id, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* @FBT_ENTRY, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = call i8* @dtrace_probe_create(i32 %85, i8* %86, i8* %87, i32 %88, i32 3, %struct.TYPE_10__* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  %93 = load i8**, i8*** %12, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i8** %93, i8*** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 8
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 8
  %104 = load i8**, i8*** %12, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load i8**, i8*** @fbt_probetab, align 8
  %118 = load i8**, i8*** %12, align 8
  %119 = call i64 @FBT_ADDR2NDX(i8** %118)
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %125 = bitcast %struct.TYPE_10__* %124 to i8*
  %126 = load i8**, i8*** @fbt_probetab, align 8
  %127 = load i8**, i8*** %12, align 8
  %128 = call i64 @FBT_ADDR2NDX(i8** %127)
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %125, i8** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  br label %134

134:                                              ; preds = %203, %76
  br label %135

135:                                              ; preds = %166, %134
  %136 = load i8**, i8*** %12, align 8
  %137 = load i8**, i8*** %13, align 8
  %138 = icmp ult i8** %136, %137
  br i1 %138, label %139, label %169

139:                                              ; preds = %135
  %140 = load i8**, i8*** %12, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* @MATCH_JALR, align 4
  %143 = load i32, i32* @X_RA, align 4
  %144 = load i32, i32* @RS1_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = or i32 %142, %145
  %147 = load i32, i32* @MASK_JALR, align 4
  %148 = load i32, i32* @RD_MASK, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @RS1_MASK, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @IMM_MASK, align 4
  %153 = or i32 %151, %152
  %154 = call i64 @match_opcode(i8* %141, i32 %146, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %139
  %157 = load i32, i32* @DTRACE_INVOP_RET, align 4
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* @FBT_PATCHVAL, align 4
  store i32 %158, i32* %16, align 4
  br label %169

159:                                              ; preds = %139
  %160 = call i64 @check_c_ret(i8*** %12)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* @DTRACE_INVOP_C_RET, align 4
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* @FBT_C_PATCHVAL, align 4
  store i32 %164, i32* %16, align 4
  br label %169

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165
  %167 = load i8**, i8*** %12, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i32 1
  store i8** %168, i8*** %12, align 8
  br label %135

169:                                              ; preds = %162, %156, %135
  %170 = load i8**, i8*** %12, align 8
  %171 = load i8**, i8*** %13, align 8
  %172 = icmp uge i8** %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %248

174:                                              ; preds = %169
  %175 = load i32, i32* @M_FBT, align 4
  %176 = load i32, i32* @M_WAITOK, align 4
  %177 = load i32, i32* @M_ZERO, align 4
  %178 = or i32 %176, %177
  %179 = call %struct.TYPE_10__* @malloc(i32 80, i32 %175, i32 %178)
  store %struct.TYPE_10__* %179, %struct.TYPE_10__** %10, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %184 = icmp eq %struct.TYPE_10__* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %174
  %186 = load i32, i32* @fbt_id, align 4
  %187 = load i8*, i8** %15, align 8
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* @FBT_RETURN, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %191 = call i8* @dtrace_probe_create(i32 %186, i8* %187, i8* %188, i32 %189, i32 3, %struct.TYPE_10__* %190)
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 9
  store i8* %191, i8** %193, align 8
  br label %203

194:                                              ; preds = %174
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 10
  store %struct.TYPE_10__* %195, %struct.TYPE_10__** %197, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 9
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 9
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %194, %185
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %204, %struct.TYPE_10__** %11, align 8
  %205 = load i8**, i8*** %12, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  store i8** %205, i8*** %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 8
  store %struct.TYPE_9__* %208, %struct.TYPE_9__** %210, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 7
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %17, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load i8**, i8*** %12, align 8
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 6
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load i8**, i8*** @fbt_probetab, align 8
  %230 = load i8**, i8*** %12, align 8
  %231 = call i64 @FBT_ADDR2NDX(i8** %230)
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 5
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %237 = bitcast %struct.TYPE_10__* %236 to i8*
  %238 = load i8**, i8*** @fbt_probetab, align 8
  %239 = load i8**, i8*** %12, align 8
  %240 = call i64 @FBT_ADDR2NDX(i8** %239)
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  store i8* %237, i8** %241, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load i8**, i8*** %12, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i32 1
  store i8** %247, i8*** %12, align 8
  br label %134

248:                                              ; preds = %173, %75, %25
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local i64 @fbt_excluded(i8*) #1

declare dso_local i64 @match_opcode(i8*, i32, i32) #1

declare dso_local i64 @check_c_sdsp(i8***) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i8* @dtrace_probe_create(i32, i8*, i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @FBT_ADDR2NDX(i8**) #1

declare dso_local i64 @check_c_ret(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
