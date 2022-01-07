; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_rule_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_rule_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.group = type { i8* }
%struct.passwd = type { i8* }
%struct.statfs = type { i8*, i32 }

@CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"subject \00", align 1
@MBS_ALL_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@MBO_UID_DEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"uid %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"uid %u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c":%s \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c":%u \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@MBO_GID_DEFINED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"gid %s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"gid %u\00", align 1
@MBS_PRISON_DEFINED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"jailid %d \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"object \00", align 1
@MBO_ALL_FLAGS = common dso_local global i32 0, align 4
@MBO_FSID_DEFINED = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"filesys %s \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@MBO_SUID = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"suid \00", align 1
@MBO_SGID = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"sgid \00", align 1
@MBO_UID_SUBJECT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"uid_of_subject \00", align 1
@MBO_GID_SUBJECT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"gid_of_subject \00", align 1
@MBO_TYPE_DEFINED = common dso_local global i32 0, align 4
@MBO_TYPE_REG = common dso_local global i32 0, align 4
@MBO_TYPE_DIR = common dso_local global i32 0, align 4
@MBO_TYPE_BLK = common dso_local global i32 0, align 4
@MBO_TYPE_CHR = common dso_local global i32 0, align 4
@MBO_TYPE_LNK = common dso_local global i32 0, align 4
@MBO_TYPE_SOCK = common dso_local global i32 0, align 4
@MBO_TYPE_FIFO = common dso_local global i32 0, align 4
@MBO_ALL_TYPE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"type %s \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"mode \00", align 1
@MBI_ALLPERM = common dso_local global i32 0, align 4
@MBI_ADMIN = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@MBI_READ = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MBI_STAT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@MBI_WRITE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@MBI_EXEC = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsde_rule_to_string(%struct.mac_bsdextended_rule* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_bsdextended_rule*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca %struct.statfs*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mac_bsdextended_rule* %0, %struct.mac_bsdextended_rule** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load i32, i32* @CHAR_BIT, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = add i64 %24, 1
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %11, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ult i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %3
  br label %1533

40:                                               ; preds = %35
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %11, align 8
  %47 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %48 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %476

52:                                               ; preds = %40
  %53 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %54 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MBS_ALL_FLAGS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp ult i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %59
  br label %1533

70:                                               ; preds = %65
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %14, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %11, align 8
  store i32 1, i32* %20, align 4
  br label %78

77:                                               ; preds = %52
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %78
  %82 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %83 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MBO_UID_DEFINED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %81
  %90 = load i8*, i8** %11, align 8
  %91 = load i64, i64* %14, align 8
  %92 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %90, i64 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp ult i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %89
  br label %1533

100:                                              ; preds = %95
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %14, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %100, %81, %78
  %108 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %109 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MBO_UID_DEFINED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %247

115:                                              ; preds = %107
  %116 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %117 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.passwd* @getpwuid(i32 %119)
  store %struct.passwd* %120, %struct.passwd** %9, align 8
  %121 = load %struct.passwd*, %struct.passwd** %9, align 8
  %122 = icmp ne %struct.passwd* %121, null
  br i1 %122, label %123, label %144

123:                                              ; preds = %115
  %124 = load i8*, i8** %11, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load %struct.passwd*, %struct.passwd** %9, align 8
  %127 = getelementptr inbounds %struct.passwd, %struct.passwd* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %124, i64 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %15, align 8
  %131 = icmp ult i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %14, align 8
  %135 = icmp ugt i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %123
  br label %1533

137:                                              ; preds = %132
  %138 = load i64, i64* %15, align 8
  %139 = load i64, i64* %14, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  store i8* %143, i8** %11, align 8
  br label %166

144:                                              ; preds = %115
  %145 = load i8*, i8** %11, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %148 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %145, i64 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  store i64 %151, i64* %15, align 8
  %152 = load i64, i64* %15, align 8
  %153 = icmp ult i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %144
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %14, align 8
  %157 = icmp ugt i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %144
  br label %1533

159:                                              ; preds = %154
  %160 = load i64, i64* %15, align 8
  %161 = load i64, i64* %14, align 8
  %162 = sub i64 %161, %160
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %163
  store i8* %165, i8** %11, align 8
  br label %166

166:                                              ; preds = %159, %137
  %167 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %168 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %172 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %170, %174
  br i1 %175, label %176, label %228

176:                                              ; preds = %166
  %177 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %178 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.passwd* @getpwuid(i32 %180)
  store %struct.passwd* %181, %struct.passwd** %9, align 8
  %182 = load %struct.passwd*, %struct.passwd** %9, align 8
  %183 = icmp ne %struct.passwd* %182, null
  br i1 %183, label %184, label %205

184:                                              ; preds = %176
  %185 = load i8*, i8** %11, align 8
  %186 = load i64, i64* %14, align 8
  %187 = load %struct.passwd*, %struct.passwd** %9, align 8
  %188 = getelementptr inbounds %struct.passwd, %struct.passwd* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %185, i64 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %189)
  store i64 %190, i64* %15, align 8
  %191 = load i64, i64* %15, align 8
  %192 = icmp ult i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %184
  %194 = load i64, i64* %15, align 8
  %195 = load i64, i64* %14, align 8
  %196 = icmp ugt i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193, %184
  br label %1533

198:                                              ; preds = %193
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %14, align 8
  %201 = sub i64 %200, %199
  store i64 %201, i64* %14, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 %202
  store i8* %204, i8** %11, align 8
  br label %227

205:                                              ; preds = %176
  %206 = load i8*, i8** %11, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %209 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %206, i64 %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  store i64 %212, i64* %15, align 8
  %213 = load i64, i64* %15, align 8
  %214 = icmp ult i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %205
  %216 = load i64, i64* %15, align 8
  %217 = load i64, i64* %14, align 8
  %218 = icmp ugt i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %205
  br label %1533

220:                                              ; preds = %215
  %221 = load i64, i64* %15, align 8
  %222 = load i64, i64* %14, align 8
  %223 = sub i64 %222, %221
  store i64 %223, i64* %14, align 8
  %224 = load i64, i64* %15, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 %224
  store i8* %226, i8** %11, align 8
  br label %227

227:                                              ; preds = %220, %198
  br label %246

228:                                              ; preds = %166
  %229 = load i8*, i8** %11, align 8
  %230 = load i64, i64* %14, align 8
  %231 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %229, i64 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i64 %231, i64* %15, align 8
  %232 = load i64, i64* %15, align 8
  %233 = icmp ult i64 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %228
  %235 = load i64, i64* %15, align 8
  %236 = load i64, i64* %14, align 8
  %237 = icmp ugt i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %228
  br label %1533

239:                                              ; preds = %234
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* %14, align 8
  %242 = sub i64 %241, %240
  store i64 %242, i64* %14, align 8
  %243 = load i64, i64* %15, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 %243
  store i8* %245, i8** %11, align 8
  br label %246

246:                                              ; preds = %239, %227
  br label %247

247:                                              ; preds = %246, %107
  %248 = load i32, i32* %20, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %247
  %251 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %252 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MBO_GID_DEFINED, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %250
  %259 = load i8*, i8** %11, align 8
  %260 = load i64, i64* %14, align 8
  %261 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %259, i64 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %261, i64* %15, align 8
  %262 = load i64, i64* %15, align 8
  %263 = icmp ult i64 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %258
  %265 = load i64, i64* %15, align 8
  %266 = load i64, i64* %14, align 8
  %267 = icmp ugt i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264, %258
  br label %1533

269:                                              ; preds = %264
  %270 = load i64, i64* %15, align 8
  %271 = load i64, i64* %14, align 8
  %272 = sub i64 %271, %270
  store i64 %272, i64* %14, align 8
  %273 = load i64, i64* %15, align 8
  %274 = load i8*, i8** %11, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 %273
  store i8* %275, i8** %11, align 8
  br label %276

276:                                              ; preds = %269, %250, %247
  %277 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %278 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @MBO_GID_DEFINED, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %416

284:                                              ; preds = %276
  %285 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %286 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = call %struct.group* @getgrgid(i32 %288)
  store %struct.group* %289, %struct.group** %8, align 8
  %290 = load %struct.group*, %struct.group** %8, align 8
  %291 = icmp ne %struct.group* %290, null
  br i1 %291, label %292, label %313

292:                                              ; preds = %284
  %293 = load i8*, i8** %11, align 8
  %294 = load i64, i64* %14, align 8
  %295 = load %struct.group*, %struct.group** %8, align 8
  %296 = getelementptr inbounds %struct.group, %struct.group* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %293, i64 %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %297)
  store i64 %298, i64* %15, align 8
  %299 = load i64, i64* %15, align 8
  %300 = icmp ult i64 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %292
  %302 = load i64, i64* %15, align 8
  %303 = load i64, i64* %14, align 8
  %304 = icmp ugt i64 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %301, %292
  br label %1533

306:                                              ; preds = %301
  %307 = load i64, i64* %15, align 8
  %308 = load i64, i64* %14, align 8
  %309 = sub i64 %308, %307
  store i64 %309, i64* %14, align 8
  %310 = load i64, i64* %15, align 8
  %311 = load i8*, i8** %11, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 %310
  store i8* %312, i8** %11, align 8
  br label %335

313:                                              ; preds = %284
  %314 = load i8*, i8** %11, align 8
  %315 = load i64, i64* %14, align 8
  %316 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %317 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %314, i64 %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %319)
  store i64 %320, i64* %15, align 8
  %321 = load i64, i64* %15, align 8
  %322 = icmp ult i64 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %313
  %324 = load i64, i64* %15, align 8
  %325 = load i64, i64* %14, align 8
  %326 = icmp ugt i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %323, %313
  br label %1533

328:                                              ; preds = %323
  %329 = load i64, i64* %15, align 8
  %330 = load i64, i64* %14, align 8
  %331 = sub i64 %330, %329
  store i64 %331, i64* %14, align 8
  %332 = load i64, i64* %15, align 8
  %333 = load i8*, i8** %11, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 %332
  store i8* %334, i8** %11, align 8
  br label %335

335:                                              ; preds = %328, %306
  %336 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %337 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %341 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %339, %343
  br i1 %344, label %345, label %397

345:                                              ; preds = %335
  %346 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %347 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = call %struct.group* @getgrgid(i32 %349)
  store %struct.group* %350, %struct.group** %8, align 8
  %351 = load %struct.group*, %struct.group** %8, align 8
  %352 = icmp ne %struct.group* %351, null
  br i1 %352, label %353, label %374

353:                                              ; preds = %345
  %354 = load i8*, i8** %11, align 8
  %355 = load i64, i64* %14, align 8
  %356 = load %struct.group*, %struct.group** %8, align 8
  %357 = getelementptr inbounds %struct.group, %struct.group* %356, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %354, i64 %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %358)
  store i64 %359, i64* %15, align 8
  %360 = load i64, i64* %15, align 8
  %361 = icmp ult i64 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %353
  %363 = load i64, i64* %15, align 8
  %364 = load i64, i64* %14, align 8
  %365 = icmp ugt i64 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %362, %353
  br label %1533

367:                                              ; preds = %362
  %368 = load i64, i64* %15, align 8
  %369 = load i64, i64* %14, align 8
  %370 = sub i64 %369, %368
  store i64 %370, i64* %14, align 8
  %371 = load i64, i64* %15, align 8
  %372 = load i8*, i8** %11, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 %371
  store i8* %373, i8** %11, align 8
  br label %396

374:                                              ; preds = %345
  %375 = load i8*, i8** %11, align 8
  %376 = load i64, i64* %14, align 8
  %377 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %378 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %375, i64 %376, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %380)
  store i64 %381, i64* %15, align 8
  %382 = load i64, i64* %15, align 8
  %383 = icmp ult i64 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %374
  %385 = load i64, i64* %15, align 8
  %386 = load i64, i64* %14, align 8
  %387 = icmp ugt i64 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %384, %374
  br label %1533

389:                                              ; preds = %384
  %390 = load i64, i64* %15, align 8
  %391 = load i64, i64* %14, align 8
  %392 = sub i64 %391, %390
  store i64 %392, i64* %14, align 8
  %393 = load i64, i64* %15, align 8
  %394 = load i8*, i8** %11, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 %393
  store i8* %395, i8** %11, align 8
  br label %396

396:                                              ; preds = %389, %367
  br label %415

397:                                              ; preds = %335
  %398 = load i8*, i8** %11, align 8
  %399 = load i64, i64* %14, align 8
  %400 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %398, i64 %399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i64 %400, i64* %15, align 8
  %401 = load i64, i64* %15, align 8
  %402 = icmp ult i64 %401, 0
  br i1 %402, label %407, label %403

403:                                              ; preds = %397
  %404 = load i64, i64* %15, align 8
  %405 = load i64, i64* %14, align 8
  %406 = icmp ugt i64 %404, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %403, %397
  br label %1533

408:                                              ; preds = %403
  %409 = load i64, i64* %15, align 8
  %410 = load i64, i64* %14, align 8
  %411 = sub i64 %410, %409
  store i64 %411, i64* %14, align 8
  %412 = load i64, i64* %15, align 8
  %413 = load i8*, i8** %11, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 %412
  store i8* %414, i8** %11, align 8
  br label %415

415:                                              ; preds = %408, %396
  br label %416

416:                                              ; preds = %415, %276
  %417 = load i32, i32* %20, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %445, label %419

419:                                              ; preds = %416
  %420 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %421 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %445

427:                                              ; preds = %419
  %428 = load i8*, i8** %11, align 8
  %429 = load i64, i64* %14, align 8
  %430 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %428, i64 %429, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %430, i64* %15, align 8
  %431 = load i64, i64* %15, align 8
  %432 = icmp ult i64 %431, 0
  br i1 %432, label %437, label %433

433:                                              ; preds = %427
  %434 = load i64, i64* %15, align 8
  %435 = load i64, i64* %14, align 8
  %436 = icmp ugt i64 %434, %435
  br i1 %436, label %437, label %438

437:                                              ; preds = %433, %427
  br label %1533

438:                                              ; preds = %433
  %439 = load i64, i64* %15, align 8
  %440 = load i64, i64* %14, align 8
  %441 = sub i64 %440, %439
  store i64 %441, i64* %14, align 8
  %442 = load i64, i64* %15, align 8
  %443 = load i8*, i8** %11, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 %442
  store i8* %444, i8** %11, align 8
  br label %445

445:                                              ; preds = %438, %419, %416
  %446 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %447 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %475

453:                                              ; preds = %445
  %454 = load i8*, i8** %11, align 8
  %455 = load i64, i64* %14, align 8
  %456 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %457 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 4
  %460 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %454, i64 %455, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %459)
  store i64 %460, i64* %15, align 8
  %461 = load i64, i64* %15, align 8
  %462 = icmp ult i64 %461, 0
  br i1 %462, label %467, label %463

463:                                              ; preds = %453
  %464 = load i64, i64* %15, align 8
  %465 = load i64, i64* %14, align 8
  %466 = icmp ugt i64 %464, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %463, %453
  br label %1533

468:                                              ; preds = %463
  %469 = load i64, i64* %15, align 8
  %470 = load i64, i64* %14, align 8
  %471 = sub i64 %470, %469
  store i64 %471, i64* %14, align 8
  %472 = load i64, i64* %15, align 8
  %473 = load i8*, i8** %11, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 %472
  store i8* %474, i8** %11, align 8
  br label %475

475:                                              ; preds = %468, %445
  br label %476

476:                                              ; preds = %475, %40
  %477 = load i8*, i8** %11, align 8
  %478 = load i64, i64* %14, align 8
  %479 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %477, i64 %478, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i64 %479, i64* %15, align 8
  %480 = load i64, i64* %15, align 8
  %481 = icmp ult i64 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %476
  %483 = load i64, i64* %15, align 8
  %484 = load i64, i64* %14, align 8
  %485 = icmp ugt i64 %483, %484
  br i1 %485, label %486, label %487

486:                                              ; preds = %482, %476
  br label %1533

487:                                              ; preds = %482
  %488 = load i64, i64* %15, align 8
  %489 = load i64, i64* %14, align 8
  %490 = sub i64 %489, %488
  store i64 %490, i64* %14, align 8
  %491 = load i64, i64* %15, align 8
  %492 = load i8*, i8** %11, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 %491
  store i8* %493, i8** %11, align 8
  %494 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %495 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %1337

499:                                              ; preds = %487
  %500 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %501 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @MBO_ALL_FLAGS, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %524

506:                                              ; preds = %499
  %507 = load i8*, i8** %11, align 8
  %508 = load i64, i64* %14, align 8
  %509 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %507, i64 %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %509, i64* %15, align 8
  %510 = load i64, i64* %15, align 8
  %511 = icmp ult i64 %510, 0
  br i1 %511, label %516, label %512

512:                                              ; preds = %506
  %513 = load i64, i64* %15, align 8
  %514 = load i64, i64* %14, align 8
  %515 = icmp ugt i64 %513, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %512, %506
  br label %1533

517:                                              ; preds = %512
  %518 = load i64, i64* %15, align 8
  %519 = load i64, i64* %14, align 8
  %520 = sub i64 %519, %518
  store i64 %520, i64* %14, align 8
  %521 = load i64, i64* %15, align 8
  %522 = load i8*, i8** %11, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 %521
  store i8* %523, i8** %11, align 8
  store i32 1, i32* %20, align 4
  br label %525

524:                                              ; preds = %499
  store i32 0, i32* %20, align 4
  br label %525

525:                                              ; preds = %524, %517
  %526 = load i32, i32* %20, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %554, label %528

528:                                              ; preds = %525
  %529 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %530 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* @MBO_UID_DEFINED, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %554

536:                                              ; preds = %528
  %537 = load i8*, i8** %11, align 8
  %538 = load i64, i64* %14, align 8
  %539 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %537, i64 %538, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %539, i64* %15, align 8
  %540 = load i64, i64* %15, align 8
  %541 = icmp ult i64 %540, 0
  br i1 %541, label %546, label %542

542:                                              ; preds = %536
  %543 = load i64, i64* %15, align 8
  %544 = load i64, i64* %14, align 8
  %545 = icmp ugt i64 %543, %544
  br i1 %545, label %546, label %547

546:                                              ; preds = %542, %536
  br label %1533

547:                                              ; preds = %542
  %548 = load i64, i64* %15, align 8
  %549 = load i64, i64* %14, align 8
  %550 = sub i64 %549, %548
  store i64 %550, i64* %14, align 8
  %551 = load i64, i64* %15, align 8
  %552 = load i8*, i8** %11, align 8
  %553 = getelementptr inbounds i8, i8* %552, i64 %551
  store i8* %553, i8** %11, align 8
  br label %554

554:                                              ; preds = %547, %528, %525
  %555 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %556 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* @MBO_UID_DEFINED, align 4
  %560 = and i32 %558, %559
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %694

562:                                              ; preds = %554
  %563 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %564 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 4
  %567 = call %struct.passwd* @getpwuid(i32 %566)
  store %struct.passwd* %567, %struct.passwd** %9, align 8
  %568 = load %struct.passwd*, %struct.passwd** %9, align 8
  %569 = icmp ne %struct.passwd* %568, null
  br i1 %569, label %570, label %591

570:                                              ; preds = %562
  %571 = load i8*, i8** %11, align 8
  %572 = load i64, i64* %14, align 8
  %573 = load %struct.passwd*, %struct.passwd** %9, align 8
  %574 = getelementptr inbounds %struct.passwd, %struct.passwd* %573, i32 0, i32 0
  %575 = load i8*, i8** %574, align 8
  %576 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %571, i64 %572, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %575)
  store i64 %576, i64* %15, align 8
  %577 = load i64, i64* %15, align 8
  %578 = icmp ult i64 %577, 0
  br i1 %578, label %583, label %579

579:                                              ; preds = %570
  %580 = load i64, i64* %15, align 8
  %581 = load i64, i64* %14, align 8
  %582 = icmp ugt i64 %580, %581
  br i1 %582, label %583, label %584

583:                                              ; preds = %579, %570
  br label %1533

584:                                              ; preds = %579
  %585 = load i64, i64* %15, align 8
  %586 = load i64, i64* %14, align 8
  %587 = sub i64 %586, %585
  store i64 %587, i64* %14, align 8
  %588 = load i64, i64* %15, align 8
  %589 = load i8*, i8** %11, align 8
  %590 = getelementptr inbounds i8, i8* %589, i64 %588
  store i8* %590, i8** %11, align 8
  br label %613

591:                                              ; preds = %562
  %592 = load i8*, i8** %11, align 8
  %593 = load i64, i64* %14, align 8
  %594 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %595 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 4
  %598 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %592, i64 %593, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %597)
  store i64 %598, i64* %15, align 8
  %599 = load i64, i64* %15, align 8
  %600 = icmp ult i64 %599, 0
  br i1 %600, label %605, label %601

601:                                              ; preds = %591
  %602 = load i64, i64* %15, align 8
  %603 = load i64, i64* %14, align 8
  %604 = icmp ugt i64 %602, %603
  br i1 %604, label %605, label %606

605:                                              ; preds = %601, %591
  br label %1533

606:                                              ; preds = %601
  %607 = load i64, i64* %15, align 8
  %608 = load i64, i64* %14, align 8
  %609 = sub i64 %608, %607
  store i64 %609, i64* %14, align 8
  %610 = load i64, i64* %15, align 8
  %611 = load i8*, i8** %11, align 8
  %612 = getelementptr inbounds i8, i8* %611, i64 %610
  store i8* %612, i8** %11, align 8
  br label %613

613:                                              ; preds = %606, %584
  %614 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %615 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %615, i32 0, i32 2
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %619 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 4
  %622 = icmp ne i32 %617, %621
  br i1 %622, label %623, label %675

623:                                              ; preds = %613
  %624 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %625 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %624, i32 0, i32 1
  %626 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 4
  %628 = call %struct.passwd* @getpwuid(i32 %627)
  store %struct.passwd* %628, %struct.passwd** %9, align 8
  %629 = load %struct.passwd*, %struct.passwd** %9, align 8
  %630 = icmp ne %struct.passwd* %629, null
  br i1 %630, label %631, label %652

631:                                              ; preds = %623
  %632 = load i8*, i8** %11, align 8
  %633 = load i64, i64* %14, align 8
  %634 = load %struct.passwd*, %struct.passwd** %9, align 8
  %635 = getelementptr inbounds %struct.passwd, %struct.passwd* %634, i32 0, i32 0
  %636 = load i8*, i8** %635, align 8
  %637 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %632, i64 %633, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %636)
  store i64 %637, i64* %15, align 8
  %638 = load i64, i64* %15, align 8
  %639 = icmp ult i64 %638, 0
  br i1 %639, label %644, label %640

640:                                              ; preds = %631
  %641 = load i64, i64* %15, align 8
  %642 = load i64, i64* %14, align 8
  %643 = icmp ugt i64 %641, %642
  br i1 %643, label %644, label %645

644:                                              ; preds = %640, %631
  br label %1533

645:                                              ; preds = %640
  %646 = load i64, i64* %15, align 8
  %647 = load i64, i64* %14, align 8
  %648 = sub i64 %647, %646
  store i64 %648, i64* %14, align 8
  %649 = load i64, i64* %15, align 8
  %650 = load i8*, i8** %11, align 8
  %651 = getelementptr inbounds i8, i8* %650, i64 %649
  store i8* %651, i8** %11, align 8
  br label %674

652:                                              ; preds = %623
  %653 = load i8*, i8** %11, align 8
  %654 = load i64, i64* %14, align 8
  %655 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %656 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 3
  %658 = load i32, i32* %657, align 4
  %659 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %653, i64 %654, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %658)
  store i64 %659, i64* %15, align 8
  %660 = load i64, i64* %15, align 8
  %661 = icmp ult i64 %660, 0
  br i1 %661, label %666, label %662

662:                                              ; preds = %652
  %663 = load i64, i64* %15, align 8
  %664 = load i64, i64* %14, align 8
  %665 = icmp ugt i64 %663, %664
  br i1 %665, label %666, label %667

666:                                              ; preds = %662, %652
  br label %1533

667:                                              ; preds = %662
  %668 = load i64, i64* %15, align 8
  %669 = load i64, i64* %14, align 8
  %670 = sub i64 %669, %668
  store i64 %670, i64* %14, align 8
  %671 = load i64, i64* %15, align 8
  %672 = load i8*, i8** %11, align 8
  %673 = getelementptr inbounds i8, i8* %672, i64 %671
  store i8* %673, i8** %11, align 8
  br label %674

674:                                              ; preds = %667, %645
  br label %693

675:                                              ; preds = %613
  %676 = load i8*, i8** %11, align 8
  %677 = load i64, i64* %14, align 8
  %678 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %676, i64 %677, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i64 %678, i64* %15, align 8
  %679 = load i64, i64* %15, align 8
  %680 = icmp ult i64 %679, 0
  br i1 %680, label %685, label %681

681:                                              ; preds = %675
  %682 = load i64, i64* %15, align 8
  %683 = load i64, i64* %14, align 8
  %684 = icmp ugt i64 %682, %683
  br i1 %684, label %685, label %686

685:                                              ; preds = %681, %675
  br label %1533

686:                                              ; preds = %681
  %687 = load i64, i64* %15, align 8
  %688 = load i64, i64* %14, align 8
  %689 = sub i64 %688, %687
  store i64 %689, i64* %14, align 8
  %690 = load i64, i64* %15, align 8
  %691 = load i8*, i8** %11, align 8
  %692 = getelementptr inbounds i8, i8* %691, i64 %690
  store i8* %692, i8** %11, align 8
  br label %693

693:                                              ; preds = %686, %674
  br label %694

694:                                              ; preds = %693, %554
  %695 = load i32, i32* %20, align 4
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %723, label %697

697:                                              ; preds = %694
  %698 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %699 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = load i32, i32* @MBO_GID_DEFINED, align 4
  %703 = and i32 %701, %702
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %723

705:                                              ; preds = %697
  %706 = load i8*, i8** %11, align 8
  %707 = load i64, i64* %14, align 8
  %708 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %706, i64 %707, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %708, i64* %15, align 8
  %709 = load i64, i64* %15, align 8
  %710 = icmp ult i64 %709, 0
  br i1 %710, label %715, label %711

711:                                              ; preds = %705
  %712 = load i64, i64* %15, align 8
  %713 = load i64, i64* %14, align 8
  %714 = icmp ugt i64 %712, %713
  br i1 %714, label %715, label %716

715:                                              ; preds = %711, %705
  br label %1533

716:                                              ; preds = %711
  %717 = load i64, i64* %15, align 8
  %718 = load i64, i64* %14, align 8
  %719 = sub i64 %718, %717
  store i64 %719, i64* %14, align 8
  %720 = load i64, i64* %15, align 8
  %721 = load i8*, i8** %11, align 8
  %722 = getelementptr inbounds i8, i8* %721, i64 %720
  store i8* %722, i8** %11, align 8
  br label %723

723:                                              ; preds = %716, %697, %694
  %724 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %725 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %724, i32 0, i32 1
  %726 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 4
  %728 = load i32, i32* @MBO_GID_DEFINED, align 4
  %729 = and i32 %727, %728
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %863

731:                                              ; preds = %723
  %732 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %733 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %733, i32 0, i32 4
  %735 = load i32, i32* %734, align 4
  %736 = call %struct.group* @getgrgid(i32 %735)
  store %struct.group* %736, %struct.group** %8, align 8
  %737 = load %struct.group*, %struct.group** %8, align 8
  %738 = icmp ne %struct.group* %737, null
  br i1 %738, label %739, label %760

739:                                              ; preds = %731
  %740 = load i8*, i8** %11, align 8
  %741 = load i64, i64* %14, align 8
  %742 = load %struct.group*, %struct.group** %8, align 8
  %743 = getelementptr inbounds %struct.group, %struct.group* %742, i32 0, i32 0
  %744 = load i8*, i8** %743, align 8
  %745 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %740, i64 %741, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %744)
  store i64 %745, i64* %15, align 8
  %746 = load i64, i64* %15, align 8
  %747 = icmp ult i64 %746, 0
  br i1 %747, label %752, label %748

748:                                              ; preds = %739
  %749 = load i64, i64* %15, align 8
  %750 = load i64, i64* %14, align 8
  %751 = icmp ugt i64 %749, %750
  br i1 %751, label %752, label %753

752:                                              ; preds = %748, %739
  br label %1533

753:                                              ; preds = %748
  %754 = load i64, i64* %15, align 8
  %755 = load i64, i64* %14, align 8
  %756 = sub i64 %755, %754
  store i64 %756, i64* %14, align 8
  %757 = load i64, i64* %15, align 8
  %758 = load i8*, i8** %11, align 8
  %759 = getelementptr inbounds i8, i8* %758, i64 %757
  store i8* %759, i8** %11, align 8
  br label %782

760:                                              ; preds = %731
  %761 = load i8*, i8** %11, align 8
  %762 = load i64, i64* %14, align 8
  %763 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %764 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %764, i32 0, i32 4
  %766 = load i32, i32* %765, align 4
  %767 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %761, i64 %762, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %766)
  store i64 %767, i64* %15, align 8
  %768 = load i64, i64* %15, align 8
  %769 = icmp ult i64 %768, 0
  br i1 %769, label %774, label %770

770:                                              ; preds = %760
  %771 = load i64, i64* %15, align 8
  %772 = load i64, i64* %14, align 8
  %773 = icmp ugt i64 %771, %772
  br i1 %773, label %774, label %775

774:                                              ; preds = %770, %760
  br label %1533

775:                                              ; preds = %770
  %776 = load i64, i64* %15, align 8
  %777 = load i64, i64* %14, align 8
  %778 = sub i64 %777, %776
  store i64 %778, i64* %14, align 8
  %779 = load i64, i64* %15, align 8
  %780 = load i8*, i8** %11, align 8
  %781 = getelementptr inbounds i8, i8* %780, i64 %779
  store i8* %781, i8** %11, align 8
  br label %782

782:                                              ; preds = %775, %753
  %783 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %784 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %783, i32 0, i32 1
  %785 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %784, i32 0, i32 4
  %786 = load i32, i32* %785, align 4
  %787 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %788 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %787, i32 0, i32 1
  %789 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %788, i32 0, i32 5
  %790 = load i32, i32* %789, align 4
  %791 = icmp ne i32 %786, %790
  br i1 %791, label %792, label %844

792:                                              ; preds = %782
  %793 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %794 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %794, i32 0, i32 5
  %796 = load i32, i32* %795, align 4
  %797 = call %struct.group* @getgrgid(i32 %796)
  store %struct.group* %797, %struct.group** %8, align 8
  %798 = load %struct.group*, %struct.group** %8, align 8
  %799 = icmp ne %struct.group* %798, null
  br i1 %799, label %800, label %821

800:                                              ; preds = %792
  %801 = load i8*, i8** %11, align 8
  %802 = load i64, i64* %14, align 8
  %803 = load %struct.group*, %struct.group** %8, align 8
  %804 = getelementptr inbounds %struct.group, %struct.group* %803, i32 0, i32 0
  %805 = load i8*, i8** %804, align 8
  %806 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %801, i64 %802, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %805)
  store i64 %806, i64* %15, align 8
  %807 = load i64, i64* %15, align 8
  %808 = icmp ult i64 %807, 0
  br i1 %808, label %813, label %809

809:                                              ; preds = %800
  %810 = load i64, i64* %15, align 8
  %811 = load i64, i64* %14, align 8
  %812 = icmp ugt i64 %810, %811
  br i1 %812, label %813, label %814

813:                                              ; preds = %809, %800
  br label %1533

814:                                              ; preds = %809
  %815 = load i64, i64* %15, align 8
  %816 = load i64, i64* %14, align 8
  %817 = sub i64 %816, %815
  store i64 %817, i64* %14, align 8
  %818 = load i64, i64* %15, align 8
  %819 = load i8*, i8** %11, align 8
  %820 = getelementptr inbounds i8, i8* %819, i64 %818
  store i8* %820, i8** %11, align 8
  br label %843

821:                                              ; preds = %792
  %822 = load i8*, i8** %11, align 8
  %823 = load i64, i64* %14, align 8
  %824 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %825 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %824, i32 0, i32 1
  %826 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %825, i32 0, i32 5
  %827 = load i32, i32* %826, align 4
  %828 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %822, i64 %823, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %827)
  store i64 %828, i64* %15, align 8
  %829 = load i64, i64* %15, align 8
  %830 = icmp ult i64 %829, 0
  br i1 %830, label %835, label %831

831:                                              ; preds = %821
  %832 = load i64, i64* %15, align 8
  %833 = load i64, i64* %14, align 8
  %834 = icmp ugt i64 %832, %833
  br i1 %834, label %835, label %836

835:                                              ; preds = %831, %821
  br label %1533

836:                                              ; preds = %831
  %837 = load i64, i64* %15, align 8
  %838 = load i64, i64* %14, align 8
  %839 = sub i64 %838, %837
  store i64 %839, i64* %14, align 8
  %840 = load i64, i64* %15, align 8
  %841 = load i8*, i8** %11, align 8
  %842 = getelementptr inbounds i8, i8* %841, i64 %840
  store i8* %842, i8** %11, align 8
  br label %843

843:                                              ; preds = %836, %814
  br label %862

844:                                              ; preds = %782
  %845 = load i8*, i8** %11, align 8
  %846 = load i64, i64* %14, align 8
  %847 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %845, i64 %846, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i64 %847, i64* %15, align 8
  %848 = load i64, i64* %15, align 8
  %849 = icmp ult i64 %848, 0
  br i1 %849, label %854, label %850

850:                                              ; preds = %844
  %851 = load i64, i64* %15, align 8
  %852 = load i64, i64* %14, align 8
  %853 = icmp ugt i64 %851, %852
  br i1 %853, label %854, label %855

854:                                              ; preds = %850, %844
  br label %1533

855:                                              ; preds = %850
  %856 = load i64, i64* %15, align 8
  %857 = load i64, i64* %14, align 8
  %858 = sub i64 %857, %856
  store i64 %858, i64* %14, align 8
  %859 = load i64, i64* %15, align 8
  %860 = load i8*, i8** %11, align 8
  %861 = getelementptr inbounds i8, i8* %860, i64 %859
  store i8* %861, i8** %11, align 8
  br label %862

862:                                              ; preds = %855, %843
  br label %863

863:                                              ; preds = %862, %723
  %864 = load i32, i32* %20, align 4
  %865 = icmp ne i32 %864, 0
  br i1 %865, label %892, label %866

866:                                              ; preds = %863
  %867 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %868 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %867, i32 0, i32 1
  %869 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %868, i32 0, i32 1
  %870 = load i32, i32* %869, align 4
  %871 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %872 = and i32 %870, %871
  %873 = icmp ne i32 %872, 0
  br i1 %873, label %874, label %892

874:                                              ; preds = %866
  %875 = load i8*, i8** %11, align 8
  %876 = load i64, i64* %14, align 8
  %877 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %875, i64 %876, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %877, i64* %15, align 8
  %878 = load i64, i64* %15, align 8
  %879 = icmp ult i64 %878, 0
  br i1 %879, label %884, label %880

880:                                              ; preds = %874
  %881 = load i64, i64* %15, align 8
  %882 = load i64, i64* %14, align 8
  %883 = icmp ugt i64 %881, %882
  br i1 %883, label %884, label %885

884:                                              ; preds = %880, %874
  br label %1533

885:                                              ; preds = %880
  %886 = load i64, i64* %15, align 8
  %887 = load i64, i64* %14, align 8
  %888 = sub i64 %887, %886
  store i64 %888, i64* %14, align 8
  %889 = load i64, i64* %15, align 8
  %890 = load i8*, i8** %11, align 8
  %891 = getelementptr inbounds i8, i8* %890, i64 %889
  store i8* %891, i8** %11, align 8
  br label %892

892:                                              ; preds = %885, %866, %863
  %893 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %894 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %893, i32 0, i32 1
  %895 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 4
  %897 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %898 = and i32 %896, %897
  %899 = icmp ne i32 %898, 0
  br i1 %899, label %900, label %954

900:                                              ; preds = %892
  %901 = load i32, i32* @MNT_NOWAIT, align 4
  %902 = call i32 @getmntinfo(%struct.statfs** %10, i32 %901)
  store i32 %902, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %903

903:                                              ; preds = %920, %900
  %904 = load i32, i32* %19, align 4
  %905 = load i32, i32* %18, align 4
  %906 = icmp slt i32 %904, %905
  br i1 %906, label %907, label %923

907:                                              ; preds = %903
  %908 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %909 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %909, i32 0, i32 7
  %911 = load %struct.statfs*, %struct.statfs** %10, align 8
  %912 = load i32, i32* %19, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds %struct.statfs, %struct.statfs* %911, i64 %913
  %915 = getelementptr inbounds %struct.statfs, %struct.statfs* %914, i32 0, i32 1
  %916 = call i64 @memcmp(i32* %910, i32* %915, i32 4)
  %917 = icmp eq i64 %916, 0
  br i1 %917, label %918, label %919

918:                                              ; preds = %907
  br label %923

919:                                              ; preds = %907
  br label %920

920:                                              ; preds = %919
  %921 = load i32, i32* %19, align 4
  %922 = add nsw i32 %921, 1
  store i32 %922, i32* %19, align 4
  br label %903

923:                                              ; preds = %918, %903
  %924 = load i8*, i8** %11, align 8
  %925 = load i64, i64* %14, align 8
  %926 = load i32, i32* %19, align 4
  %927 = load i32, i32* %18, align 4
  %928 = icmp eq i32 %926, %927
  br i1 %928, label %929, label %930

929:                                              ; preds = %923
  br label %937

930:                                              ; preds = %923
  %931 = load %struct.statfs*, %struct.statfs** %10, align 8
  %932 = load i32, i32* %19, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds %struct.statfs, %struct.statfs* %931, i64 %933
  %935 = getelementptr inbounds %struct.statfs, %struct.statfs* %934, i32 0, i32 0
  %936 = load i8*, i8** %935, align 8
  br label %937

937:                                              ; preds = %930, %929
  %938 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), %929 ], [ %936, %930 ]
  %939 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %924, i64 %925, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %938)
  store i64 %939, i64* %15, align 8
  %940 = load i64, i64* %15, align 8
  %941 = icmp ult i64 %940, 0
  br i1 %941, label %946, label %942

942:                                              ; preds = %937
  %943 = load i64, i64* %15, align 8
  %944 = load i64, i64* %14, align 8
  %945 = icmp ugt i64 %943, %944
  br i1 %945, label %946, label %947

946:                                              ; preds = %942, %937
  br label %1533

947:                                              ; preds = %942
  %948 = load i64, i64* %15, align 8
  %949 = load i64, i64* %14, align 8
  %950 = sub i64 %949, %948
  store i64 %950, i64* %14, align 8
  %951 = load i64, i64* %15, align 8
  %952 = load i8*, i8** %11, align 8
  %953 = getelementptr inbounds i8, i8* %952, i64 %951
  store i8* %953, i8** %11, align 8
  br label %954

954:                                              ; preds = %947, %892
  %955 = load i32, i32* %20, align 4
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %983, label %957

957:                                              ; preds = %954
  %958 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %959 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %959, i32 0, i32 1
  %961 = load i32, i32* %960, align 4
  %962 = load i32, i32* @MBO_SUID, align 4
  %963 = and i32 %961, %962
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %965, label %983

965:                                              ; preds = %957
  %966 = load i8*, i8** %11, align 8
  %967 = load i64, i64* %14, align 8
  %968 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %966, i64 %967, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %968, i64* %15, align 8
  %969 = load i64, i64* %15, align 8
  %970 = icmp ult i64 %969, 0
  br i1 %970, label %975, label %971

971:                                              ; preds = %965
  %972 = load i64, i64* %15, align 8
  %973 = load i64, i64* %14, align 8
  %974 = icmp ugt i64 %972, %973
  br i1 %974, label %975, label %976

975:                                              ; preds = %971, %965
  br label %1533

976:                                              ; preds = %971
  %977 = load i64, i64* %15, align 8
  %978 = load i64, i64* %14, align 8
  %979 = sub i64 %978, %977
  store i64 %979, i64* %14, align 8
  %980 = load i64, i64* %15, align 8
  %981 = load i8*, i8** %11, align 8
  %982 = getelementptr inbounds i8, i8* %981, i64 %980
  store i8* %982, i8** %11, align 8
  br label %983

983:                                              ; preds = %976, %957, %954
  %984 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %985 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %985, i32 0, i32 0
  %987 = load i32, i32* %986, align 4
  %988 = load i32, i32* @MBO_SUID, align 4
  %989 = and i32 %987, %988
  %990 = icmp ne i32 %989, 0
  br i1 %990, label %991, label %1009

991:                                              ; preds = %983
  %992 = load i8*, i8** %11, align 8
  %993 = load i64, i64* %14, align 8
  %994 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %992, i64 %993, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  store i64 %994, i64* %15, align 8
  %995 = load i64, i64* %15, align 8
  %996 = icmp ult i64 %995, 0
  br i1 %996, label %1001, label %997

997:                                              ; preds = %991
  %998 = load i64, i64* %15, align 8
  %999 = load i64, i64* %14, align 8
  %1000 = icmp ugt i64 %998, %999
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %997, %991
  br label %1533

1002:                                             ; preds = %997
  %1003 = load i64, i64* %15, align 8
  %1004 = load i64, i64* %14, align 8
  %1005 = sub i64 %1004, %1003
  store i64 %1005, i64* %14, align 8
  %1006 = load i64, i64* %15, align 8
  %1007 = load i8*, i8** %11, align 8
  %1008 = getelementptr inbounds i8, i8* %1007, i64 %1006
  store i8* %1008, i8** %11, align 8
  br label %1009

1009:                                             ; preds = %1002, %983
  %1010 = load i32, i32* %20, align 4
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1038, label %1012

1012:                                             ; preds = %1009
  %1013 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1014 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1013, i32 0, i32 1
  %1015 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1014, i32 0, i32 1
  %1016 = load i32, i32* %1015, align 4
  %1017 = load i32, i32* @MBO_SGID, align 4
  %1018 = and i32 %1016, %1017
  %1019 = icmp ne i32 %1018, 0
  br i1 %1019, label %1020, label %1038

1020:                                             ; preds = %1012
  %1021 = load i8*, i8** %11, align 8
  %1022 = load i64, i64* %14, align 8
  %1023 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1021, i64 %1022, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %1023, i64* %15, align 8
  %1024 = load i64, i64* %15, align 8
  %1025 = icmp ult i64 %1024, 0
  br i1 %1025, label %1030, label %1026

1026:                                             ; preds = %1020
  %1027 = load i64, i64* %15, align 8
  %1028 = load i64, i64* %14, align 8
  %1029 = icmp ugt i64 %1027, %1028
  br i1 %1029, label %1030, label %1031

1030:                                             ; preds = %1026, %1020
  br label %1533

1031:                                             ; preds = %1026
  %1032 = load i64, i64* %15, align 8
  %1033 = load i64, i64* %14, align 8
  %1034 = sub i64 %1033, %1032
  store i64 %1034, i64* %14, align 8
  %1035 = load i64, i64* %15, align 8
  %1036 = load i8*, i8** %11, align 8
  %1037 = getelementptr inbounds i8, i8* %1036, i64 %1035
  store i8* %1037, i8** %11, align 8
  br label %1038

1038:                                             ; preds = %1031, %1012, %1009
  %1039 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1040 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1039, i32 0, i32 1
  %1041 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1040, i32 0, i32 0
  %1042 = load i32, i32* %1041, align 4
  %1043 = load i32, i32* @MBO_SGID, align 4
  %1044 = and i32 %1042, %1043
  %1045 = icmp ne i32 %1044, 0
  br i1 %1045, label %1046, label %1064

1046:                                             ; preds = %1038
  %1047 = load i8*, i8** %11, align 8
  %1048 = load i64, i64* %14, align 8
  %1049 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1047, i64 %1048, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  store i64 %1049, i64* %15, align 8
  %1050 = load i64, i64* %15, align 8
  %1051 = icmp ult i64 %1050, 0
  br i1 %1051, label %1056, label %1052

1052:                                             ; preds = %1046
  %1053 = load i64, i64* %15, align 8
  %1054 = load i64, i64* %14, align 8
  %1055 = icmp ugt i64 %1053, %1054
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1052, %1046
  br label %1533

1057:                                             ; preds = %1052
  %1058 = load i64, i64* %15, align 8
  %1059 = load i64, i64* %14, align 8
  %1060 = sub i64 %1059, %1058
  store i64 %1060, i64* %14, align 8
  %1061 = load i64, i64* %15, align 8
  %1062 = load i8*, i8** %11, align 8
  %1063 = getelementptr inbounds i8, i8* %1062, i64 %1061
  store i8* %1063, i8** %11, align 8
  br label %1064

1064:                                             ; preds = %1057, %1038
  %1065 = load i32, i32* %20, align 4
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1093, label %1067

1067:                                             ; preds = %1064
  %1068 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1069 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1068, i32 0, i32 1
  %1070 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1069, i32 0, i32 1
  %1071 = load i32, i32* %1070, align 4
  %1072 = load i32, i32* @MBO_UID_SUBJECT, align 4
  %1073 = and i32 %1071, %1072
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1075, label %1093

1075:                                             ; preds = %1067
  %1076 = load i8*, i8** %11, align 8
  %1077 = load i64, i64* %14, align 8
  %1078 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1076, i64 %1077, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %1078, i64* %15, align 8
  %1079 = load i64, i64* %15, align 8
  %1080 = icmp ult i64 %1079, 0
  br i1 %1080, label %1085, label %1081

1081:                                             ; preds = %1075
  %1082 = load i64, i64* %15, align 8
  %1083 = load i64, i64* %14, align 8
  %1084 = icmp ugt i64 %1082, %1083
  br i1 %1084, label %1085, label %1086

1085:                                             ; preds = %1081, %1075
  br label %1533

1086:                                             ; preds = %1081
  %1087 = load i64, i64* %15, align 8
  %1088 = load i64, i64* %14, align 8
  %1089 = sub i64 %1088, %1087
  store i64 %1089, i64* %14, align 8
  %1090 = load i64, i64* %15, align 8
  %1091 = load i8*, i8** %11, align 8
  %1092 = getelementptr inbounds i8, i8* %1091, i64 %1090
  store i8* %1092, i8** %11, align 8
  br label %1093

1093:                                             ; preds = %1086, %1067, %1064
  %1094 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1095 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1094, i32 0, i32 1
  %1096 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1095, i32 0, i32 0
  %1097 = load i32, i32* %1096, align 4
  %1098 = load i32, i32* @MBO_UID_SUBJECT, align 4
  %1099 = and i32 %1097, %1098
  %1100 = icmp ne i32 %1099, 0
  br i1 %1100, label %1101, label %1119

1101:                                             ; preds = %1093
  %1102 = load i8*, i8** %11, align 8
  %1103 = load i64, i64* %14, align 8
  %1104 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1102, i64 %1103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  store i64 %1104, i64* %15, align 8
  %1105 = load i64, i64* %15, align 8
  %1106 = icmp ult i64 %1105, 0
  br i1 %1106, label %1111, label %1107

1107:                                             ; preds = %1101
  %1108 = load i64, i64* %15, align 8
  %1109 = load i64, i64* %14, align 8
  %1110 = icmp ugt i64 %1108, %1109
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1107, %1101
  br label %1533

1112:                                             ; preds = %1107
  %1113 = load i64, i64* %15, align 8
  %1114 = load i64, i64* %14, align 8
  %1115 = sub i64 %1114, %1113
  store i64 %1115, i64* %14, align 8
  %1116 = load i64, i64* %15, align 8
  %1117 = load i8*, i8** %11, align 8
  %1118 = getelementptr inbounds i8, i8* %1117, i64 %1116
  store i8* %1118, i8** %11, align 8
  br label %1119

1119:                                             ; preds = %1112, %1093
  %1120 = load i32, i32* %20, align 4
  %1121 = icmp ne i32 %1120, 0
  br i1 %1121, label %1148, label %1122

1122:                                             ; preds = %1119
  %1123 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1124 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1123, i32 0, i32 1
  %1125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1124, i32 0, i32 1
  %1126 = load i32, i32* %1125, align 4
  %1127 = load i32, i32* @MBO_GID_SUBJECT, align 4
  %1128 = and i32 %1126, %1127
  %1129 = icmp ne i32 %1128, 0
  br i1 %1129, label %1130, label %1148

1130:                                             ; preds = %1122
  %1131 = load i8*, i8** %11, align 8
  %1132 = load i64, i64* %14, align 8
  %1133 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1131, i64 %1132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %1133, i64* %15, align 8
  %1134 = load i64, i64* %15, align 8
  %1135 = icmp ult i64 %1134, 0
  br i1 %1135, label %1140, label %1136

1136:                                             ; preds = %1130
  %1137 = load i64, i64* %15, align 8
  %1138 = load i64, i64* %14, align 8
  %1139 = icmp ugt i64 %1137, %1138
  br i1 %1139, label %1140, label %1141

1140:                                             ; preds = %1136, %1130
  br label %1533

1141:                                             ; preds = %1136
  %1142 = load i64, i64* %15, align 8
  %1143 = load i64, i64* %14, align 8
  %1144 = sub i64 %1143, %1142
  store i64 %1144, i64* %14, align 8
  %1145 = load i64, i64* %15, align 8
  %1146 = load i8*, i8** %11, align 8
  %1147 = getelementptr inbounds i8, i8* %1146, i64 %1145
  store i8* %1147, i8** %11, align 8
  br label %1148

1148:                                             ; preds = %1141, %1122, %1119
  %1149 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1150 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1149, i32 0, i32 1
  %1151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1150, i32 0, i32 0
  %1152 = load i32, i32* %1151, align 4
  %1153 = load i32, i32* @MBO_GID_SUBJECT, align 4
  %1154 = and i32 %1152, %1153
  %1155 = icmp ne i32 %1154, 0
  br i1 %1155, label %1156, label %1174

1156:                                             ; preds = %1148
  %1157 = load i8*, i8** %11, align 8
  %1158 = load i64, i64* %14, align 8
  %1159 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1157, i64 %1158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  store i64 %1159, i64* %15, align 8
  %1160 = load i64, i64* %15, align 8
  %1161 = icmp ult i64 %1160, 0
  br i1 %1161, label %1166, label %1162

1162:                                             ; preds = %1156
  %1163 = load i64, i64* %15, align 8
  %1164 = load i64, i64* %14, align 8
  %1165 = icmp ugt i64 %1163, %1164
  br i1 %1165, label %1166, label %1167

1166:                                             ; preds = %1162, %1156
  br label %1533

1167:                                             ; preds = %1162
  %1168 = load i64, i64* %15, align 8
  %1169 = load i64, i64* %14, align 8
  %1170 = sub i64 %1169, %1168
  store i64 %1170, i64* %14, align 8
  %1171 = load i64, i64* %15, align 8
  %1172 = load i8*, i8** %11, align 8
  %1173 = getelementptr inbounds i8, i8* %1172, i64 %1171
  store i8* %1173, i8** %11, align 8
  br label %1174

1174:                                             ; preds = %1167, %1148
  %1175 = load i32, i32* %20, align 4
  %1176 = icmp ne i32 %1175, 0
  br i1 %1176, label %1203, label %1177

1177:                                             ; preds = %1174
  %1178 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1179 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1179, i32 0, i32 1
  %1181 = load i32, i32* %1180, align 4
  %1182 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %1183 = and i32 %1181, %1182
  %1184 = icmp ne i32 %1183, 0
  br i1 %1184, label %1185, label %1203

1185:                                             ; preds = %1177
  %1186 = load i8*, i8** %11, align 8
  %1187 = load i64, i64* %14, align 8
  %1188 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1186, i64 %1187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %1188, i64* %15, align 8
  %1189 = load i64, i64* %15, align 8
  %1190 = icmp ult i64 %1189, 0
  br i1 %1190, label %1195, label %1191

1191:                                             ; preds = %1185
  %1192 = load i64, i64* %15, align 8
  %1193 = load i64, i64* %14, align 8
  %1194 = icmp ugt i64 %1192, %1193
  br i1 %1194, label %1195, label %1196

1195:                                             ; preds = %1191, %1185
  br label %1533

1196:                                             ; preds = %1191
  %1197 = load i64, i64* %15, align 8
  %1198 = load i64, i64* %14, align 8
  %1199 = sub i64 %1198, %1197
  store i64 %1199, i64* %14, align 8
  %1200 = load i64, i64* %15, align 8
  %1201 = load i8*, i8** %11, align 8
  %1202 = getelementptr inbounds i8, i8* %1201, i64 %1200
  store i8* %1202, i8** %11, align 8
  br label %1203

1203:                                             ; preds = %1196, %1177, %1174
  %1204 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1205 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1205, i32 0, i32 0
  %1207 = load i32, i32* %1206, align 4
  %1208 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %1209 = and i32 %1207, %1208
  %1210 = icmp ne i32 %1209, 0
  br i1 %1210, label %1211, label %1336

1211:                                             ; preds = %1203
  store i32 0, i32* %19, align 4
  %1212 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1213 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1213, i32 0, i32 6
  %1215 = load i32, i32* %1214, align 4
  %1216 = load i32, i32* @MBO_TYPE_REG, align 4
  %1217 = and i32 %1215, %1216
  %1218 = icmp ne i32 %1217, 0
  br i1 %1218, label %1219, label %1224

1219:                                             ; preds = %1211
  %1220 = load i32, i32* %19, align 4
  %1221 = add nsw i32 %1220, 1
  store i32 %1221, i32* %19, align 4
  %1222 = sext i32 %1220 to i64
  %1223 = getelementptr inbounds i8, i8* %27, i64 %1222
  store i8 114, i8* %1223, align 1
  br label %1224

1224:                                             ; preds = %1219, %1211
  %1225 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1226 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1225, i32 0, i32 1
  %1227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1226, i32 0, i32 6
  %1228 = load i32, i32* %1227, align 4
  %1229 = load i32, i32* @MBO_TYPE_DIR, align 4
  %1230 = and i32 %1228, %1229
  %1231 = icmp ne i32 %1230, 0
  br i1 %1231, label %1232, label %1237

1232:                                             ; preds = %1224
  %1233 = load i32, i32* %19, align 4
  %1234 = add nsw i32 %1233, 1
  store i32 %1234, i32* %19, align 4
  %1235 = sext i32 %1233 to i64
  %1236 = getelementptr inbounds i8, i8* %27, i64 %1235
  store i8 100, i8* %1236, align 1
  br label %1237

1237:                                             ; preds = %1232, %1224
  %1238 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1239 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1238, i32 0, i32 1
  %1240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1239, i32 0, i32 6
  %1241 = load i32, i32* %1240, align 4
  %1242 = load i32, i32* @MBO_TYPE_BLK, align 4
  %1243 = and i32 %1241, %1242
  %1244 = icmp ne i32 %1243, 0
  br i1 %1244, label %1245, label %1250

1245:                                             ; preds = %1237
  %1246 = load i32, i32* %19, align 4
  %1247 = add nsw i32 %1246, 1
  store i32 %1247, i32* %19, align 4
  %1248 = sext i32 %1246 to i64
  %1249 = getelementptr inbounds i8, i8* %27, i64 %1248
  store i8 98, i8* %1249, align 1
  br label %1250

1250:                                             ; preds = %1245, %1237
  %1251 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1252 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1251, i32 0, i32 1
  %1253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1252, i32 0, i32 6
  %1254 = load i32, i32* %1253, align 4
  %1255 = load i32, i32* @MBO_TYPE_CHR, align 4
  %1256 = and i32 %1254, %1255
  %1257 = icmp ne i32 %1256, 0
  br i1 %1257, label %1258, label %1263

1258:                                             ; preds = %1250
  %1259 = load i32, i32* %19, align 4
  %1260 = add nsw i32 %1259, 1
  store i32 %1260, i32* %19, align 4
  %1261 = sext i32 %1259 to i64
  %1262 = getelementptr inbounds i8, i8* %27, i64 %1261
  store i8 99, i8* %1262, align 1
  br label %1263

1263:                                             ; preds = %1258, %1250
  %1264 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1265 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1264, i32 0, i32 1
  %1266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1265, i32 0, i32 6
  %1267 = load i32, i32* %1266, align 4
  %1268 = load i32, i32* @MBO_TYPE_LNK, align 4
  %1269 = and i32 %1267, %1268
  %1270 = icmp ne i32 %1269, 0
  br i1 %1270, label %1271, label %1276

1271:                                             ; preds = %1263
  %1272 = load i32, i32* %19, align 4
  %1273 = add nsw i32 %1272, 1
  store i32 %1273, i32* %19, align 4
  %1274 = sext i32 %1272 to i64
  %1275 = getelementptr inbounds i8, i8* %27, i64 %1274
  store i8 108, i8* %1275, align 1
  br label %1276

1276:                                             ; preds = %1271, %1263
  %1277 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1278 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1277, i32 0, i32 1
  %1279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1278, i32 0, i32 6
  %1280 = load i32, i32* %1279, align 4
  %1281 = load i32, i32* @MBO_TYPE_SOCK, align 4
  %1282 = and i32 %1280, %1281
  %1283 = icmp ne i32 %1282, 0
  br i1 %1283, label %1284, label %1289

1284:                                             ; preds = %1276
  %1285 = load i32, i32* %19, align 4
  %1286 = add nsw i32 %1285, 1
  store i32 %1286, i32* %19, align 4
  %1287 = sext i32 %1285 to i64
  %1288 = getelementptr inbounds i8, i8* %27, i64 %1287
  store i8 115, i8* %1288, align 1
  br label %1289

1289:                                             ; preds = %1284, %1276
  %1290 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1291 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1291, i32 0, i32 6
  %1293 = load i32, i32* %1292, align 4
  %1294 = load i32, i32* @MBO_TYPE_FIFO, align 4
  %1295 = and i32 %1293, %1294
  %1296 = icmp ne i32 %1295, 0
  br i1 %1296, label %1297, label %1302

1297:                                             ; preds = %1289
  %1298 = load i32, i32* %19, align 4
  %1299 = add nsw i32 %1298, 1
  store i32 %1299, i32* %19, align 4
  %1300 = sext i32 %1298 to i64
  %1301 = getelementptr inbounds i8, i8* %27, i64 %1300
  store i8 112, i8* %1301, align 1
  br label %1302

1302:                                             ; preds = %1297, %1289
  %1303 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1304 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1303, i32 0, i32 1
  %1305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1304, i32 0, i32 6
  %1306 = load i32, i32* %1305, align 4
  %1307 = load i32, i32* @MBO_ALL_TYPE, align 4
  %1308 = icmp eq i32 %1306, %1307
  br i1 %1308, label %1309, label %1314

1309:                                             ; preds = %1302
  store i32 0, i32* %19, align 4
  %1310 = load i32, i32* %19, align 4
  %1311 = add nsw i32 %1310, 1
  store i32 %1311, i32* %19, align 4
  %1312 = sext i32 %1310 to i64
  %1313 = getelementptr inbounds i8, i8* %27, i64 %1312
  store i8 97, i8* %1313, align 1
  br label %1314

1314:                                             ; preds = %1309, %1302
  %1315 = load i32, i32* %19, align 4
  %1316 = add nsw i32 %1315, 1
  store i32 %1316, i32* %19, align 4
  %1317 = sext i32 %1315 to i64
  %1318 = getelementptr inbounds i8, i8* %27, i64 %1317
  store i8 0, i8* %1318, align 1
  %1319 = load i8*, i8** %11, align 8
  %1320 = load i64, i64* %14, align 8
  %1321 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1319, i64 %1320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %27)
  store i64 %1321, i64* %15, align 8
  %1322 = load i64, i64* %15, align 8
  %1323 = icmp ult i64 %1322, 0
  br i1 %1323, label %1328, label %1324

1324:                                             ; preds = %1314
  %1325 = load i64, i64* %15, align 8
  %1326 = load i64, i64* %14, align 8
  %1327 = icmp ugt i64 %1325, %1326
  br i1 %1327, label %1328, label %1329

1328:                                             ; preds = %1324, %1314
  br label %1533

1329:                                             ; preds = %1324
  %1330 = load i64, i64* %15, align 8
  %1331 = load i64, i64* %14, align 8
  %1332 = sub i64 %1331, %1330
  store i64 %1332, i64* %14, align 8
  %1333 = load i64, i64* %15, align 8
  %1334 = load i8*, i8** %11, align 8
  %1335 = getelementptr inbounds i8, i8* %1334, i64 %1333
  store i8* %1335, i8** %11, align 8
  br label %1336

1336:                                             ; preds = %1329, %1203
  br label %1337

1337:                                             ; preds = %1336, %487
  %1338 = load i8*, i8** %11, align 8
  %1339 = load i64, i64* %14, align 8
  %1340 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1338, i64 %1339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  store i64 %1340, i64* %15, align 8
  %1341 = load i64, i64* %15, align 8
  %1342 = icmp ult i64 %1341, 0
  br i1 %1342, label %1347, label %1343

1343:                                             ; preds = %1337
  %1344 = load i64, i64* %15, align 8
  %1345 = load i64, i64* %14, align 8
  %1346 = icmp ugt i64 %1344, %1345
  br i1 %1346, label %1347, label %1348

1347:                                             ; preds = %1343, %1337
  br label %1533

1348:                                             ; preds = %1343
  %1349 = load i64, i64* %15, align 8
  %1350 = load i64, i64* %14, align 8
  %1351 = sub i64 %1350, %1349
  store i64 %1351, i64* %14, align 8
  %1352 = load i64, i64* %15, align 8
  %1353 = load i8*, i8** %11, align 8
  %1354 = getelementptr inbounds i8, i8* %1353, i64 %1352
  store i8* %1354, i8** %11, align 8
  %1355 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1356 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1355, i32 0, i32 0
  %1357 = load i32, i32* %1356, align 4
  %1358 = load i32, i32* @MBI_ALLPERM, align 4
  %1359 = and i32 %1357, %1358
  store i32 %1359, i32* %16, align 4
  %1360 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1361 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1360, i32 0, i32 0
  %1362 = load i32, i32* %1361, align 4
  %1363 = load i32, i32* @MBI_ALLPERM, align 4
  %1364 = xor i32 %1363, -1
  %1365 = and i32 %1362, %1364
  store i32 %1365, i32* %17, align 4
  %1366 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1367 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1366, i32 0, i32 0
  %1368 = load i32, i32* %1367, align 4
  %1369 = load i32, i32* @MBI_ADMIN, align 4
  %1370 = and i32 %1368, %1369
  %1371 = icmp ne i32 %1370, 0
  br i1 %1371, label %1372, label %1390

1372:                                             ; preds = %1348
  %1373 = load i8*, i8** %11, align 8
  %1374 = load i64, i64* %14, align 8
  %1375 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1373, i64 %1374, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  store i64 %1375, i64* %15, align 8
  %1376 = load i64, i64* %15, align 8
  %1377 = icmp ult i64 %1376, 0
  br i1 %1377, label %1382, label %1378

1378:                                             ; preds = %1372
  %1379 = load i64, i64* %15, align 8
  %1380 = load i64, i64* %14, align 8
  %1381 = icmp ugt i64 %1379, %1380
  br i1 %1381, label %1382, label %1383

1382:                                             ; preds = %1378, %1372
  br label %1533

1383:                                             ; preds = %1378
  %1384 = load i64, i64* %15, align 8
  %1385 = load i64, i64* %14, align 8
  %1386 = sub i64 %1385, %1384
  store i64 %1386, i64* %14, align 8
  %1387 = load i64, i64* %15, align 8
  %1388 = load i8*, i8** %11, align 8
  %1389 = getelementptr inbounds i8, i8* %1388, i64 %1387
  store i8* %1389, i8** %11, align 8
  br label %1390

1390:                                             ; preds = %1383, %1348
  %1391 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1392 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1391, i32 0, i32 0
  %1393 = load i32, i32* %1392, align 4
  %1394 = load i32, i32* @MBI_READ, align 4
  %1395 = and i32 %1393, %1394
  %1396 = icmp ne i32 %1395, 0
  br i1 %1396, label %1397, label %1415

1397:                                             ; preds = %1390
  %1398 = load i8*, i8** %11, align 8
  %1399 = load i64, i64* %14, align 8
  %1400 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1398, i64 %1399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  store i64 %1400, i64* %15, align 8
  %1401 = load i64, i64* %15, align 8
  %1402 = icmp ult i64 %1401, 0
  br i1 %1402, label %1407, label %1403

1403:                                             ; preds = %1397
  %1404 = load i64, i64* %15, align 8
  %1405 = load i64, i64* %14, align 8
  %1406 = icmp ugt i64 %1404, %1405
  br i1 %1406, label %1407, label %1408

1407:                                             ; preds = %1403, %1397
  br label %1533

1408:                                             ; preds = %1403
  %1409 = load i64, i64* %15, align 8
  %1410 = load i64, i64* %14, align 8
  %1411 = sub i64 %1410, %1409
  store i64 %1411, i64* %14, align 8
  %1412 = load i64, i64* %15, align 8
  %1413 = load i8*, i8** %11, align 8
  %1414 = getelementptr inbounds i8, i8* %1413, i64 %1412
  store i8* %1414, i8** %11, align 8
  br label %1415

1415:                                             ; preds = %1408, %1390
  %1416 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1417 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1416, i32 0, i32 0
  %1418 = load i32, i32* %1417, align 4
  %1419 = load i32, i32* @MBI_STAT, align 4
  %1420 = and i32 %1418, %1419
  %1421 = icmp ne i32 %1420, 0
  br i1 %1421, label %1422, label %1440

1422:                                             ; preds = %1415
  %1423 = load i8*, i8** %11, align 8
  %1424 = load i64, i64* %14, align 8
  %1425 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1423, i64 %1424, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store i64 %1425, i64* %15, align 8
  %1426 = load i64, i64* %15, align 8
  %1427 = icmp ult i64 %1426, 0
  br i1 %1427, label %1432, label %1428

1428:                                             ; preds = %1422
  %1429 = load i64, i64* %15, align 8
  %1430 = load i64, i64* %14, align 8
  %1431 = icmp ugt i64 %1429, %1430
  br i1 %1431, label %1432, label %1433

1432:                                             ; preds = %1428, %1422
  br label %1533

1433:                                             ; preds = %1428
  %1434 = load i64, i64* %15, align 8
  %1435 = load i64, i64* %14, align 8
  %1436 = sub i64 %1435, %1434
  store i64 %1436, i64* %14, align 8
  %1437 = load i64, i64* %15, align 8
  %1438 = load i8*, i8** %11, align 8
  %1439 = getelementptr inbounds i8, i8* %1438, i64 %1437
  store i8* %1439, i8** %11, align 8
  br label %1440

1440:                                             ; preds = %1433, %1415
  %1441 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1442 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1441, i32 0, i32 0
  %1443 = load i32, i32* %1442, align 4
  %1444 = load i32, i32* @MBI_WRITE, align 4
  %1445 = and i32 %1443, %1444
  %1446 = icmp ne i32 %1445, 0
  br i1 %1446, label %1447, label %1465

1447:                                             ; preds = %1440
  %1448 = load i8*, i8** %11, align 8
  %1449 = load i64, i64* %14, align 8
  %1450 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1448, i64 %1449, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  store i64 %1450, i64* %15, align 8
  %1451 = load i64, i64* %15, align 8
  %1452 = icmp ult i64 %1451, 0
  br i1 %1452, label %1457, label %1453

1453:                                             ; preds = %1447
  %1454 = load i64, i64* %15, align 8
  %1455 = load i64, i64* %14, align 8
  %1456 = icmp ugt i64 %1454, %1455
  br i1 %1456, label %1457, label %1458

1457:                                             ; preds = %1453, %1447
  br label %1533

1458:                                             ; preds = %1453
  %1459 = load i64, i64* %15, align 8
  %1460 = load i64, i64* %14, align 8
  %1461 = sub i64 %1460, %1459
  store i64 %1461, i64* %14, align 8
  %1462 = load i64, i64* %15, align 8
  %1463 = load i8*, i8** %11, align 8
  %1464 = getelementptr inbounds i8, i8* %1463, i64 %1462
  store i8* %1464, i8** %11, align 8
  br label %1465

1465:                                             ; preds = %1458, %1440
  %1466 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %5, align 8
  %1467 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %1466, i32 0, i32 0
  %1468 = load i32, i32* %1467, align 4
  %1469 = load i32, i32* @MBI_EXEC, align 4
  %1470 = and i32 %1468, %1469
  %1471 = icmp ne i32 %1470, 0
  br i1 %1471, label %1472, label %1490

1472:                                             ; preds = %1465
  %1473 = load i8*, i8** %11, align 8
  %1474 = load i64, i64* %14, align 8
  %1475 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1473, i64 %1474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  store i64 %1475, i64* %15, align 8
  %1476 = load i64, i64* %15, align 8
  %1477 = icmp ult i64 %1476, 0
  br i1 %1477, label %1482, label %1478

1478:                                             ; preds = %1472
  %1479 = load i64, i64* %15, align 8
  %1480 = load i64, i64* %14, align 8
  %1481 = icmp ugt i64 %1479, %1480
  br i1 %1481, label %1482, label %1483

1482:                                             ; preds = %1478, %1472
  br label %1533

1483:                                             ; preds = %1478
  %1484 = load i64, i64* %15, align 8
  %1485 = load i64, i64* %14, align 8
  %1486 = sub i64 %1485, %1484
  store i64 %1486, i64* %14, align 8
  %1487 = load i64, i64* %15, align 8
  %1488 = load i8*, i8** %11, align 8
  %1489 = getelementptr inbounds i8, i8* %1488, i64 %1487
  store i8* %1489, i8** %11, align 8
  br label %1490

1490:                                             ; preds = %1483, %1465
  %1491 = load i32, i32* %16, align 4
  %1492 = icmp ne i32 %1491, 0
  br i1 %1492, label %1511, label %1493

1493:                                             ; preds = %1490
  %1494 = load i8*, i8** %11, align 8
  %1495 = load i64, i64* %14, align 8
  %1496 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1494, i64 %1495, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  store i64 %1496, i64* %15, align 8
  %1497 = load i64, i64* %15, align 8
  %1498 = icmp ult i64 %1497, 0
  br i1 %1498, label %1503, label %1499

1499:                                             ; preds = %1493
  %1500 = load i64, i64* %15, align 8
  %1501 = load i64, i64* %14, align 8
  %1502 = icmp ugt i64 %1500, %1501
  br i1 %1502, label %1503, label %1504

1503:                                             ; preds = %1499, %1493
  br label %1533

1504:                                             ; preds = %1499
  %1505 = load i64, i64* %15, align 8
  %1506 = load i64, i64* %14, align 8
  %1507 = sub i64 %1506, %1505
  store i64 %1507, i64* %14, align 8
  %1508 = load i64, i64* %15, align 8
  %1509 = load i8*, i8** %11, align 8
  %1510 = getelementptr inbounds i8, i8* %1509, i64 %1508
  store i8* %1510, i8** %11, align 8
  br label %1511

1511:                                             ; preds = %1504, %1490
  %1512 = load i32, i32* %17, align 4
  %1513 = icmp ne i32 %1512, 0
  br i1 %1513, label %1514, label %1532

1514:                                             ; preds = %1511
  %1515 = load i8*, i8** %11, align 8
  %1516 = load i64, i64* %14, align 8
  %1517 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %1515, i64 %1516, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store i64 %1517, i64* %15, align 8
  %1518 = load i64, i64* %15, align 8
  %1519 = icmp ult i64 %1518, 0
  br i1 %1519, label %1524, label %1520

1520:                                             ; preds = %1514
  %1521 = load i64, i64* %15, align 8
  %1522 = load i64, i64* %14, align 8
  %1523 = icmp ugt i64 %1521, %1522
  br i1 %1523, label %1524, label %1525

1524:                                             ; preds = %1520, %1514
  br label %1533

1525:                                             ; preds = %1520
  %1526 = load i64, i64* %15, align 8
  %1527 = load i64, i64* %14, align 8
  %1528 = sub i64 %1527, %1526
  store i64 %1528, i64* %14, align 8
  %1529 = load i64, i64* %15, align 8
  %1530 = load i8*, i8** %11, align 8
  %1531 = getelementptr inbounds i8, i8* %1530, i64 %1529
  store i8* %1531, i8** %11, align 8
  br label %1532

1532:                                             ; preds = %1525, %1511
  store i32 0, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %1534

1533:                                             ; preds = %1524, %1503, %1482, %1457, %1432, %1407, %1382, %1347, %1328, %1195, %1166, %1140, %1111, %1085, %1056, %1030, %1001, %975, %946, %884, %854, %835, %813, %774, %752, %715, %685, %666, %644, %605, %583, %546, %516, %486, %467, %437, %407, %388, %366, %327, %305, %268, %238, %219, %197, %158, %136, %99, %69, %39
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %1534

1534:                                             ; preds = %1533, %1532
  %1535 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %1535)
  %1536 = load i32, i32* %4, align 4
  ret i32 %1536
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local %struct.group* @getgrgid(i32) #2

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
