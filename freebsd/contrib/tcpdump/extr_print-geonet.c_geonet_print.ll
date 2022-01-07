; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-geonet.c_geonet_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-geonet.c_geonet_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.lladdr_info = type { i32, i32 (%struct.TYPE_8__*, i32)* }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"GeoNet \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"src:%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"BTP-A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"BTP-B\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Beacon\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"GeoUnicast\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"GeoAnycastCircle\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"GeoAnycastRect\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"GeoAnycastElipse\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"GeoBroadcastCircle\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"GeoBroadcastRect\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"GeoBroadcastElipse\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"TopoScopeBcast-SH\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"TopoScopeBcast-MH\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"LocService-Request\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"LocService-Reply\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"v:%d \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"NH:%d-%s \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"HT:%d-%d-%s \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"HopLim:%d \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Payload:%d \00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c" Malformed (small) \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"[|geonet]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geonet_print(%struct.TYPE_8__* %0, i32* %1, i32 %2, %struct.lladdr_info* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lladdr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.lladdr_info* %3, %struct.lladdr_info** %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i32 -1, i32* %17, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_8__*))
  %20 = load %struct.lladdr_info*, %struct.lladdr_info** %8, align 8
  %21 = icmp ne %struct.lladdr_info* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = load %struct.lladdr_info*, %struct.lladdr_info** %8, align 8
  %25 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.lladdr_info*, %struct.lladdr_info** %8, align 8
  %29 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %26(%struct.TYPE_8__* %27, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_8__*
  %34 = call i32 @ND_PRINT(%struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %22, %4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([3 x i8]* @.str.3 to %struct.TYPE_8__*))
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 36
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %222

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ND_TCHECK2(i32 %43, i32 8)
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  store i32 %52, i32* %10, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 4
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %12, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = call i32 @EXTRACT_16BITS(i32* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %72 [
    i32 0, label %68
    i32 1, label %69
    i32 2, label %70
    i32 3, label %71
  ]

68:                                               ; preds = %41
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %72

69:                                               ; preds = %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %72

70:                                               ; preds = %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  br label %72

71:                                               ; preds = %41
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %15, align 8
  br label %72

72:                                               ; preds = %41, %71, %70, %69, %68
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %99 [
    i32 0, label %74
    i32 1, label %75
    i32 2, label %76
    i32 3, label %77
    i32 4, label %83
    i32 5, label %89
    i32 6, label %94
  ]

74:                                               ; preds = %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %99

75:                                               ; preds = %72
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %99

76:                                               ; preds = %72
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  br label %99

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %82 [
    i32 0, label %79
    i32 1, label %80
    i32 2, label %81
  ]

79:                                               ; preds = %77
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  br label %82

80:                                               ; preds = %77
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8
  br label %82

81:                                               ; preds = %77
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %16, align 8
  br label %82

82:                                               ; preds = %77, %81, %80, %79
  br label %99

83:                                               ; preds = %72
  %84 = load i32, i32* %12, align 4
  switch i32 %84, label %88 [
    i32 0, label %85
    i32 1, label %86
    i32 2, label %87
  ]

85:                                               ; preds = %83
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  br label %88

86:                                               ; preds = %83
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %16, align 8
  br label %88

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8** %16, align 8
  br label %88

88:                                               ; preds = %83, %87, %86, %85
  br label %99

89:                                               ; preds = %72
  %90 = load i32, i32* %12, align 4
  switch i32 %90, label %93 [
    i32 0, label %91
    i32 1, label %92
  ]

91:                                               ; preds = %89
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %16, align 8
  br label %93

92:                                               ; preds = %89
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8** %16, align 8
  br label %93

93:                                               ; preds = %89, %92, %91
  br label %99

94:                                               ; preds = %72
  %95 = load i32, i32* %12, align 4
  switch i32 %95, label %98 [
    i32 0, label %96
    i32 1, label %97
  ]

96:                                               ; preds = %94
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8** %16, align 8
  br label %98

97:                                               ; preds = %94
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %16, align 8
  br label %98

98:                                               ; preds = %94, %97, %96
  br label %99

99:                                               ; preds = %72, %98, %93, %88, %82, %76, %75, %74
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_8__*
  %104 = call i32 @ND_PRINT(%struct.TYPE_8__* %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = bitcast i8* %107 to %struct.TYPE_8__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_8__* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = bitcast i8* %113 to %struct.TYPE_8__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_8__* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to %struct.TYPE_8__*
  %120 = call i32 @ND_PRINT(%struct.TYPE_8__* %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_8__*
  %125 = call i32 @ND_PRINT(%struct.TYPE_8__* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  %129 = call i32 @print_long_pos_vector(%struct.TYPE_8__* %126, i32* %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %99
  br label %225

132:                                              ; preds = %99
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %133, 36
  store i32 %134, i32* %7, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 36
  store i32* %136, i32** %6, align 8
  %137 = load i32, i32* %11, align 4
  switch i32 %137, label %163 [
    i32 0, label %138
    i32 1, label %139
    i32 2, label %140
    i32 3, label %141
    i32 4, label %147
    i32 5, label %153
    i32 6, label %158
  ]

138:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  br label %163

139:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  br label %163

140:                                              ; preds = %132
  br label %163

141:                                              ; preds = %132
  %142 = load i32, i32* %12, align 4
  switch i32 %142, label %146 [
    i32 0, label %143
    i32 1, label %144
    i32 2, label %145
  ]

143:                                              ; preds = %141
  br label %146

144:                                              ; preds = %141
  br label %146

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %141, %145, %144, %143
  br label %163

147:                                              ; preds = %132
  %148 = load i32, i32* %12, align 4
  switch i32 %148, label %152 [
    i32 0, label %149
    i32 1, label %150
    i32 2, label %151
  ]

149:                                              ; preds = %147
  br label %152

150:                                              ; preds = %147
  br label %152

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %147, %151, %150, %149
  br label %163

153:                                              ; preds = %132
  %154 = load i32, i32* %12, align 4
  switch i32 %154, label %157 [
    i32 0, label %155
    i32 1, label %156
  ]

155:                                              ; preds = %153
  store i32 0, i32* %17, align 4
  br label %157

156:                                              ; preds = %153
  store i32 32, i32* %17, align 4
  br label %157

157:                                              ; preds = %153, %156, %155
  br label %163

158:                                              ; preds = %132
  %159 = load i32, i32* %12, align 4
  switch i32 %159, label %162 [
    i32 0, label %160
    i32 1, label %161
  ]

160:                                              ; preds = %158
  br label %162

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %158, %161, %160
  br label %163

163:                                              ; preds = %132, %162, %157, %152, %146, %140, %139, %138
  %164 = load i32, i32* %17, align 4
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %212

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %17, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %222

171:                                              ; preds = %166
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @ND_TCHECK2(i32 %173, i32 %174)
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %7, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load i32*, i32** %6, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %6, align 8
  %183 = load i32, i32* %10, align 4
  switch i32 %183, label %211 [
    i32 0, label %184
    i32 1, label %185
    i32 2, label %185
    i32 3, label %210
  ]

184:                                              ; preds = %171
  br label %211

185:                                              ; preds = %171, %171
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %186, 4
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %222

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ND_TCHECK2(i32 %191, i32 4)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @print_btp(%struct.TYPE_8__* %193, i32* %194)
  %196 = load i32, i32* %7, align 4
  %197 = sub nsw i32 %196, 4
  store i32 %197, i32* %7, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  store i32* %199, i32** %6, align 8
  %200 = load i32, i32* %7, align 4
  %201 = icmp sge i32 %200, 2
  br i1 %201, label %202, label %209

202:                                              ; preds = %189
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ND_TCHECK2(i32 %204, i32 2)
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @print_btp_body(%struct.TYPE_8__* %206, i32* %207)
  br label %209

209:                                              ; preds = %202, %189
  br label %211

210:                                              ; preds = %171
  br label %211

211:                                              ; preds = %171, %210, %209, %184
  br label %212

212:                                              ; preds = %211, %163
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @ND_DEFAULTPRINT(i32* %218, i32 %219)
  br label %221

221:                                              ; preds = %217, %212
  br label %228

222:                                              ; preds = %188, %170, %40
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([20 x i8]* @.str.25 to %struct.TYPE_8__*))
  br label %228

225:                                              ; preds = %131
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %227 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([10 x i8]* @.str.26 to %struct.TYPE_8__*))
  br label %228

228:                                              ; preds = %225, %222, %221
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @print_long_pos_vector(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @print_btp(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @print_btp_body(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
