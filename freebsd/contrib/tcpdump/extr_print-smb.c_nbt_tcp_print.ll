; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_nbt_tcp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_nbt_tcp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

@startbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c" NBT Session Packet: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Session Message\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Session Request\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Session Granted\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Session Reject, \00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Not listening on called name\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Not listening for calling name\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Called name not present\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Called name present, but insufficient resources\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Unspecified error 0x%X\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Session Keepalive\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Unknown packet type [rB]\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\0A>>> NBT Session Packet\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"[P1]NBT Session Message\0AFlags=[B]\0ALength=[rd]\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\FFSMB\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"WARNING: Packet is continued in later TCP segments\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"WARNING: Short packet. Try increasing the snap length by %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Session packet:(raw data or continuation?)\0A\00", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"[P1]NBT Session Request\0AFlags=[B]\0ALength=[rd]\0ADestination=[n1]\0ASource=[n1]\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"[P1]NBT Session Granted\0AFlags=[B]\0ALength=[rd]\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"[P1]NBT SessionReject\0AFlags=[B]\0ALength=[rd]\0AReason=[B]\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Not listening on called name\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Not listening for calling name\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Called name not present\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"Called name present, but insufficient resources\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Unspecified error 0x%X\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"[P1]NBT Session Keepalive\0AFlags=[B]\0ALength=[rd]\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"NBT - Unknown packet type\0AType=[B]\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nbt_tcp_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %247

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %247

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %247

37:                                               ; preds = %24
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = call i32 @EXTRACT_16BITS(i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  store i32* %52, i32** @startbuf, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %117

57:                                               ; preds = %37
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([22 x i8]* @.str to %struct.TYPE_6__*))
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %111 [
    i32 0, label %61
    i32 129, label %64
    i32 130, label %67
    i32 131, label %70
    i32 133, label %108
  ]

61:                                               ; preds = %57
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([16 x i8]* @.str.1 to %struct.TYPE_6__*))
  br label %116

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([16 x i8]* @.str.2 to %struct.TYPE_6__*))
  br label %116

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([16 x i8]* @.str.3 to %struct.TYPE_6__*))
  br label %116

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %247

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %247

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %247

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([17 x i8]* @.str.4 to %struct.TYPE_6__*))
  %88 = load i32, i32* %11, align 4
  switch i32 %88, label %101 [
    i32 128, label %89
    i32 129, label %92
    i32 130, label %95
    i32 131, label %98
  ]

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([29 x i8]* @.str.5 to %struct.TYPE_6__*))
  br label %107

92:                                               ; preds = %82
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([31 x i8]* @.str.6 to %struct.TYPE_6__*))
  br label %107

95:                                               ; preds = %82
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([24 x i8]* @.str.7 to %struct.TYPE_6__*))
  br label %107

98:                                               ; preds = %82
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([48 x i8]* @.str.8 to %struct.TYPE_6__*))
  br label %107

101:                                              ; preds = %82
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_6__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_6__* %105)
  br label %107

107:                                              ; preds = %101, %98, %95, %92, %89
  br label %116

108:                                              ; preds = %57
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([18 x i8]* @.str.10 to %struct.TYPE_6__*))
  br label %116

111:                                              ; preds = %57
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32* @smb_fdata(%struct.TYPE_6__* %112, i32* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32* %114, i32 0)
  store i32* %115, i32** %5, align 8
  br label %116

116:                                              ; preds = %111, %108, %107, %67, %64, %61
  br label %246

117:                                              ; preds = %37
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([25 x i8]* @.str.12 to %struct.TYPE_6__*))
  %120 = load i32, i32* %8, align 4
  switch i32 %120, label %238 [
    i32 0, label %121
    i32 129, label %183
    i32 130, label %188
    i32 131, label %193
    i32 133, label %233
  ]

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = call i32* @smb_fdata(%struct.TYPE_6__* %122, i32* %123, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32* %125, i32 0)
  store i32* %126, i32** %5, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %243

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  %132 = icmp sge i32 %131, 4
  br i1 %132, label %133, label %179

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 4
  br i1 %135, label %136, label %179

136:                                              ; preds = %133
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @memcmp(i32* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([52 x i8]* @.str.15 to %struct.TYPE_6__*))
  br label %159

151:                                              ; preds = %144
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to %struct.TYPE_6__*
  %158 = call i32 @ND_PRINT(%struct.TYPE_6__* %157)
  br label %159

159:                                              ; preds = %151, %148
  br label %160

160:                                              ; preds = %159, %140
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = load i32*, i32** %5, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = icmp ugt i32* %163, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  br label %176

174:                                              ; preds = %160
  %175 = load i32*, i32** %10, align 8
  br label %176

176:                                              ; preds = %174, %169
  %177 = phi i32* [ %173, %169 ], [ %175, %174 ]
  %178 = call i32 @print_smb(%struct.TYPE_6__* %161, i32* %162, i32* %177)
  br label %182

179:                                              ; preds = %136, %133, %130
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([44 x i8]* @.str.17 to %struct.TYPE_6__*))
  br label %182

182:                                              ; preds = %179, %176
  br label %243

183:                                              ; preds = %117
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = call i32* @smb_fdata(%struct.TYPE_6__* %184, i32* %185, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.18, i64 0, i64 0), i32* %186, i32 0)
  store i32* %187, i32** %5, align 8
  br label %243

188:                                              ; preds = %117
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = call i32* @smb_fdata(%struct.TYPE_6__* %189, i32* %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32* %191, i32 0)
  store i32* %192, i32** %5, align 8
  br label %243

193:                                              ; preds = %117
  %194 = load i32*, i32** %5, align 8
  store i32* %194, i32** %12, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = call i32* @smb_fdata(%struct.TYPE_6__* %195, i32* %196, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32* %197, i32 0)
  store i32* %198, i32** %5, align 8
  %199 = load i32*, i32** %5, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %243

202:                                              ; preds = %193
  %203 = load i32, i32* %9, align 4
  %204 = icmp sge i32 %203, 1
  br i1 %204, label %205, label %232

205:                                              ; preds = %202
  %206 = load i32, i32* %7, align 4
  %207 = icmp sge i32 %206, 1
  br i1 %207, label %208, label %232

208:                                              ; preds = %205
  %209 = load i32*, i32** %12, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  switch i32 %212, label %225 [
    i32 128, label %213
    i32 129, label %216
    i32 130, label %219
    i32 131, label %222
  ]

213:                                              ; preds = %208
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([30 x i8]* @.str.21 to %struct.TYPE_6__*))
  br label %231

216:                                              ; preds = %208
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([32 x i8]* @.str.22 to %struct.TYPE_6__*))
  br label %231

219:                                              ; preds = %208
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([25 x i8]* @.str.23 to %struct.TYPE_6__*))
  br label %231

222:                                              ; preds = %208
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %224 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([49 x i8]* @.str.24 to %struct.TYPE_6__*))
  br label %231

225:                                              ; preds = %208
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to %struct.TYPE_6__*
  %230 = call i32 @ND_PRINT(%struct.TYPE_6__* %229)
  br label %231

231:                                              ; preds = %225, %222, %219, %216, %213
  br label %232

232:                                              ; preds = %231, %205, %202
  br label %243

233:                                              ; preds = %117
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = load i32*, i32** %10, align 8
  %237 = call i32* @smb_fdata(%struct.TYPE_6__* %234, i32* %235, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0), i32* %236, i32 0)
  store i32* %237, i32** %5, align 8
  br label %243

238:                                              ; preds = %117
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %240 = load i32*, i32** %5, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = call i32* @smb_fdata(%struct.TYPE_6__* %239, i32* %240, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32* %241, i32 0)
  store i32* %242, i32** %5, align 8
  br label %243

243:                                              ; preds = %238, %233, %232, %201, %188, %183, %182, %129
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.28 to %struct.TYPE_6__*))
  br label %246

246:                                              ; preds = %243, %116
  br label %253

247:                                              ; preds = %81, %77, %73, %36, %23, %16
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = load i32, i32* @tstr, align 4
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to %struct.TYPE_6__*
  %252 = call i32 @ND_PRINT(%struct.TYPE_6__* %251)
  br label %253

253:                                              ; preds = %247, %246
  ret void
}

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32* @smb_fdata(%struct.TYPE_6__*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @print_smb(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
