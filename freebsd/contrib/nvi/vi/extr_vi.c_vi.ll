; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_vi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vi.c_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_65__ = type { i32, i64, i64, i32, i32 (%struct.TYPE_65__*, i32*)*, %struct.TYPE_64__*, i32 (%struct.TYPE_65__*, i32, i32)*, %struct.TYPE_65__*, %struct.TYPE_65__*, %struct.TYPE_62__, i64 (%struct.TYPE_65__*, %struct.TYPE_65__*)*, %struct.TYPE_65__*, i32, %struct.TYPE_63__, %struct.TYPE_60__, i32, i32, i32, i32 }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_62__ = type { i64, i64 }
%struct.TYPE_63__ = type { i64, i64 }
%struct.TYPE_60__ = type { i64, i64 }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_66__ = type { i64, i64 }

@VIP_S_REFRESH = common dso_local global i32 0, align 4
@SM_COMMAND = common dso_local global i32 0, align 4
@VIP_RCM_LAST = common dso_local global i32 0, align 4
@vikeys = common dso_local global %struct.TYPE_65__* null, align 8
@DOT = common dso_local global %struct.TYPE_65__* null, align 8
@V_SECURE = common dso_local global i32 0, align 4
@O_SECURE = common dso_local global i32 0, align 4
@EXM_SECURE = common dso_local global i32 0, align 4
@VC_ISDOT = common dso_local global i32 0, align 4
@DOTMOTION = common dso_local global %struct.TYPE_61__* null, align 8
@V_ABS = common dso_local global i32 0, align 4
@V_ABS_C = common dso_local global i32 0, align 4
@V_ABS_L = common dso_local global i32 0, align 4
@V_MOTION = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4
@SC_EXIT = common dso_local global i32 0, align 4
@SC_EXIT_FORCE = common dso_local global i32 0, align 4
@VIP_CUR_INVALID = common dso_local global i32 0, align 4
@V_DOT = common dso_local global i32 0, align 4
@VC_C1RESET = common dso_local global i32 0, align 4
@VM_COMMASK = common dso_local global i32 0, align 4
@VM_RCM_MASK = common dso_local global i32 0, align 4
@ABSMARK1 = common dso_local global i32 0, align 4
@CH_MAPPED = common dso_local global i32 0, align 4
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"110|Vi command failed: mapped keys discarded\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"231|Interrupted: mapped keys discarded\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"236|Interrupted\00", align 1
@SC_SSWITCH = common dso_local global i32 0, align 4
@SC_STATUS = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4
@G_SRESTART = common dso_local global i32 0, align 4
@SC_EX = common dso_local global i32 0, align 4
@G_TMP_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vi(%struct.TYPE_65__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_65__**, align 8
  %4 = alloca %struct.TYPE_65__*, align 8
  %5 = alloca %struct.TYPE_66__, align 8
  %6 = alloca %struct.TYPE_65__*, align 8
  %7 = alloca %struct.TYPE_65__*, align 8
  %8 = alloca %struct.TYPE_65__, align 8
  %9 = alloca %struct.TYPE_65__*, align 8
  %10 = alloca %struct.TYPE_65__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_65__** %0, %struct.TYPE_65__*** %3, align 8
  %14 = bitcast %struct.TYPE_65__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 160, i1 false)
  %15 = load %struct.TYPE_65__**, %struct.TYPE_65__*** %3, align 8
  %16 = load %struct.TYPE_65__*, %struct.TYPE_65__** %15, align 8
  store %struct.TYPE_65__* %16, %struct.TYPE_65__** %7, align 8
  %17 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_65__*, %struct.TYPE_65__** %18, align 8
  store %struct.TYPE_65__* %19, %struct.TYPE_65__** %4, align 8
  store %struct.TYPE_65__* %8, %struct.TYPE_65__** %9, align 8
  %20 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %21 = call i32 @F_SET(%struct.TYPE_65__* %20, i32 131)
  %22 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %23 = call i64 @v_init(%struct.TYPE_65__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %549

26:                                               ; preds = %1
  %27 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_65__*, %struct.TYPE_65__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %29, i32 0, i32 6
  %31 = load i32 (%struct.TYPE_65__*, i32, i32)*, i32 (%struct.TYPE_65__*, i32, i32)** %30, align 8
  %32 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %33 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_64__*, %struct.TYPE_64__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %31(%struct.TYPE_65__* %32, i32 %37, i32 1)
  %39 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %40 = call %struct.TYPE_65__* @VIP(%struct.TYPE_65__* %39)
  store %struct.TYPE_65__* %40, %struct.TYPE_65__** %10, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %543, %288, %26
  %42 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %43 = call i64 @MAPPED_KEYS_WAITING(%struct.TYPE_65__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %47 = call i64 @vs_resolve(%struct.TYPE_65__* %46, i32* null, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %546

50:                                               ; preds = %45, %41
  %51 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %52 = load i32, i32* @VIP_S_REFRESH, align 4
  %53 = call i32 @F_ISSET(%struct.TYPE_65__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %57 = load i32, i32* @VIP_S_REFRESH, align 4
  %58 = call i32 @F_CLR(%struct.TYPE_65__* %56, i32 %57)
  br label %68

59:                                               ; preds = %50
  %60 = load i32, i32* @SM_COMMAND, align 4
  %61 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %61, i32 0, i32 17
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %64 = call i64 @vs_refresh(%struct.TYPE_65__* %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %546

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %70 = call i32 @F_ISSET(%struct.TYPE_65__* %69, i32 131)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %74 = load i32, i32* @VIP_RCM_LAST, align 4
  %75 = call i32 @F_CLR(%struct.TYPE_65__* %73, i32 %74)
  %76 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %77 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %77, i32 0, i32 16
  %79 = call i32 @vs_column(%struct.TYPE_65__* %76, i32* %78)
  br label %80

80:                                               ; preds = %72, %68
  %81 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %82 = call i64 @MAPPED_KEYS_WAITING(%struct.TYPE_65__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %12, align 4
  br label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %87 = call i64 @log_cursor(%struct.TYPE_65__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %433

90:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %84
  %92 = load %struct.TYPE_65__*, %struct.TYPE_65__** %4, align 8
  %93 = call i64 @EXCMD_RUNNING(%struct.TYPE_65__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.TYPE_65__*, %struct.TYPE_65__** @vikeys, align 8
  %97 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %96, i64 58
  %98 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %98, i32 0, i32 11
  store %struct.TYPE_65__* %97, %struct.TYPE_65__** %99, align 8
  br label %237

100:                                              ; preds = %91
  %101 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %102 = call i32 @memset(%struct.TYPE_65__* %101, i32 0, i32 160)
  %103 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %104 = load %struct.TYPE_65__*, %struct.TYPE_65__** @DOT, align 8
  %105 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %106 = call i32 @v_cmd(%struct.TYPE_65__* %103, %struct.TYPE_65__* %104, %struct.TYPE_65__* %105, i32* null, i32* %11, i32* %12)
  switch i32 %106, label %113 [
    i32 138, label %107
    i32 137, label %108
    i32 136, label %109
    i32 135, label %110
    i32 134, label %111
    i32 133, label %112
  ]

107:                                              ; preds = %100
  br label %433

108:                                              ; preds = %100
  br label %444

109:                                              ; preds = %100
  br label %249

110:                                              ; preds = %100
  br label %546

111:                                              ; preds = %100
  br label %449

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %100, %112
  %114 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %114, i32 0, i32 11
  %116 = load %struct.TYPE_65__*, %struct.TYPE_65__** %115, align 8
  %117 = load i32, i32* @V_SECURE, align 4
  %118 = call i32 @F_ISSET(%struct.TYPE_65__* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %122 = load i32, i32* @O_SECURE, align 4
  %123 = call i64 @O_ISSET(%struct.TYPE_65__* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %127 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %128 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %128, i32 0, i32 15
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @KEY_NAME(%struct.TYPE_65__* %127, i32 %130)
  %132 = load i32, i32* @EXM_SECURE, align 4
  %133 = call i32 @ex_emsg(%struct.TYPE_65__* %126, i32 %131, i32 %132)
  br label %433

134:                                              ; preds = %120, %113
  %135 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %136 = load i32, i32* @VC_ISDOT, align 4
  %137 = call i32 @F_ISSET(%struct.TYPE_65__* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.TYPE_61__*, %struct.TYPE_61__** @DOTMOTION, align 8
  %144 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139, %134
  %146 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %147 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %147, i32 0, i32 11
  %149 = load %struct.TYPE_65__*, %struct.TYPE_65__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @F_SET(%struct.TYPE_65__* %146, i32 %151)
  %153 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %154 = load i32, i32* @V_ABS, align 4
  %155 = load i32, i32* @V_ABS_C, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @V_ABS_L, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @F_ISSET(%struct.TYPE_65__* %153, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %145
  %162 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %5, i32 0, i32 0
  store i64 %164, i64* %165, align 8
  %166 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %5, i32 0, i32 1
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %161, %145
  %171 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %175, i32 0, i32 0
  store i64 %173, i64* %176, align 8
  %177 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %177, i32 0, i32 13
  %179 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %178, i32 0, i32 0
  store i64 %173, i64* %179, align 8
  %180 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %180, i32 0, i32 14
  %182 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %181, i32 0, i32 0
  store i64 %173, i64* %182, align 8
  %183 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %187, i32 0, i32 1
  store i64 %185, i64* %188, align 8
  %189 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %189, i32 0, i32 13
  %191 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %190, i32 0, i32 1
  store i64 %185, i64* %191, align 8
  %192 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %192, i32 0, i32 14
  %194 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %193, i32 0, i32 1
  store i64 %185, i64* %194, align 8
  %195 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %196 = load i32, i32* @V_MOTION, align 4
  %197 = call i32 @F_ISSET(%struct.TYPE_65__* %195, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %170
  %200 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %201 = load %struct.TYPE_61__*, %struct.TYPE_61__** @DOTMOTION, align 8
  %202 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %203 = call i64 @v_motion(%struct.TYPE_65__* %200, %struct.TYPE_61__* %201, %struct.TYPE_65__* %202, i32* %12)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %207 = call i64 @INTERRUPTED(%struct.TYPE_65__* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %449

210:                                              ; preds = %205
  br label %433

211:                                              ; preds = %199, %170
  %212 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %213 = load i32, i32* @VC_C1SET, align 4
  %214 = call i32 @F_ISSET(%struct.TYPE_65__* %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %211
  %217 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %218 = load i32, i32* @VM_LMODE, align 4
  %219 = call i32 @F_ISSET(%struct.TYPE_65__* %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %227, i32 0, i32 13
  %229 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, %226
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %221, %216, %211
  %233 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %233, i32 0, i32 12
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %232, %95
  %238 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %238, i32 0, i32 11
  %240 = load %struct.TYPE_65__*, %struct.TYPE_65__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %240, i32 0, i32 10
  %242 = load i64 (%struct.TYPE_65__*, %struct.TYPE_65__*)*, i64 (%struct.TYPE_65__*, %struct.TYPE_65__*)** %241, align 8
  %243 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %244 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %245 = call i64 %242(%struct.TYPE_65__* %243, %struct.TYPE_65__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %433

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %109
  %250 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %251 = load i32, i32* @SC_EXIT, align 4
  %252 = load i32, i32* @SC_EXIT_FORCE, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @F_ISSET(%struct.TYPE_65__* %250, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %307

256:                                              ; preds = %249
  %257 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %258 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %259 = load i32, i32* @SC_EXIT_FORCE, align 4
  %260 = call i32 @F_ISSET(%struct.TYPE_65__* %258, i32 %259)
  %261 = call i64 @file_end(%struct.TYPE_65__* %257, i32* null, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  br label %546

264:                                              ; preds = %256
  %265 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %266 = call i64 @vs_discard(%struct.TYPE_65__* %265, %struct.TYPE_65__** %6)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %546

269:                                              ; preds = %264
  %270 = load %struct.TYPE_65__*, %struct.TYPE_65__** %6, align 8
  %271 = icmp eq %struct.TYPE_65__* %270, null
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %274 = call i64 @vs_swap(%struct.TYPE_65__* %273, %struct.TYPE_65__** %6, i32* null)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  br label %546

277:                                              ; preds = %272, %269
  %278 = load %struct.TYPE_65__*, %struct.TYPE_65__** %6, align 8
  %279 = load %struct.TYPE_65__**, %struct.TYPE_65__*** %3, align 8
  store %struct.TYPE_65__* %278, %struct.TYPE_65__** %279, align 8
  %280 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %281 = call i64 @screen_end(%struct.TYPE_65__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %546

284:                                              ; preds = %277
  %285 = load %struct.TYPE_65__*, %struct.TYPE_65__** %6, align 8
  %286 = icmp eq %struct.TYPE_65__* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %544

288:                                              ; preds = %284
  %289 = load %struct.TYPE_65__*, %struct.TYPE_65__** %6, align 8
  store %struct.TYPE_65__* %289, %struct.TYPE_65__** %7, align 8
  %290 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %291 = call %struct.TYPE_65__* @VIP(%struct.TYPE_65__* %290)
  store %struct.TYPE_65__* %291, %struct.TYPE_65__** %10, align 8
  %292 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %292, i32 0, i32 7
  %294 = load %struct.TYPE_65__*, %struct.TYPE_65__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %294, i32 0, i32 6
  %296 = load i32 (%struct.TYPE_65__*, i32, i32)*, i32 (%struct.TYPE_65__*, i32, i32)** %295, align 8
  %297 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %298 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_64__*, %struct.TYPE_64__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 %296(%struct.TYPE_65__* %297, i32 %302, i32 1)
  %304 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %305 = load i32, i32* @VIP_CUR_INVALID, align 4
  %306 = call i32 @F_SET(%struct.TYPE_65__* %304, i32 %305)
  br label %41

307:                                              ; preds = %249
  %308 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %309 = load i32, i32* @V_DOT, align 4
  %310 = call i32 @F_ISSET(%struct.TYPE_65__* %308, i32 %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %336

312:                                              ; preds = %307
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %336, label %315

315:                                              ; preds = %312
  %316 = load %struct.TYPE_65__*, %struct.TYPE_65__** @DOT, align 8
  %317 = bitcast %struct.TYPE_65__* %316 to i8*
  %318 = bitcast %struct.TYPE_65__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %317, i8* align 8 %318, i64 160, i1 false)
  %319 = load %struct.TYPE_65__*, %struct.TYPE_65__** @DOT, align 8
  %320 = load i32, i32* @VC_ISDOT, align 4
  %321 = call i32 @F_SET(%struct.TYPE_65__* %319, i32 %320)
  %322 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %323 = load i32, i32* @VC_C1RESET, align 4
  %324 = call i32 @F_ISSET(%struct.TYPE_65__* %322, i32 %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %315
  %327 = load %struct.TYPE_65__*, %struct.TYPE_65__** @DOT, align 8
  %328 = load i32, i32* @VC_C1SET, align 4
  %329 = call i32 @F_SET(%struct.TYPE_65__* %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %315
  %331 = load %struct.TYPE_65__*, %struct.TYPE_65__** @DOT, align 8
  %332 = load i32, i32* @VM_COMMASK, align 4
  %333 = load i32, i32* @VM_RCM_MASK, align 4
  %334 = or i32 %332, %333
  %335 = call i32 @F_CLR(%struct.TYPE_65__* %331, i32 %334)
  br label %336

336:                                              ; preds = %330, %312, %307
  %337 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %338 = load i32, i32* @VM_RCM_MASK, align 4
  %339 = call i32 @F_ISSET(%struct.TYPE_65__* %337, i32 %338)
  switch i32 %339, label %375 [
    i32 0, label %340
    i32 131, label %340
    i32 132, label %341
    i32 129, label %354
    i32 130, label %358
    i32 128, label %362
  ]

340:                                              ; preds = %336, %336
  br label %377

341:                                              ; preds = %336
  %342 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %343 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %348 = load i32, i32* @VIP_RCM_LAST, align 4
  %349 = call i32 @F_ISSET(%struct.TYPE_65__* %347, i32 %348)
  %350 = call i64 @vs_rcm(%struct.TYPE_65__* %342, i64 %346, i32 %349)
  %351 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %351, i32 0, i32 9
  %353 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %352, i32 0, i32 1
  store i64 %350, i64* %353, align 8
  br label %377

354:                                              ; preds = %336
  %355 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %356 = load i32, i32* @VIP_RCM_LAST, align 4
  %357 = call i32 @F_SET(%struct.TYPE_65__* %355, i32 %356)
  br label %377

358:                                              ; preds = %336
  %359 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %359, i32 0, i32 9
  %361 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %360, i32 0, i32 1
  store i64 0, i64* %361, align 8
  br label %362

362:                                              ; preds = %336, %358
  %363 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %364 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %364, i32 0, i32 9
  %366 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %368, i32 0, i32 9
  %370 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %369, i32 0, i32 1
  %371 = call i32 @nonblank(%struct.TYPE_65__* %363, i64 %367, i64* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %362
  br label %433

374:                                              ; preds = %362
  br label %377

375:                                              ; preds = %336
  %376 = call i32 (...) @abort() #4
  unreachable

377:                                              ; preds = %374, %354, %341, %340
  %378 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %378, i32 0, i32 9
  %380 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %382, i32 0, i32 1
  store i64 %381, i64* %383, align 8
  %384 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %384, i32 0, i32 9
  %386 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %388, i32 0, i32 2
  store i64 %387, i64* %389, align 8
  %390 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %391 = load i32, i32* @V_ABS, align 4
  %392 = call i32 @F_ISSET(%struct.TYPE_65__* %390, i32 %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %425, label %394

394:                                              ; preds = %377
  %395 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %396 = load i32, i32* @V_ABS_L, align 4
  %397 = call i32 @F_ISSET(%struct.TYPE_65__* %395, i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %394
  %400 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %5, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %402, %404
  br i1 %405, label %425, label %406

406:                                              ; preds = %399, %394
  %407 = load %struct.TYPE_65__*, %struct.TYPE_65__** %9, align 8
  %408 = load i32, i32* @V_ABS_C, align 4
  %409 = call i32 @F_ISSET(%struct.TYPE_65__* %407, i32 %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %431

411:                                              ; preds = %406
  %412 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %5, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %414, %416
  br i1 %417, label %425, label %418

418:                                              ; preds = %411
  %419 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %5, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %421, %423
  br i1 %424, label %425, label %431

425:                                              ; preds = %418, %411, %399, %377
  %426 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %427 = load i32, i32* @ABSMARK1, align 4
  %428 = call i64 @mark_set(%struct.TYPE_65__* %426, i32 %427, %struct.TYPE_66__* %5, i32 1)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  br label %433

431:                                              ; preds = %425, %418, %406
  br i1 false, label %432, label %443

432:                                              ; preds = %431
  br label %433

433:                                              ; preds = %432, %430, %373, %247, %210, %125, %107, %89
  %434 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %435 = load i32, i32* @CH_MAPPED, align 4
  %436 = call i64 @v_event_flush(%struct.TYPE_65__* %434, i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %433
  %439 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %440 = load i32, i32* @M_BERR, align 4
  %441 = call i32 @msgq(%struct.TYPE_65__* %439, i32 %440, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %442

442:                                              ; preds = %438, %433
  br label %443

443:                                              ; preds = %442, %431
  br label %444

444:                                              ; preds = %443, %108
  %445 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %446 = call i64 @INTERRUPTED(%struct.TYPE_65__* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %465

448:                                              ; preds = %444
  br label %449

449:                                              ; preds = %448, %209, %111
  %450 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %451 = call i32 @CLR_INTERRUPT(%struct.TYPE_65__* %450)
  %452 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %453 = load i32, i32* @CH_MAPPED, align 4
  %454 = call i64 @v_event_flush(%struct.TYPE_65__* %452, i32 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %449
  %457 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %458 = load i32, i32* @M_ERR, align 4
  %459 = call i32 @msgq(%struct.TYPE_65__* %457, i32 %458, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %464

460:                                              ; preds = %449
  %461 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %462 = load i32, i32* @M_ERR, align 4
  %463 = call i32 @msgq(%struct.TYPE_65__* %461, i32 %462, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %464

464:                                              ; preds = %460, %456
  br label %465

465:                                              ; preds = %464, %444
  %466 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %467 = load i32, i32* @SC_SSWITCH, align 4
  %468 = call i32 @F_ISSET(%struct.TYPE_65__* %466, i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %502

470:                                              ; preds = %465
  %471 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %472 = load i32, i32* @SC_SSWITCH, align 4
  %473 = call i32 @F_CLR(%struct.TYPE_65__* %471, i32 %472)
  %474 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %475 = load i32, i32* @SC_STATUS, align 4
  %476 = call i32 @F_SET(%struct.TYPE_65__* %474, i32 %475)
  %477 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %477, i32 0, i32 8
  %479 = load %struct.TYPE_65__*, %struct.TYPE_65__** %478, align 8
  store %struct.TYPE_65__* %479, %struct.TYPE_65__** %7, align 8
  %480 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %481 = call %struct.TYPE_65__* @VIP(%struct.TYPE_65__* %480)
  store %struct.TYPE_65__* %481, %struct.TYPE_65__** %10, align 8
  %482 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %482, i32 0, i32 7
  %484 = load %struct.TYPE_65__*, %struct.TYPE_65__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %484, i32 0, i32 6
  %486 = load i32 (%struct.TYPE_65__*, i32, i32)*, i32 (%struct.TYPE_65__*, i32, i32)** %485, align 8
  %487 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %488 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %488, i32 0, i32 5
  %490 = load %struct.TYPE_64__*, %struct.TYPE_64__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = call i32 %486(%struct.TYPE_65__* %487, i32 %492, i32 1)
  %494 = load %struct.TYPE_65__*, %struct.TYPE_65__** %10, align 8
  %495 = load i32, i32* @VIP_CUR_INVALID, align 4
  %496 = call i32 @F_SET(%struct.TYPE_65__* %494, i32 %495)
  %497 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %498 = call i64 @vs_refresh(%struct.TYPE_65__* %497, i32 1)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %470
  store i32 1, i32* %2, align 4
  br label %549

501:                                              ; preds = %470
  br label %502

502:                                              ; preds = %501, %465
  %503 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %504 = load i32, i32* @SC_FSWITCH, align 4
  %505 = call i32 @F_ISSET(%struct.TYPE_65__* %503, i32 %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %523

507:                                              ; preds = %502
  %508 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %509 = load i32, i32* @SC_FSWITCH, align 4
  %510 = call i32 @F_CLR(%struct.TYPE_65__* %508, i32 %509)
  %511 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %511, i32 0, i32 7
  %513 = load %struct.TYPE_65__*, %struct.TYPE_65__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %513, i32 0, i32 6
  %515 = load i32 (%struct.TYPE_65__*, i32, i32)*, i32 (%struct.TYPE_65__*, i32, i32)** %514, align 8
  %516 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %517 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %517, i32 0, i32 5
  %519 = load %struct.TYPE_64__*, %struct.TYPE_64__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = call i32 %515(%struct.TYPE_65__* %516, i32 %521, i32 1)
  br label %523

523:                                              ; preds = %507, %502
  %524 = load %struct.TYPE_65__*, %struct.TYPE_65__** %4, align 8
  %525 = load i32, i32* @G_SRESTART, align 4
  %526 = call i32 @F_ISSET(%struct.TYPE_65__* %524, i32 %525)
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %533, label %528

528:                                              ; preds = %523
  %529 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %530 = load i32, i32* @SC_EX, align 4
  %531 = call i32 @F_ISSET(%struct.TYPE_65__* %529, i32 %530)
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %543

533:                                              ; preds = %528, %523
  %534 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %535 = load %struct.TYPE_65__**, %struct.TYPE_65__*** %3, align 8
  store %struct.TYPE_65__* %534, %struct.TYPE_65__** %535, align 8
  %536 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %537 = call i32 @v_dtoh(%struct.TYPE_65__* %536)
  %538 = load %struct.TYPE_65__*, %struct.TYPE_65__** %4, align 8
  %539 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %538, i32 0, i32 4
  %540 = load i32 (%struct.TYPE_65__*, i32*)*, i32 (%struct.TYPE_65__*, i32*)** %539, align 8
  %541 = load %struct.TYPE_65__*, %struct.TYPE_65__** %7, align 8
  %542 = call i32 %540(%struct.TYPE_65__* %541, i32* null)
  br label %544

543:                                              ; preds = %528
  br label %41

544:                                              ; preds = %533, %287
  br i1 false, label %545, label %547

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545, %283, %276, %268, %263, %110, %66, %49
  store i32 1, i32* %13, align 4
  br label %547

547:                                              ; preds = %546, %544
  %548 = load i32, i32* %13, align 4
  store i32 %548, i32* %2, align 4
  br label %549

549:                                              ; preds = %547, %500, %25
  %550 = load i32, i32* %2, align 4
  ret i32 %550
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @F_SET(%struct.TYPE_65__*, i32) #2

declare dso_local i64 @v_init(%struct.TYPE_65__*) #2

declare dso_local %struct.TYPE_65__* @VIP(%struct.TYPE_65__*) #2

declare dso_local i64 @MAPPED_KEYS_WAITING(%struct.TYPE_65__*) #2

declare dso_local i64 @vs_resolve(%struct.TYPE_65__*, i32*, i32) #2

declare dso_local i32 @F_ISSET(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @F_CLR(%struct.TYPE_65__*, i32) #2

declare dso_local i64 @vs_refresh(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @vs_column(%struct.TYPE_65__*, i32*) #2

declare dso_local i64 @log_cursor(%struct.TYPE_65__*) #2

declare dso_local i64 @EXCMD_RUNNING(%struct.TYPE_65__*) #2

declare dso_local i32 @memset(%struct.TYPE_65__*, i32, i32) #2

declare dso_local i32 @v_cmd(%struct.TYPE_65__*, %struct.TYPE_65__*, %struct.TYPE_65__*, i32*, i32*, i32*) #2

declare dso_local i64 @O_ISSET(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @ex_emsg(%struct.TYPE_65__*, i32, i32) #2

declare dso_local i32 @KEY_NAME(%struct.TYPE_65__*, i32) #2

declare dso_local i64 @v_motion(%struct.TYPE_65__*, %struct.TYPE_61__*, %struct.TYPE_65__*, i32*) #2

declare dso_local i64 @INTERRUPTED(%struct.TYPE_65__*) #2

declare dso_local i64 @file_end(%struct.TYPE_65__*, i32*, i32) #2

declare dso_local i64 @vs_discard(%struct.TYPE_65__*, %struct.TYPE_65__**) #2

declare dso_local i64 @vs_swap(%struct.TYPE_65__*, %struct.TYPE_65__**, i32*) #2

declare dso_local i64 @screen_end(%struct.TYPE_65__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @vs_rcm(%struct.TYPE_65__*, i64, i32) #2

declare dso_local i32 @nonblank(%struct.TYPE_65__*, i64, i64*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @mark_set(%struct.TYPE_65__*, i32, %struct.TYPE_66__*, i32) #2

declare dso_local i64 @v_event_flush(%struct.TYPE_65__*, i32) #2

declare dso_local i32 @msgq(%struct.TYPE_65__*, i32, i8*) #2

declare dso_local i32 @CLR_INTERRUPT(%struct.TYPE_65__*) #2

declare dso_local i32 @v_dtoh(%struct.TYPE_65__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
