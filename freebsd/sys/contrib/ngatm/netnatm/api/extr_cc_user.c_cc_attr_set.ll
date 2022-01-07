; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_attr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i32 }
%struct.ccconn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@CONN_OUT_PREPARING = common dso_local global i32 0, align 4
@UNI_NUM_IE_BLLI = common dso_local global i32 0, align 4
@ATMERR_BAD_ATTR = common dso_local global i32 0, align 4
@ATMERR_BAD_ARGS = common dso_local global i32 0, align 4
@CCDIRTY_BLLI = common dso_local global i32 0, align 4
@CCDIRTY_TRAFFIC = common dso_local global i32 0, align 4
@CCDIRTY_EXQOS = common dso_local global i32 0, align 4
@CCDIRTY_AAL = common dso_local global i32 0, align 4
@CCDIRTY_EETD = common dso_local global i32 0, align 4
@CCDIRTY_ABRSETUP = common dso_local global i32 0, align 4
@CCDIRTY_ABRADD = common dso_local global i32 0, align 4
@CCDIRTY_CONNID = common dso_local global i32 0, align 4
@ATMRESP_NONE = common dso_local global i32 0, align 4
@ATMERR_BAD_VALUE = common dso_local global i32 0, align 4
@ATMERR_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*, %struct.ccconn*, i32*, i64, i32*, i64)* @cc_attr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_attr_set(%struct.ccuser* %0, %struct.ccconn* %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.ccuser*, align 8
  %8 = alloca %struct.ccconn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ccuser* %0, %struct.ccuser** %7, align 8
  store %struct.ccconn* %1, %struct.ccconn** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32*, i32** %11, align 8
  store i32* %19, i32** %16, align 8
  store i64 0, i64* %15, align 8
  br label %20

20:                                               ; preds = %122, %6
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %125

24:                                               ; preds = %20
  store i64 0, i64* %14, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %15, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %108 [
    i32 130, label %29
    i32 142, label %30
    i32 143, label %48
    i32 144, label %49
    i32 128, label %57
    i32 129, label %58
    i32 132, label %66
    i32 141, label %67
    i32 140, label %68
    i32 139, label %76
    i32 138, label %84
    i32 147, label %92
    i32 133, label %93
    i32 137, label %94
    i32 136, label %95
    i32 134, label %96
    i32 145, label %97
    i32 146, label %98
    i32 135, label %99
    i32 131, label %100
  ]

29:                                               ; preds = %24
  br label %108

30:                                               ; preds = %24
  %31 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %32 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %301

37:                                               ; preds = %30
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @memcpy(i32* %17, i32* %38, i64 4)
  %40 = load i32, i32* %17, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* @UNI_NUM_IE_BLLI, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %37
  br label %297

47:                                               ; preds = %42
  store i64 4, i64* %14, align 8
  br label %108

48:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

49:                                               ; preds = %24
  %50 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %51 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %301

56:                                               ; preds = %49
  store i64 4, i64* %14, align 8
  br label %108

57:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

58:                                               ; preds = %24
  %59 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %60 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %59, i32 0, i32 16
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %301

65:                                               ; preds = %58
  store i64 4, i64* %14, align 8
  br label %108

66:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

67:                                               ; preds = %24
  br label %301

68:                                               ; preds = %24
  %69 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %70 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %301

75:                                               ; preds = %68
  store i64 4, i64* %14, align 8
  br label %108

76:                                               ; preds = %24
  %77 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %78 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %77, i32 0, i32 16
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %301

83:                                               ; preds = %76
  store i64 4, i64* %14, align 8
  br label %108

84:                                               ; preds = %24
  %85 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %86 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %85, i32 0, i32 16
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %301

91:                                               ; preds = %84
  store i64 4, i64* %14, align 8
  br label %108

92:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

93:                                               ; preds = %24
  br label %301

94:                                               ; preds = %24
  br label %301

95:                                               ; preds = %24
  br label %301

96:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

97:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

98:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

99:                                               ; preds = %24
  store i64 4, i64* %14, align 8
  br label %108

100:                                              ; preds = %24
  %101 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %102 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %101, i32 0, i32 16
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CONN_OUT_PREPARING, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %301

107:                                              ; preds = %100
  store i64 4, i64* %14, align 8
  br label %108

108:                                              ; preds = %24, %107, %99, %98, %97, %96, %92, %91, %83, %75, %66, %65, %57, %56, %48, %47, %29
  %109 = load i64, i64* %14, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.ccuser*, %struct.ccuser** %7, align 8
  %113 = load i32, i32* @ATMERR_BAD_ATTR, align 4
  %114 = call i32 @cc_user_err(%struct.ccuser* %112, i32 %113)
  br label %305

115:                                              ; preds = %108
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %13, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 %119
  store i32* %121, i32** %16, align 8
  br label %122

122:                                              ; preds = %115
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %15, align 8
  br label %20

125:                                              ; preds = %20
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.ccuser*, %struct.ccuser** %7, align 8
  %131 = load i32, i32* @ATMERR_BAD_ARGS, align 4
  %132 = call i32 @cc_user_err(%struct.ccuser* %130, i32 %131)
  br label %305

133:                                              ; preds = %125
  %134 = load i32*, i32** %11, align 8
  store i32* %134, i32** %16, align 8
  store i64 0, i64* %15, align 8
  br label %135

135:                                              ; preds = %290, %133
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %293

139:                                              ; preds = %135
  store i64 0, i64* %14, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %286 [
    i32 130, label %144
    i32 142, label %145
    i32 143, label %151
    i32 144, label %169
    i32 128, label %175
    i32 129, label %186
    i32 132, label %192
    i32 141, label %203
    i32 140, label %204
    i32 139, label %210
    i32 138, label %216
    i32 147, label %222
    i32 133, label %233
    i32 137, label %234
    i32 136, label %235
    i32 134, label %236
    i32 145, label %247
    i32 146, label %258
    i32 135, label %269
    i32 131, label %280
  ]

144:                                              ; preds = %139
  br label %286

145:                                              ; preds = %139
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @memcpy(i32* %18, i32* %146, i64 4)
  %148 = load i32, i32* %18, align 4
  %149 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %150 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %149, i32 0, i32 14
  store i32 %148, i32* %150, align 8
  store i64 4, i64* %14, align 8
  br label %286

151:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %152 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %153 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %152, i32 0, i32 15
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %156 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  %161 = load i32*, i32** %16, align 8
  %162 = load i64, i64* %14, align 8
  %163 = call i32 @memcpy(i32* %160, i32* %161, i64 %162)
  %164 = load i32, i32* @CCDIRTY_BLLI, align 4
  %165 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %166 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %286

169:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %170 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %171 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %170, i32 0, i32 13
  %172 = load i32*, i32** %16, align 8
  %173 = load i64, i64* %14, align 8
  %174 = call i32 @memcpy(i32* %171, i32* %172, i64 %173)
  br label %286

175:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %176 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %177 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %176, i32 0, i32 12
  %178 = load i32*, i32** %16, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @memcpy(i32* %177, i32* %178, i64 %179)
  %181 = load i32, i32* @CCDIRTY_TRAFFIC, align 4
  %182 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %183 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %286

186:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %187 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %188 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %187, i32 0, i32 11
  %189 = load i32*, i32** %16, align 8
  %190 = load i64, i64* %14, align 8
  %191 = call i32 @memcpy(i32* %188, i32* %189, i64 %190)
  br label %286

192:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %193 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %194 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %193, i32 0, i32 10
  %195 = load i32*, i32** %16, align 8
  %196 = load i64, i64* %14, align 8
  %197 = call i32 @memcpy(i32* %194, i32* %195, i64 %196)
  %198 = load i32, i32* @CCDIRTY_EXQOS, align 4
  %199 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %200 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %286

203:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  br label %286

204:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %205 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %206 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %205, i32 0, i32 9
  %207 = load i32*, i32** %16, align 8
  %208 = load i64, i64* %14, align 8
  %209 = call i32 @memcpy(i32* %206, i32* %207, i64 %208)
  br label %286

210:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %211 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %212 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %211, i32 0, i32 8
  %213 = load i32*, i32** %16, align 8
  %214 = load i64, i64* %14, align 8
  %215 = call i32 @memcpy(i32* %212, i32* %213, i64 %214)
  br label %286

216:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %217 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %218 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %217, i32 0, i32 7
  %219 = load i32*, i32** %16, align 8
  %220 = load i64, i64* %14, align 8
  %221 = call i32 @memcpy(i32* %218, i32* %219, i64 %220)
  br label %286

222:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %223 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %224 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %223, i32 0, i32 6
  %225 = load i32*, i32** %16, align 8
  %226 = load i64, i64* %14, align 8
  %227 = call i32 @memcpy(i32* %224, i32* %225, i64 %226)
  %228 = load i32, i32* @CCDIRTY_AAL, align 4
  %229 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %230 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %286

233:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  br label %286

234:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  br label %286

235:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  br label %286

236:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %237 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %238 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %237, i32 0, i32 5
  %239 = load i32*, i32** %16, align 8
  %240 = load i64, i64* %14, align 8
  %241 = call i32 @memcpy(i32* %238, i32* %239, i64 %240)
  %242 = load i32, i32* @CCDIRTY_EETD, align 4
  %243 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %244 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  br label %286

247:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %248 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %249 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %248, i32 0, i32 4
  %250 = load i32*, i32** %16, align 8
  %251 = load i64, i64* %14, align 8
  %252 = call i32 @memcpy(i32* %249, i32* %250, i64 %251)
  %253 = load i32, i32* @CCDIRTY_ABRSETUP, align 4
  %254 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %255 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %286

258:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %259 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %260 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %259, i32 0, i32 3
  %261 = load i32*, i32** %16, align 8
  %262 = load i64, i64* %14, align 8
  %263 = call i32 @memcpy(i32* %260, i32* %261, i64 %262)
  %264 = load i32, i32* @CCDIRTY_ABRADD, align 4
  %265 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %266 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %286

269:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %270 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %271 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %270, i32 0, i32 2
  %272 = load i32*, i32** %16, align 8
  %273 = load i64, i64* %14, align 8
  %274 = call i32 @memcpy(i32* %271, i32* %272, i64 %273)
  %275 = load i32, i32* @CCDIRTY_CONNID, align 4
  %276 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %277 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %286

280:                                              ; preds = %139
  store i64 4, i64* %14, align 8
  %281 = load %struct.ccconn*, %struct.ccconn** %8, align 8
  %282 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %281, i32 0, i32 0
  %283 = load i32*, i32** %16, align 8
  %284 = load i64, i64* %14, align 8
  %285 = call i32 @memcpy(i32* %282, i32* %283, i64 %284)
  br label %286

286:                                              ; preds = %139, %280, %269, %258, %247, %236, %235, %234, %233, %222, %216, %210, %204, %203, %192, %186, %175, %169, %151, %145, %144
  %287 = load i64, i64* %14, align 8
  %288 = load i32*, i32** %16, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 %287
  store i32* %289, i32** %16, align 8
  br label %290

290:                                              ; preds = %286
  %291 = load i64, i64* %15, align 8
  %292 = add i64 %291, 1
  store i64 %292, i64* %15, align 8
  br label %135

293:                                              ; preds = %135
  %294 = load %struct.ccuser*, %struct.ccuser** %7, align 8
  %295 = load i32, i32* @ATMRESP_NONE, align 4
  %296 = call i32 @cc_user_ok(%struct.ccuser* %294, i32 %295, i32* null, i32 0)
  br label %305

297:                                              ; preds = %46
  %298 = load %struct.ccuser*, %struct.ccuser** %7, align 8
  %299 = load i32, i32* @ATMERR_BAD_VALUE, align 4
  %300 = call i32 @cc_user_err(%struct.ccuser* %298, i32 %299)
  br label %305

301:                                              ; preds = %106, %95, %94, %93, %90, %82, %74, %67, %64, %55, %36
  %302 = load %struct.ccuser*, %struct.ccuser** %7, align 8
  %303 = load i32, i32* @ATMERR_RDONLY, align 4
  %304 = call i32 @cc_user_err(%struct.ccuser* %302, i32 %303)
  br label %305

305:                                              ; preds = %301, %297, %293, %129, %111
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @cc_user_err(%struct.ccuser*, i32) #1

declare dso_local i32 @cc_user_ok(%struct.ccuser*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
