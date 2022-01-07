; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_slurp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_dof_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64*, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }

@dtrace_lock = common dso_local global i32 0, align 4
@DOF_ID_MAG0 = common dso_local global i64 0, align 8
@DOF_MAG_STRING = common dso_local global i32 0, align 4
@DOF_MAG_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DOF magic string mismatch\00", align 1
@DOF_ID_MODEL = common dso_local global i64 0, align 8
@DOF_MODEL_ILP32 = common dso_local global i64 0, align 8
@DOF_MODEL_LP64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"DOF has invalid data model\00", align 1
@DOF_ID_ENCODING = common dso_local global i64 0, align 8
@DOF_ENCODE_NATIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"DOF encoding mismatch\00", align 1
@DOF_ID_VERSION = common dso_local global i64 0, align 8
@DOF_VERSION_1 = common dso_local global i64 0, align 8
@DOF_VERSION_2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"DOF version mismatch\00", align 1
@DOF_ID_DIFVERS = common dso_local global i64 0, align 8
@DIF_VERSION_2 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"DOF uses unsupported instruction set\00", align 1
@DOF_ID_DIFIREG = common dso_local global i64 0, align 8
@DIF_DIR_NREGS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"DOF uses too many integer registers\00", align 1
@DOF_ID_DIFTREG = common dso_local global i64 0, align 8
@DIF_DTR_NREGS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"DOF uses too many tuple registers\00", align 1
@DOF_ID_PAD = common dso_local global i64 0, align 8
@DOF_ID_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"DOF has invalid ident byte set\00", align 1
@DOF_FL_VALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"DOF has invalid flag bits set\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"zero section header size\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"truncated section headers\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"misaligned section headers\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"misaligned section size\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"illegal sections for enabling\00", align 1
@DOF_SECF_LOAD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"loadable section with load flag unset\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"bad section alignment\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"misaligned section\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"corrupt section header\00", align 1
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"non-terminating string table\00", align 1
@DOF_SECT_ECBDESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32*, i32**, i64, i64, i32)* @dtrace_dof_slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dof_slurp(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32** %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %16, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = ptrtoint %struct.TYPE_10__* %28 to i64
  store i64 %29, i64* %18, align 8
  %30 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %34, 48
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @DOF_ID_MAG0, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i32, i32* @DOF_MAG_STRING, align 4
  %44 = load i32, i32* @DOF_MAG_STRLEN, align 4
  %45 = call i64 @bcmp(i64* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %7
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

50:                                               ; preds = %7
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @DOF_ID_MODEL, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DOF_MODEL_ILP32, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @DOF_ID_MODEL, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DOF_MODEL_LP64, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

71:                                               ; preds = %59, %50
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @DOF_ID_ENCODING, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DOF_ENCODE_NATIVE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

83:                                               ; preds = %71
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @DOF_ID_VERSION, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DOF_VERSION_1, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @DOF_ID_VERSION, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DOF_VERSION_2, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

104:                                              ; preds = %92, %83
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @DOF_ID_DIFVERS, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DIF_VERSION_2, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

116:                                              ; preds = %104
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @DOF_ID_DIFIREG, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DIF_DIR_NREGS, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %127 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

128:                                              ; preds = %116
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @DOF_ID_DIFTREG, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DIF_DTR_NREGS, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %139 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

140:                                              ; preds = %128
  %141 = load i64, i64* @DOF_ID_PAD, align 8
  store i64 %141, i64* %21, align 8
  br label %142

142:                                              ; preds = %158, %140
  %143 = load i64, i64* %21, align 8
  %144 = load i64, i64* @DOF_ID_SIZE, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %142
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %21, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %21, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %21, align 8
  br label %142

161:                                              ; preds = %142
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @DOF_FL_VALID, align 4
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %171 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

172:                                              ; preds = %161
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %179 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

180:                                              ; preds = %172
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = mul nsw i64 %183, %186
  store i64 %187, i64* %17, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %16, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %205, label %193

193:                                              ; preds = %180
  %194 = load i64, i64* %17, align 8
  %195 = load i64, i64* %16, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %17, align 8
  %202 = add nsw i64 %200, %201
  %203 = load i64, i64* %16, align 8
  %204 = icmp sgt i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %197, %193, %180
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %207 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

208:                                              ; preds = %197
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @IS_P2ALIGNED(i64 %211, i32 8)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

217:                                              ; preds = %208
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @IS_P2ALIGNED(i64 %220, i32 8)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %217
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %225 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %224, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

226:                                              ; preds = %217
  store i64 0, i64* %21, align 8
  br label %227

227:                                              ; preds = %355, %226
  %228 = load i64, i64* %21, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp ult i64 %228, %231
  br i1 %232, label %233, label %358

233:                                              ; preds = %227
  %234 = load i64, i64* %18, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %234, %237
  %239 = load i64, i64* %21, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = mul i64 %239, %242
  %244 = add i64 %238, %243
  %245 = inttoptr i64 %244 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %245, %struct.TYPE_9__** %22, align 8
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %233
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  switch i32 %251, label %255 [
    i32 129, label %252
    i32 131, label %252
    i32 132, label %252
    i32 130, label %252
  ]

252:                                              ; preds = %248, %248, %248, %248
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %254 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %253, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

255:                                              ; preds = %248
  br label %256

256:                                              ; preds = %255, %233
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @DOF_SEC_ISLOADABLE(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %256
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @DOF_SECF_LOAD, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %262
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %271 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %270, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

272:                                              ; preds = %262, %256
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @DOF_SECF_LOAD, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %272
  br label %355

280:                                              ; preds = %272
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ISP2(i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %280
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %288 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %287, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

289:                                              ; preds = %280
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %295, 1
  %297 = and i32 %292, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %289
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %301 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %300, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

302:                                              ; preds = %289
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = load i64, i64* %16, align 8
  %308 = icmp sgt i64 %306, %307
  br i1 %308, label %326, label %309

309:                                              ; preds = %302
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 4
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %16, align 8
  %314 = icmp sgt i64 %312, %313
  br i1 %314, label %326, label %315

315:                                              ; preds = %309
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %319, %322
  %324 = load i64, i64* %16, align 8
  %325 = icmp sgt i64 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %315, %309, %302
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %328 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %327, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

329:                                              ; preds = %315
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %329
  %336 = load i64, i64* %18, align 8
  %337 = inttoptr i64 %336 to i8*
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %337, i64 %341
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  %347 = getelementptr inbounds i8, i8* %346, i64 -1
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %335
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %353 = call i32 @dtrace_dof_error(%struct.TYPE_10__* %352, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %456

354:                                              ; preds = %335, %329
  br label %355

355:                                              ; preds = %354, %279
  %356 = load i64, i64* %21, align 8
  %357 = add i64 %356, 1
  store i64 %357, i64* %21, align 8
  br label %227

358:                                              ; preds = %227
  store i64 0, i64* %21, align 8
  br label %359

359:                                              ; preds = %399, %358
  %360 = load i64, i64* %21, align 8
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = icmp ult i64 %360, %363
  br i1 %364, label %365, label %402

365:                                              ; preds = %359
  %366 = load i64, i64* %18, align 8
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 5
  %369 = load i64, i64* %368, align 8
  %370 = add i64 %366, %369
  %371 = load i64, i64* %21, align 8
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = mul i64 %371, %374
  %376 = add i64 %370, %375
  %377 = inttoptr i64 %376 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %377, %struct.TYPE_9__** %23, align 8
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @DOF_SECF_LOAD, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %365
  br label %399

385:                                              ; preds = %365
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  switch i32 %388, label %398 [
    i32 128, label %389
  ]

389:                                              ; preds = %385
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %392 = load i64, i64* %13, align 8
  %393 = load i64, i64* %14, align 8
  %394 = call i32 @dtrace_dof_relocate(%struct.TYPE_10__* %390, %struct.TYPE_9__* %391, i64 %392, i64 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %389
  store i32 -1, i32* %8, align 4
  br label %456

397:                                              ; preds = %389
  br label %398

398:                                              ; preds = %385, %397
  br label %399

399:                                              ; preds = %398, %384
  %400 = load i64, i64* %21, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %21, align 8
  br label %359

402:                                              ; preds = %359
  %403 = load i32**, i32*** %12, align 8
  %404 = load i32*, i32** %403, align 8
  store i32* %404, i32** %20, align 8
  %405 = icmp eq i32* %404, null
  br i1 %405, label %406, label %410

406:                                              ; preds = %402
  %407 = load i32*, i32** %10, align 8
  %408 = call i32* @dtrace_enabling_create(i32* %407)
  %409 = load i32**, i32*** %12, align 8
  store i32* %408, i32** %409, align 8
  store i32* %408, i32** %20, align 8
  br label %410

410:                                              ; preds = %406, %402
  store i64 0, i64* %21, align 8
  br label %411

411:                                              ; preds = %452, %410
  %412 = load i64, i64* %21, align 8
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 4
  %415 = load i64, i64* %414, align 8
  %416 = icmp ult i64 %412, %415
  br i1 %416, label %417, label %455

417:                                              ; preds = %411
  %418 = load i64, i64* %18, align 8
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 5
  %421 = load i64, i64* %420, align 8
  %422 = add i64 %418, %421
  %423 = load i64, i64* %21, align 8
  %424 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 3
  %426 = load i64, i64* %425, align 8
  %427 = mul i64 %423, %426
  %428 = add i64 %422, %427
  %429 = inttoptr i64 %428 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %429, %struct.TYPE_9__** %24, align 8
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = sext i32 %432 to i64
  %434 = load i64, i64* @DOF_SECT_ECBDESC, align 8
  %435 = icmp ne i64 %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %417
  br label %452

437:                                              ; preds = %417
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %440 = load i32*, i32** %10, align 8
  %441 = load i32*, i32** %11, align 8
  %442 = call i32* @dtrace_dof_ecbdesc(%struct.TYPE_10__* %438, %struct.TYPE_9__* %439, i32* %440, i32* %441)
  store i32* %442, i32** %19, align 8
  %443 = icmp eq i32* %442, null
  br i1 %443, label %444, label %448

444:                                              ; preds = %437
  %445 = load i32*, i32** %20, align 8
  %446 = call i32 @dtrace_enabling_destroy(i32* %445)
  %447 = load i32**, i32*** %12, align 8
  store i32* null, i32** %447, align 8
  store i32 -1, i32* %8, align 4
  br label %456

448:                                              ; preds = %437
  %449 = load i32*, i32** %20, align 8
  %450 = load i32*, i32** %19, align 8
  %451 = call i32 @dtrace_enabling_add(i32* %449, i32* %450)
  br label %452

452:                                              ; preds = %448, %436
  %453 = load i64, i64* %21, align 8
  %454 = add i64 %453, 1
  store i64 %454, i64* %21, align 8
  br label %411

455:                                              ; preds = %411
  store i32 0, i32* %8, align 4
  br label %456

456:                                              ; preds = %455, %444, %396, %351, %326, %299, %286, %269, %252, %223, %214, %205, %177, %169, %154, %137, %125, %113, %101, %80, %68, %47
  %457 = load i32, i32* %8, align 4
  ret i32 %457
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @bcmp(i64*, i32, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @IS_P2ALIGNED(i64, i32) #1

declare dso_local i64 @DOF_SEC_ISLOADABLE(i32) #1

declare dso_local i32 @ISP2(i32) #1

declare dso_local i32 @dtrace_dof_relocate(%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i64) #1

declare dso_local i32* @dtrace_enabling_create(i32*) #1

declare dso_local i32* @dtrace_dof_ecbdesc(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @dtrace_enabling_destroy(i32*) #1

declare dso_local i32 @dtrace_enabling_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
