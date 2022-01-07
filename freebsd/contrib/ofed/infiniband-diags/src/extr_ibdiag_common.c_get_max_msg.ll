; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_get_max_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_get_max_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@IB_PORT_LINK_WIDTH_SUPPORTED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_WIDTH_ACTIVE_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Could be %s\00", align 1
@IB_NODE_SWITCH = common dso_local global i64 0, align 8
@IB_PORT_CAPMASK_F = common dso_local global i32 0, align 4
@IB_PORT_CAP_HAS_EXT_SPEEDS = common dso_local global i32 0, align 4
@IB_MLNX_EXT_PORT_LINK_SPEED_SUPPORTED_F = common dso_local global i32 0, align 4
@FDR10 = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_SUPPORTED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_ACTIVE_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_SUPPORTED_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_ACTIVE_F = common dso_local global i32 0, align 4
@IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Could be FDR10 (Found link at QDR but expected speed is FDR10)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Could be FDR10\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_max_msg(i8* %0, i8* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @IB_PORT_LINK_WIDTH_SUPPORTED_F, align 4
  %20 = call i32 @mad_get_field(i32* %18, i32 0, i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @IB_PORT_LINK_WIDTH_SUPPORTED_F, align 4
  %27 = call i32 @mad_get_field(i32* %25, i32 0, i32 %26)
  %28 = and i32 %20, %27
  %29 = call i32 @get_max_width(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @IB_PORT_LINK_WIDTH_ACTIVE_F, align 4
  %35 = call i32 @mad_get_field(i32* %33, i32 0, i32 %34)
  %36 = and i32 %30, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IB_PORT_LINK_WIDTH_ACTIVE_F, align 4
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %43 = call i8* @mad_dump_val(i32 %41, i8* %42, i32 64, i32* %15)
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %38, %4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_NODE_SWITCH, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32* %70, i32** %14, align 8
  br label %71

71:                                               ; preds = %62, %53
  br label %76

72:                                               ; preds = %45
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = bitcast i32** %74 to i32*
  store i32* %75, i32** %14, align 8
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32*, i32** %14, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @IB_PORT_CAPMASK_F, align 4
  %82 = call i32 @mad_get_field(i32* %80, i32 0, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %84

83:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %79
  store i32* null, i32** %14, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IB_NODE_SWITCH, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %84
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %101, i64 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %94
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %112, i64 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32* %115, i32** %14, align 8
  br label %116

116:                                              ; preds = %105, %94
  br label %123

117:                                              ; preds = %84
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = bitcast i32** %121 to i32*
  store i32* %122, i32** %14, align 8
  br label %123

123:                                              ; preds = %117, %116
  %124 = load i32*, i32** %14, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* @IB_PORT_CAPMASK_F, align 4
  %129 = call i32 @mad_get_field(i32* %127, i32 0, i32 %128)
  store i32 %129, i32* %12, align 4
  br label %131

130:                                              ; preds = %123
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %130, %126
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %134 = call i32 @CL_NTOH32(i32 %133)
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %140 = call i32 @CL_NTOH32(i32 %139)
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %202

144:                                              ; preds = %137, %131
  br label %145

145:                                              ; preds = %218, %144
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @IB_MLNX_EXT_PORT_LINK_SPEED_SUPPORTED_F, align 4
  %150 = call i32 @mad_get_field(i32* %148, i32 0, i32 %149)
  %151 = load i32, i32* @FDR10, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %145
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @IB_MLNX_EXT_PORT_LINK_SPEED_SUPPORTED_F, align 4
  %161 = call i32 @mad_get_field(i32* %159, i32 0, i32 %160)
  %162 = load i32, i32* @FDR10, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br label %165

165:                                              ; preds = %154, %145
  %166 = phi i1 [ false, %145 ], [ %164, %154 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %250

171:                                              ; preds = %165
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @IB_PORT_LINK_SPEED_SUPPORTED_F, align 4
  %176 = call i32 @mad_get_field(i32* %174, i32 0, i32 %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @IB_PORT_LINK_SPEED_SUPPORTED_F, align 4
  %183 = call i32 @mad_get_field(i32* %181, i32 0, i32 %182)
  %184 = and i32 %176, %183
  %185 = call i32 @get_max(i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %191 = call i32 @mad_get_field(i32* %189, i32 0, i32 %190)
  %192 = and i32 %186, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %171
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %198 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %199 = call i8* @mad_dump_val(i32 %197, i8* %198, i32 64, i32* %10)
  %200 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %195, i32 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %194, %171
  br label %275

202:                                              ; preds = %143
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, align 4
  %207 = call i32 @mad_get_field(i32* %205, i32 0, i32 %206)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %202
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, align 4
  %216 = call i32 @mad_get_field(i32* %214, i32 0, i32 %215)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %209, %202
  br label %145

219:                                              ; preds = %209
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, align 4
  %224 = call i32 @mad_get_field(i32* %222, i32 0, i32 %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_SUPPORTED_F, align 4
  %231 = call i32 @mad_get_field(i32* %229, i32 0, i32 %230)
  %232 = and i32 %224, %231
  %233 = call i32 @get_max(i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ACTIVE_F, align 4
  %239 = call i32 @mad_get_field(i32* %237, i32 0, i32 %238)
  %240 = and i32 %234, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %219
  %243 = load i8*, i8** %6, align 8
  %244 = load i32, i32* %7, align 4
  %245 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ACTIVE_F, align 4
  %246 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %247 = call i8* @mad_dump_val(i32 %245, i8* %246, i32 64, i32* %10)
  %248 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %243, i32 %244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %247)
  br label %249

249:                                              ; preds = %242, %219
  br label %275

250:                                              ; preds = %170
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* @IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F, align 4
  %255 = call i32 @mad_get_field(i32* %253, i32 0, i32 %254)
  %256 = load i32, i32* @FDR10, align 4
  %257 = and i32 %255, %256
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %250
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %264 = call i32 @mad_get_field(i32* %262, i32 0, i32 %263)
  %265 = icmp eq i32 %264, 4
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %267, i32 %268, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %274

270:                                              ; preds = %259
  %271 = load i8*, i8** %6, align 8
  %272 = load i32, i32* %7, align 4
  %273 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %271, i32 %272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %274

274:                                              ; preds = %270, %266
  br label %275

275:                                              ; preds = %201, %249, %274, %250
  ret void
}

declare dso_local i32 @get_max_width(i32) #1

declare dso_local i32 @mad_get_field(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @mad_dump_val(i32, i8*, i32, i32*) #1

declare dso_local i32 @CL_NTOH32(i32) #1

declare dso_local i32 @get_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
