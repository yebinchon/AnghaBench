; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fabric = type { i32 }
%struct.torus = type { i32*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" \0A\09\0D\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ERR 4E11: Opening %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@NOTIFY_CHANGES = common dso_local global i32 0, align 4
@PORTGRP_MAX_PORTS = common dso_local global i32 0, align 4
@DEFAULT_MAX_CHANGES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"torus\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@X_MESH = common dso_local global i32 0, align 4
@Y_MESH = common dso_local global i32 0, align 4
@Z_MESH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"port_order\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"next_seed\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"portgroup_max_ports\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"xp_link\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"xm_link\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"x_dateline\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"yp_link\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ym_link\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"y_dateline\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"zp_link\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"zm_link\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"z_dateline\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"max_changes\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"ERR 4E12: no keyword found: line %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"ERR 4E13: parsing '%s': line %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fabric*, %struct.torus*)* @parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config(i8* %0, %struct.fabric* %1, %struct.torus* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fabric*, align 8
  %7 = alloca %struct.torus*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.fabric* %1, %struct.fabric** %6, align 8
  store %struct.torus* %2, %struct.torus** %7, align 8
  store i8* null, i8** %11, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 1, i32* %17, align 4
  %18 = load %struct.torus*, %struct.torus** %7, align 8
  %19 = call i32 @grow_seed_array(%struct.torus* %18, i32 2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %370

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.torus*, %struct.torus** %7, align 8
  %26 = getelementptr inbounds %struct.torus, %struct.torus* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.torus*, %struct.torus** %7, align 8
  %33 = getelementptr inbounds %struct.torus, %struct.torus* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i8*, i8** %5, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.torus*, %struct.torus** %7, align 8
  %48 = getelementptr inbounds %struct.torus, %struct.torus* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* @OSM_LOG_ERROR, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %54)
  store i32 0, i32* %4, align 4
  br label %370

56:                                               ; preds = %41
  %57 = load i32, i32* @NOTIFY_CHANGES, align 4
  %58 = load %struct.torus*, %struct.torus** %7, align 8
  %59 = getelementptr inbounds %struct.torus, %struct.torus* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @PORTGRP_MAX_PORTS, align 4
  %63 = load %struct.torus*, %struct.torus** %7, align 8
  %64 = getelementptr inbounds %struct.torus, %struct.torus* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @DEFAULT_MAX_CHANGES, align 4
  %66 = load %struct.torus*, %struct.torus** %7, align 8
  %67 = getelementptr inbounds %struct.torus, %struct.torus* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %357, %313, %82, %56
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @getline(i8** %11, i64* %13, i32* %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %360

74:                                               ; preds = %68
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %14, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i8* @strtok(i8* %77, i8* %78)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %68

83:                                               ; preds = %74
  %84 = load i8*, i8** %10, align 8
  %85 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.torus*, %struct.torus** %7, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @parse_torus(%struct.torus* %88, i8* %89)
  store i32 %90, i32* %16, align 4
  br label %338

91:                                               ; preds = %83
  %92 = load i8*, i8** %10, align 8
  %93 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i32, i32* @X_MESH, align 4
  %97 = load i32, i32* @Y_MESH, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @Z_MESH, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.torus*, %struct.torus** %7, align 8
  %102 = getelementptr inbounds %struct.torus, %struct.torus* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.torus*, %struct.torus** %7, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @parse_torus(%struct.torus* %105, i8* %106)
  store i32 %107, i32* %16, align 4
  br label %337

108:                                              ; preds = %91
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.torus*, %struct.torus** %7, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @parse_port_order(%struct.torus* %113, i8* %114)
  store i32 %115, i32* %16, align 4
  br label %336

116:                                              ; preds = %108
  %117 = load i8*, i8** %10, align 8
  %118 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load %struct.torus*, %struct.torus** %7, align 8
  %122 = call i32 @grow_seed_array(%struct.torus* %121, i32 1)
  store i32 %122, i32* %16, align 4
  %123 = load %struct.torus*, %struct.torus** %7, align 8
  %124 = getelementptr inbounds %struct.torus, %struct.torus* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %335

127:                                              ; preds = %116
  %128 = load i8*, i8** %10, align 8
  %129 = call i64 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load %struct.torus*, %struct.torus** %7, align 8
  %133 = getelementptr inbounds %struct.torus, %struct.torus* %132, i32 0, i32 5
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @parse_unsigned(i32* %133, i8* %134)
  store i32 %135, i32* %16, align 4
  br label %334

136:                                              ; preds = %127
  %137 = load i8*, i8** %10, align 8
  %138 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load %struct.torus*, %struct.torus** %7, align 8
  %142 = getelementptr inbounds %struct.torus, %struct.torus* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.torus*, %struct.torus** %7, align 8
  %147 = getelementptr inbounds %struct.torus, %struct.torus* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.torus*, %struct.torus** %7, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @parse_dir_link(i32 1, %struct.torus* %151, i8* %152)
  store i32 %153, i32* %16, align 4
  br label %333

154:                                              ; preds = %136
  %155 = load i8*, i8** %10, align 8
  %156 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %154
  %159 = load %struct.torus*, %struct.torus** %7, align 8
  %160 = getelementptr inbounds %struct.torus, %struct.torus* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.torus*, %struct.torus** %7, align 8
  %165 = getelementptr inbounds %struct.torus, %struct.torus* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.torus*, %struct.torus** %7, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @parse_dir_link(i32 -1, %struct.torus* %169, i8* %170)
  store i32 %171, i32* %16, align 4
  br label %332

172:                                              ; preds = %154
  %173 = load i8*, i8** %10, align 8
  %174 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %172
  %177 = load %struct.torus*, %struct.torus** %7, align 8
  %178 = getelementptr inbounds %struct.torus, %struct.torus* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load %struct.torus*, %struct.torus** %7, align 8
  %183 = getelementptr inbounds %struct.torus, %struct.torus* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.torus*, %struct.torus** %7, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = call i32 @parse_dir_dateline(i32 1, %struct.torus* %187, i8* %188)
  store i32 %189, i32* %16, align 4
  br label %331

190:                                              ; preds = %172
  %191 = load i8*, i8** %10, align 8
  %192 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load %struct.torus*, %struct.torus** %7, align 8
  %196 = getelementptr inbounds %struct.torus, %struct.torus* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load %struct.torus*, %struct.torus** %7, align 8
  %201 = getelementptr inbounds %struct.torus, %struct.torus* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %199, %194
  %205 = load %struct.torus*, %struct.torus** %7, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @parse_dir_link(i32 2, %struct.torus* %205, i8* %206)
  store i32 %207, i32* %16, align 4
  br label %330

208:                                              ; preds = %190
  %209 = load i8*, i8** %10, align 8
  %210 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = load %struct.torus*, %struct.torus** %7, align 8
  %214 = getelementptr inbounds %struct.torus, %struct.torus* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load %struct.torus*, %struct.torus** %7, align 8
  %219 = getelementptr inbounds %struct.torus, %struct.torus* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %217, %212
  %223 = load %struct.torus*, %struct.torus** %7, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = call i32 @parse_dir_link(i32 -2, %struct.torus* %223, i8* %224)
  store i32 %225, i32* %16, align 4
  br label %329

226:                                              ; preds = %208
  %227 = load i8*, i8** %10, align 8
  %228 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %227)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = load %struct.torus*, %struct.torus** %7, align 8
  %232 = getelementptr inbounds %struct.torus, %struct.torus* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load %struct.torus*, %struct.torus** %7, align 8
  %237 = getelementptr inbounds %struct.torus, %struct.torus* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %235, %230
  %241 = load %struct.torus*, %struct.torus** %7, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = call i32 @parse_dir_dateline(i32 2, %struct.torus* %241, i8* %242)
  store i32 %243, i32* %16, align 4
  br label %328

244:                                              ; preds = %226
  %245 = load i8*, i8** %10, align 8
  %246 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %244
  %249 = load %struct.torus*, %struct.torus** %7, align 8
  %250 = getelementptr inbounds %struct.torus, %struct.torus* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %248
  %254 = load %struct.torus*, %struct.torus** %7, align 8
  %255 = getelementptr inbounds %struct.torus, %struct.torus* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.torus*, %struct.torus** %7, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 @parse_dir_link(i32 3, %struct.torus* %259, i8* %260)
  store i32 %261, i32* %16, align 4
  br label %327

262:                                              ; preds = %244
  %263 = load i8*, i8** %10, align 8
  %264 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %263)
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %262
  %267 = load %struct.torus*, %struct.torus** %7, align 8
  %268 = getelementptr inbounds %struct.torus, %struct.torus* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.torus*, %struct.torus** %7, align 8
  %273 = getelementptr inbounds %struct.torus, %struct.torus* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %271, %266
  %277 = load %struct.torus*, %struct.torus** %7, align 8
  %278 = load i8*, i8** %12, align 8
  %279 = call i32 @parse_dir_link(i32 -3, %struct.torus* %277, i8* %278)
  store i32 %279, i32* %16, align 4
  br label %326

280:                                              ; preds = %262
  %281 = load i8*, i8** %10, align 8
  %282 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %281)
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %280
  %285 = load %struct.torus*, %struct.torus** %7, align 8
  %286 = getelementptr inbounds %struct.torus, %struct.torus* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = load %struct.torus*, %struct.torus** %7, align 8
  %291 = getelementptr inbounds %struct.torus, %struct.torus* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %289, %284
  %295 = load %struct.torus*, %struct.torus** %7, align 8
  %296 = load i8*, i8** %12, align 8
  %297 = call i32 @parse_dir_dateline(i32 3, %struct.torus* %295, i8* %296)
  store i32 %297, i32* %16, align 4
  br label %325

298:                                              ; preds = %280
  %299 = load i8*, i8** %10, align 8
  %300 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* %299)
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load %struct.torus*, %struct.torus** %7, align 8
  %304 = getelementptr inbounds %struct.torus, %struct.torus* %303, i32 0, i32 3
  %305 = load i8*, i8** %12, align 8
  %306 = call i32 @parse_unsigned(i32* %304, i8* %305)
  store i32 %306, i32* %16, align 4
  br label %324

307:                                              ; preds = %298
  %308 = load i8*, i8** %10, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 0
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 35
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  br label %68

314:                                              ; preds = %307
  %315 = load %struct.torus*, %struct.torus** %7, align 8
  %316 = getelementptr inbounds %struct.torus, %struct.torus* %315, i32 0, i32 2
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i32, i32* @OSM_LOG_ERROR, align 4
  %320 = load i64, i64* %14, align 8
  %321 = trunc i64 %320 to i32
  %322 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %318, i32 %319, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %321)
  store i32 0, i32* %16, align 4
  br label %323

323:                                              ; preds = %314
  br label %324

324:                                              ; preds = %323, %302
  br label %325

325:                                              ; preds = %324, %294
  br label %326

326:                                              ; preds = %325, %276
  br label %327

327:                                              ; preds = %326, %258
  br label %328

328:                                              ; preds = %327, %240
  br label %329

329:                                              ; preds = %328, %222
  br label %330

330:                                              ; preds = %329, %204
  br label %331

331:                                              ; preds = %330, %186
  br label %332

332:                                              ; preds = %331, %168
  br label %333

333:                                              ; preds = %332, %150
  br label %334

334:                                              ; preds = %333, %131
  br label %335

335:                                              ; preds = %334, %120
  br label %336

336:                                              ; preds = %335, %112
  br label %337

337:                                              ; preds = %336, %95
  br label %338

338:                                              ; preds = %337, %87
  %339 = load i32, i32* %16, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %351, label %341

341:                                              ; preds = %338
  %342 = load %struct.torus*, %struct.torus** %7, align 8
  %343 = getelementptr inbounds %struct.torus, %struct.torus* %342, i32 0, i32 2
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32, i32* @OSM_LOG_ERROR, align 4
  %347 = load i8*, i8** %10, align 8
  %348 = load i64, i64* %14, align 8
  %349 = trunc i64 %348 to i32
  %350 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %345, i32 %346, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* %347, i32 %349)
  br label %351

351:                                              ; preds = %341, %338
  %352 = load i32, i32* %17, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i32, i32* %16, align 4
  %356 = icmp ne i32 %355, 0
  br label %357

357:                                              ; preds = %354, %351
  %358 = phi i1 [ false, %351 ], [ %356, %354 ]
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %17, align 4
  br label %68

360:                                              ; preds = %73
  %361 = load i8*, i8** %11, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i8*, i8** %11, align 8
  %365 = call i32 @free(i8* %364)
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i32*, i32** %8, align 8
  %368 = call i32 @fclose(i32* %367)
  %369 = load i32, i32* %17, align 4
  store i32 %369, i32* %4, align 4
  br label %370

370:                                              ; preds = %366, %46, %21
  %371 = load i32, i32* %4, align 4
  ret i32 %371
}

declare dso_local i32 @grow_seed_array(%struct.torus*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_torus(%struct.torus*, i8*) #1

declare dso_local i32 @parse_port_order(%struct.torus*, i8*) #1

declare dso_local i32 @parse_unsigned(i32*, i8*) #1

declare dso_local i32 @parse_dir_link(i32, %struct.torus*, i8*) #1

declare dso_local i32 @parse_dir_dateline(i32, %struct.torus*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
