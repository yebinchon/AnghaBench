; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-llc.c_snap_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-llc.c_snap_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.lladdr_info = type { i32, i32 (%struct.TYPE_15__*, i32)* }

@.str = private unnamed_addr constant [45 x i8] c"oui %s (0x%06x), %s %s (0x%04x), length %u: \00", align 1
@oui_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ethertype\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@ETHERTYPE_ATALK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%s > %s \00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"SNAP, ethertype %s (0x%04x), length %u: \00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"SNAP, oui %s (0x%06x), pid %s (0x%04x), length %u: \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"[|snap]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snap_print(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32 %3, %struct.lladdr_info* %4, %struct.lladdr_info* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lladdr_info*, align 8
  %14 = alloca %struct.lladdr_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.lladdr_info* %4, %struct.lladdr_info** %13, align 8
  store %struct.lladdr_info* %5, %struct.lladdr_info** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ND_TCHECK2(i32 %20, i32 5)
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %7
  br label %263

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @EXTRACT_24BITS(i32* %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = call i32 @EXTRACT_16BITS(i32* %32)
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %28
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = load i32, i32* @oui_values, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @tok2str(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @oui_to_struct_tok(i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @tok2str(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 5
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_15__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_15__* %56)
  br label %58

58:                                               ; preds = %38, %28
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 5
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %63, 5
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %16, align 4
  switch i32 %65, label %201 [
    i32 142, label %66
    i32 143, label %66
    i32 145, label %80
    i32 144, label %99
    i32 141, label %129
  ]

66:                                               ; preds = %58, %58
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %73 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %74 = call i32 @ethertype_print(%struct.TYPE_15__* %67, i32 %68, i32* %69, i32 %70, i32 %71, %struct.lladdr_info* %72, %struct.lladdr_info* %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %8, align 4
  br label %266

79:                                               ; preds = %66
  br label %201

80:                                               ; preds = %58
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @ETHERTYPE_ATALK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %91 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %92 = call i32 @ethertype_print(%struct.TYPE_15__* %85, i32 %86, i32* %87, i32 %88, i32 %89, %struct.lladdr_info* %90, %struct.lladdr_info* %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %8, align 4
  br label %266

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %80
  br label %201

99:                                               ; preds = %58
  %100 = load i32, i32* %17, align 4
  switch i32 %100, label %127 [
    i32 140, label %101
    i32 139, label %107
    i32 137, label %112
    i32 135, label %117
    i32 138, label %122
    i32 136, label %122
  ]

101:                                              ; preds = %99
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @cdp_print(%struct.TYPE_15__* %102, i32* %103, i32 %104, i32 %105)
  store i32 1, i32* %8, align 4
  br label %266

107:                                              ; preds = %99
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @dtp_print(%struct.TYPE_15__* %108, i32* %109, i32 %110)
  store i32 1, i32* %8, align 4
  br label %266

112:                                              ; preds = %99
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @udld_print(%struct.TYPE_15__* %113, i32* %114, i32 %115)
  store i32 1, i32* %8, align 4
  br label %266

117:                                              ; preds = %99
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @vtp_print(%struct.TYPE_15__* %118, i32* %119, i32 %120)
  store i32 1, i32* %8, align 4
  br label %266

122:                                              ; preds = %99, %99
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @stp_print(%struct.TYPE_15__* %123, i32* %124, i32 %125)
  store i32 1, i32* %8, align 4
  br label %266

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127
  br label %201

129:                                              ; preds = %58
  %130 = load i32, i32* %17, align 4
  switch i32 %130, label %200 [
    i32 131, label %131
    i32 130, label %131
    i32 134, label %151
    i32 133, label %151
    i32 129, label %171
    i32 128, label %171
    i32 132, label %195
  ]

131:                                              ; preds = %129, %129
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @ND_TCHECK2(i32 %133, i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %10, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @ether_print(%struct.TYPE_15__* %146, i32* %147, i32 %148, i32 %149, i32* null, i32* null)
  store i32 1, i32* %8, align 4
  br label %266

151:                                              ; preds = %129, %129
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @ND_TCHECK2(i32 %153, i32 %154)
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %12, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %11, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %10, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @token_print(%struct.TYPE_15__* %166, i32* %167, i32 %168, i32 %169)
  store i32 1, i32* %8, align 4
  br label %266

171:                                              ; preds = %129, %129
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  %176 = call i32 @ND_TCHECK2(i32 %173, i32 %175)
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %12, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* %11, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, 1
  %187 = load i32*, i32** %10, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %10, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @fddi_print(%struct.TYPE_15__* %190, i32* %191, i32 %192, i32 %193)
  store i32 1, i32* %8, align 4
  br label %266

195:                                              ; preds = %129
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @stp_print(%struct.TYPE_15__* %196, i32* %197, i32 %198)
  store i32 1, i32* %8, align 4
  br label %266

200:                                              ; preds = %129
  br label %201

201:                                              ; preds = %200, %58, %128, %98, %79
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %262, label %206

206:                                              ; preds = %201
  %207 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %208 = icmp ne %struct.lladdr_info* %207, null
  br i1 %208, label %209, label %233

209:                                              ; preds = %206
  %210 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %211 = icmp ne %struct.lladdr_info* %210, null
  br i1 %211, label %212, label %233

212:                                              ; preds = %209
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %214 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %215 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %214, i32 0, i32 1
  %216 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %218 = load %struct.lladdr_info*, %struct.lladdr_info** %13, align 8
  %219 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %216(%struct.TYPE_15__* %217, i32 %220)
  %222 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %223 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %222, i32 0, i32 1
  %224 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %223, align 8
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %226 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %227 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 %224(%struct.TYPE_15__* %225, i32 %228)
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to %struct.TYPE_15__*
  %232 = call i32 @ND_PRINT(%struct.TYPE_15__* %231)
  br label %233

233:                                              ; preds = %212, %209, %206
  %234 = load i32, i32* %16, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %238 = load i32, i32* @ethertype_values, align 4
  %239 = load i32, i32* %17, align 4
  %240 = call i32 @tok2str(i32 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to %struct.TYPE_15__*
  %245 = call i32 @ND_PRINT(%struct.TYPE_15__* %244)
  br label %261

246:                                              ; preds = %233
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %248 = load i32, i32* @oui_values, align 4
  %249 = load i32, i32* %16, align 4
  %250 = call i32 @tok2str(i32 %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* %16, align 4
  %253 = call i32 @oui_to_struct_tok(i32 %252)
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @tok2str(i32 %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to %struct.TYPE_15__*
  %260 = call i32 @ND_PRINT(%struct.TYPE_15__* %259)
  br label %261

261:                                              ; preds = %246, %236
  br label %262

262:                                              ; preds = %261, %201
  store i32 0, i32* %8, align 4
  br label %266

263:                                              ; preds = %27
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %265 = call i32 @ND_PRINT(%struct.TYPE_15__* bitcast ([8 x i8]* @.str.7 to %struct.TYPE_15__*))
  store i32 1, i32* %8, align 4
  br label %266

266:                                              ; preds = %263, %262, %195, %171, %151, %131, %122, %117, %112, %107, %101, %95, %77
  %267 = load i32, i32* %8, align 4
  ret i32 %267
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_15__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @oui_to_struct_tok(i32) #1

declare dso_local i32 @ethertype_print(%struct.TYPE_15__*, i32, i32*, i32, i32, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @cdp_print(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @dtp_print(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @udld_print(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @vtp_print(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @stp_print(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ether_print(%struct.TYPE_15__*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @token_print(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @fddi_print(%struct.TYPE_15__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
