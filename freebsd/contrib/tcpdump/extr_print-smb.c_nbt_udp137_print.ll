; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_nbt_udp137_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_nbt_udp137_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@startbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"\0A>>> \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NBT UDP PACKET(137): %s\00", align 1
@opcode_str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"OPUNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"; %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"NEGATIVE\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"POSITIVE\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"; %s; %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"RESPONSE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"REQUEST\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"BROADCAST\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"UNICAST\00", align 1
@.str.11 = private unnamed_addr constant [111 x i8] c"\0ATrnID=0x%X\0AOpCode=%d\0ANmFlags=0x%X\0ARcode=%d\0AQueryCount=%d\0AAnswerCount=%d\0AAuthorityCount=%d\0AAddressRecCount=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Corrupt packet??\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"QuestionRecords:\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"|Name=[n1]\0AQuestionType=[rw]\0AQuestionClass=[rw]\0A#\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"\0AResourceRecords:\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Name=[n1]\0A#\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"ResType=[rw]\0AResClass=[rw]\0ATTL=[rD]\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"ResourceLength=%d\0AResourceData=\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"AddrType=[rw]\0AAddress=[b.b.b.b]\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"NumNames=[B]\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Name=[n2]\09#\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"<GROUP> \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"P \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"M \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"_ \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"<DEREGISTERING> \00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"<CONFLICT> \00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<ACTIVE> \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"<PERMANENT> \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"AdditionalData:\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nbt_udp137_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 10
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ND_TCHECK2(i32 %29, i32 2)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @EXTRACT_16BITS(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 7
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 3
  %41 = and i32 %40, 15
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 7
  %46 = shl i32 %45, 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = call i32 @EXTRACT_16BITS(i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = call i32 @EXTRACT_16BITS(i32* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = call i32 @EXTRACT_16BITS(i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 10
  %67 = call i32 @EXTRACT_16BITS(i32* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32*, i32** %5, align 8
  store i32* %68, i32** @startbuf, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ule i32* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %3
  br label %372

73:                                               ; preds = %3
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([6 x i8]* @.str to %struct.TYPE_6__*))
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = load i32, i32* @opcode_str, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @tok2str(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.TYPE_6__*
  %88 = call i32 @ND_PRINT(%struct.TYPE_6__* %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %97 = bitcast i8* %96 to %struct.TYPE_6__*
  %98 = call i32 @ND_PRINT(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %91, %81
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)
  %110 = bitcast i8* %109 to %struct.TYPE_6__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_6__* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %372

117:                                              ; preds = %99
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to %struct.TYPE_6__*
  %129 = call i32 @ND_PRINT(%struct.TYPE_6__* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 12
  store i32* %131, i32** %17, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp sgt i32 %137, 100
  br i1 %138, label %142, label %139

139:                                              ; preds = %117
  %140 = load i32, i32* %18, align 4
  %141 = icmp sgt i32 %140, 100
  br i1 %141, label %142, label %145

142:                                              ; preds = %139, %117
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([18 x i8]* @.str.12 to %struct.TYPE_6__*))
  br label %372

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %145
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([18 x i8]* @.str.13 to %struct.TYPE_6__*))
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %164, %148
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = call i32* @smb_fdata(%struct.TYPE_6__* %156, i32* %157, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32* %158, i32 0)
  store i32* %159, i32** %17, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %363

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %19, align 4
  br label %151

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %145
  %169 = load i32, i32* %18, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %353

171:                                              ; preds = %168
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([19 x i8]* @.str.15 to %struct.TYPE_6__*))
  store i32 0, i32* %19, align 4
  br label %174

174:                                              ; preds = %349, %171
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %18, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %352

178:                                              ; preds = %174
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = call i32* @smb_fdata(%struct.TYPE_6__* %179, i32* %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32* %181, i32 0)
  store i32* %182, i32** %17, align 8
  %183 = load i32*, i32** %17, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %363

186:                                              ; preds = %178
  %187 = load i32*, i32** %17, align 8
  %188 = call i32 @ND_TCHECK_16BITS(i32* %187)
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @EXTRACT_16BITS(i32* %189)
  store i32 %190, i32* %21, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %192 = load i32*, i32** %17, align 8
  %193 = load i32*, i32** %17, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 8
  %195 = call i32* @smb_fdata(%struct.TYPE_6__* %191, i32* %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32* %194, i32 0)
  store i32* %195, i32** %17, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %363

199:                                              ; preds = %186
  %200 = load i32*, i32** %17, align 8
  %201 = call i32 @ND_TCHECK_16BITS(i32* %200)
  %202 = load i32*, i32** %17, align 8
  %203 = call i32 @EXTRACT_16BITS(i32* %202)
  store i32 %203, i32* %20, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to %struct.TYPE_6__*
  %208 = call i32 @ND_PRINT(%struct.TYPE_6__* %207)
  %209 = load i32*, i32** %17, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  store i32* %210, i32** %17, align 8
  %211 = load i32, i32* %20, align 4
  %212 = icmp eq i32 %211, 6
  br i1 %212, label %213, label %225

213:                                              ; preds = %199
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = load i32*, i32** %17, align 8
  %216 = load i32*, i32** %17, align 8
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = call i32* @smb_fdata(%struct.TYPE_6__* %214, i32* %215, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32* %219, i32 0)
  store i32* %220, i32** %17, align 8
  %221 = load i32*, i32** %17, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %213
  br label %363

224:                                              ; preds = %213
  br label %348

225:                                              ; preds = %199
  %226 = load i32, i32* %21, align 4
  %227 = icmp eq i32 %226, 33
  br i1 %227, label %228, label %327

228:                                              ; preds = %225
  %229 = load i32*, i32** %17, align 8
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ND_TCHECK(i32 %230)
  %232 = load i32*, i32** %17, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %22, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = load i32*, i32** %17, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = call i32* @smb_fdata(%struct.TYPE_6__* %235, i32* %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32* %238, i32 0)
  store i32* %239, i32** %17, align 8
  %240 = load i32*, i32** %17, align 8
  %241 = icmp eq i32* %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %228
  br label %363

243:                                              ; preds = %228
  br label %244

244:                                              ; preds = %321, %243
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %22, align 4
  %247 = icmp ne i32 %245, 0
  br i1 %247, label %248, label %326

248:                                              ; preds = %244
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = load i32*, i32** %17, align 8
  %251 = load i32*, i32** %7, align 8
  %252 = call i32* @smb_fdata(%struct.TYPE_6__* %249, i32* %250, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32* %251, i32 0)
  store i32* %252, i32** %17, align 8
  %253 = load i32*, i32** %17, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %248
  br label %363

256:                                              ; preds = %248
  %257 = load i32*, i32** %17, align 8
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ND_TCHECK(i32 %258)
  %260 = load i32*, i32** %17, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 128
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %256
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([9 x i8]* @.str.22 to %struct.TYPE_6__*))
  br label %268

268:                                              ; preds = %265, %256
  %269 = load i32*, i32** %17, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 96
  switch i32 %272, label %285 [
    i32 0, label %273
    i32 32, label %276
    i32 64, label %279
    i32 96, label %282
  ]

273:                                              ; preds = %268
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %275 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.23 to %struct.TYPE_6__*))
  br label %285

276:                                              ; preds = %268
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %278 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.24 to %struct.TYPE_6__*))
  br label %285

279:                                              ; preds = %268
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %281 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.25 to %struct.TYPE_6__*))
  br label %285

282:                                              ; preds = %268
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %284 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([3 x i8]* @.str.26 to %struct.TYPE_6__*))
  br label %285

285:                                              ; preds = %268, %282, %279, %276, %273
  %286 = load i32*, i32** %17, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 16
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %293 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([17 x i8]* @.str.27 to %struct.TYPE_6__*))
  br label %294

294:                                              ; preds = %291, %285
  %295 = load i32*, i32** %17, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %302 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([12 x i8]* @.str.28 to %struct.TYPE_6__*))
  br label %303

303:                                              ; preds = %300, %294
  %304 = load i32*, i32** %17, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %303
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %311 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([10 x i8]* @.str.29 to %struct.TYPE_6__*))
  br label %312

312:                                              ; preds = %309, %303
  %313 = load i32*, i32** %17, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, 2
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %312
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %320 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([13 x i8]* @.str.30 to %struct.TYPE_6__*))
  br label %321

321:                                              ; preds = %318, %312
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %323 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.31 to %struct.TYPE_6__*))
  %324 = load i32*, i32** %17, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  store i32* %325, i32** %17, align 8
  br label %244

326:                                              ; preds = %244
  br label %347

327:                                              ; preds = %225
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %329 = load i32*, i32** %17, align 8
  %330 = load i32, i32* %20, align 4
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = load i32*, i32** %17, align 8
  %334 = load i32*, i32** %5, align 8
  %335 = ptrtoint i32* %333 to i64
  %336 = ptrtoint i32* %334 to i64
  %337 = sub i64 %335, %336
  %338 = sdiv exact i64 %337, 4
  %339 = sub nsw i64 %332, %338
  %340 = trunc i64 %339 to i32
  %341 = call i32 @min(i32 %330, i32 %340)
  %342 = call i32 @smb_print_data(%struct.TYPE_6__* %328, i32* %329, i32 %341)
  %343 = load i32, i32* %20, align 4
  %344 = load i32*, i32** %17, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32* %346, i32** %17, align 8
  br label %347

347:                                              ; preds = %327, %326
  br label %348

348:                                              ; preds = %347, %224
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %19, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %19, align 4
  br label %174

352:                                              ; preds = %174
  br label %353

353:                                              ; preds = %352, %168
  %354 = load i32*, i32** %17, align 8
  %355 = load i32*, i32** %7, align 8
  %356 = icmp ult i32* %354, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %353
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %359 = load i32*, i32** %17, align 8
  %360 = load i32*, i32** %7, align 8
  %361 = call i32* @smb_fdata(%struct.TYPE_6__* %358, i32* %359, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32* %360, i32 0)
  br label %362

362:                                              ; preds = %357, %353
  br label %363

363:                                              ; preds = %362, %255, %242, %223, %198, %185, %162
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %365 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.31 to %struct.TYPE_6__*))
  br label %372

366:                                              ; No predecessors!
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %368 = load i32, i32* @tstr, align 4
  %369 = sext i32 %368 to i64
  %370 = inttoptr i64 %369 to %struct.TYPE_6__*
  %371 = call i32 @ND_PRINT(%struct.TYPE_6__* %370)
  br label %372

372:                                              ; preds = %366, %363, %142, %116, %72
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32* @smb_fdata(%struct.TYPE_6__*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @ND_TCHECK_16BITS(i32*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @smb_print_data(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
