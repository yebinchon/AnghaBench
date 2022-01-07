; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_reply_info_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_reply_info_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.reply_info = type { i64, i32, i32, i32, i32, i32*, i32 }
%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@RETVAL_OK = common dso_local global i32 0, align 4
@RETVAL_TRUNC = common dso_local global i32 0, align 4
@RRSET_ROUNDROBIN = common dso_local global i64 0, align 8
@BIT_AA = common dso_local global i64 0, align 8
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@MINIMAL_RESPONSES = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@LDNS_SECTION_ADDITIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_info_encode(%struct.query_info* %0, %struct.reply_info* %1, i64 %2, i64 %3, i32* %4, i64 %5, %struct.regional* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.query_info*, align 8
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.regional*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.compress_tree_node*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.reply_info, align 8
  %27 = alloca i64, align 8
  store %struct.query_info* %0, %struct.query_info** %11, align 8
  store %struct.reply_info* %1, %struct.reply_info** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.regional* %6, %struct.regional** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store %struct.compress_tree_node* null, %struct.compress_tree_node** %23, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32 @sldns_buffer_clear(i32* %28)
  %30 = load i64, i64* %18, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i64 @sldns_buffer_limit(i32* %31)
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %9
  %35 = load i32*, i32** %15, align 8
  %36 = load i64, i64* %18, align 8
  %37 = call i32 @sldns_buffer_set_limit(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %9
  %39 = load i32*, i32** %15, align 8
  %40 = call i64 @sldns_buffer_remaining(i32* %39)
  %41 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %272

44:                                               ; preds = %38
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 (i32*, ...) @sldns_buffer_write(i32* %45, i64* %13, i64 8)
  %47 = load i32*, i32** %15, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @sldns_buffer_write_u16(i32* %47, i64 %48)
  %50 = load i32*, i32** %15, align 8
  %51 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %52 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @sldns_buffer_write_u16(i32* %50, i64 %53)
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 (i32*, ...) @sldns_buffer_write(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %57 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %58 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %44
  %62 = load %struct.query_info*, %struct.query_info** %11, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load %struct.regional*, %struct.regional** %17, align 8
  %65 = call i32 @insert_query(%struct.query_info* %62, %struct.compress_tree_node** %23, i32* %63, %struct.regional* %64)
  store i32 %65, i32* %24, align 4
  %66 = load i32, i32* @RETVAL_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i32, i32* %24, align 4
  %70 = load i32, i32* @RETVAL_TRUNC, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @sldns_buffer_write_u16_at(i32* %73, i32 4, i64 0)
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @sldns_buffer_begin(i32* %75)
  %77 = call i32 @LDNS_TC_SET(i32 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @sldns_buffer_flip(i32* %78)
  store i32 1, i32* %10, align 4
  br label %272

80:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %272

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i64, i64* @RRSET_ROUNDROBIN, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @ntohs(i64 %86)
  %88 = load i64, i64* %16, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* %16, align 8
  br label %94

92:                                               ; preds = %85
  %93 = call i64 @time(i32* null)
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = add i64 %87, %95
  br label %98

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %94
  %99 = phi i64 [ %96, %94 ], [ 0, %97 ]
  store i64 %99, i64* %25, align 8
  %100 = load %struct.query_info*, %struct.query_info** %11, align 8
  %101 = getelementptr inbounds %struct.query_info, %struct.query_info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = icmp ne %struct.TYPE_2__* %102, null
  br i1 %103, label %104, label %149

104:                                              ; preds = %98
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @BIT_AA, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %149

109:                                              ; preds = %104
  store i64 0, i64* %27, align 8
  %110 = call i32 @memset(%struct.reply_info* %26, i32 0, i32 40)
  %111 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %112 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 6
  store i32 %113, i32* %114, align 8
  %115 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 1
  store i32 1, i32* %115, align 8
  %116 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load %struct.query_info*, %struct.query_info** %11, align 8
  %118 = getelementptr inbounds %struct.query_info, %struct.query_info* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %26, i32 0, i32 5
  store i32* %120, i32** %121, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i64, i64* %27, align 8
  %124 = load %struct.regional*, %struct.regional** %17, align 8
  %125 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %126 = load %struct.query_info*, %struct.query_info** %11, align 8
  %127 = getelementptr inbounds %struct.query_info, %struct.query_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = load i64, i64* %25, align 8
  %131 = call i32 @insert_section(%struct.reply_info* %26, i32 1, i64* %20, i32* %122, i32 0, i64 %123, %struct.regional* %124, %struct.compress_tree_node** %23, i32 %125, i32 %128, i32 %129, i64 %130)
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* @RETVAL_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %109
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* @RETVAL_TRUNC, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32*, i32** %15, align 8
  %140 = load i64, i64* %20, align 8
  %141 = call i32 @sldns_buffer_write_u16_at(i32* %139, i32 6, i64 %140)
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @sldns_buffer_begin(i32* %142)
  %144 = call i32 @LDNS_TC_SET(i32 %143)
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 @sldns_buffer_flip(i32* %145)
  store i32 1, i32* %10, align 4
  br label %272

147:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  br label %272

148:                                              ; preds = %109
  br label %149

149:                                              ; preds = %148, %104, %98
  %150 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %151 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %152 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.regional*, %struct.regional** %17, align 8
  %157 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %158 = load %struct.query_info*, %struct.query_info** %11, align 8
  %159 = getelementptr inbounds %struct.query_info, %struct.query_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = load i64, i64* %25, align 8
  %163 = call i32 @insert_section(%struct.reply_info* %150, i32 %153, i64* %20, i32* %154, i32 0, i64 %155, %struct.regional* %156, %struct.compress_tree_node** %23, i32 %157, i32 %160, i32 %161, i64 %162)
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* @RETVAL_OK, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %149
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* @RETVAL_TRUNC, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32*, i32** %15, align 8
  %172 = load i64, i64* %20, align 8
  %173 = call i32 @sldns_buffer_write_u16_at(i32* %171, i32 6, i64 %172)
  %174 = load i32*, i32** %15, align 8
  %175 = call i32 @sldns_buffer_begin(i32* %174)
  %176 = call i32 @LDNS_TC_SET(i32 %175)
  %177 = load i32*, i32** %15, align 8
  %178 = call i32 @sldns_buffer_flip(i32* %177)
  store i32 1, i32* %10, align 4
  br label %272

179:                                              ; preds = %166
  store i32 0, i32* %10, align 4
  br label %272

180:                                              ; preds = %149
  %181 = load i32*, i32** %15, align 8
  %182 = load i64, i64* %20, align 8
  %183 = call i32 @sldns_buffer_write_u16_at(i32* %181, i32 6, i64 %182)
  %184 = load i64, i64* @MINIMAL_RESPONSES, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %188 = load %struct.query_info*, %struct.query_info** %11, align 8
  %189 = getelementptr inbounds %struct.query_info, %struct.query_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @positive_answer(%struct.reply_info* %187, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %269, label %193

193:                                              ; preds = %186, %180
  %194 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %195 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %196 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %200 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i64, i64* %16, align 8
  %203 = load %struct.regional*, %struct.regional** %17, align 8
  %204 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %205 = load %struct.query_info*, %struct.query_info** %11, align 8
  %206 = getelementptr inbounds %struct.query_info, %struct.query_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = load i64, i64* %25, align 8
  %210 = call i32 @insert_section(%struct.reply_info* %194, i32 %197, i64* %21, i32* %198, i32 %201, i64 %202, %struct.regional* %203, %struct.compress_tree_node** %23, i32 %204, i32 %207, i32 %208, i64 %209)
  store i32 %210, i32* %24, align 4
  %211 = load i32, i32* @RETVAL_OK, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %193
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* @RETVAL_TRUNC, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %213
  %218 = load i32*, i32** %15, align 8
  %219 = load i64, i64* %21, align 8
  %220 = call i32 @sldns_buffer_write_u16_at(i32* %218, i32 8, i64 %219)
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @sldns_buffer_begin(i32* %221)
  %223 = call i32 @LDNS_TC_SET(i32 %222)
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @sldns_buffer_flip(i32* %224)
  store i32 1, i32* %10, align 4
  br label %272

226:                                              ; preds = %213
  store i32 0, i32* %10, align 4
  br label %272

227:                                              ; preds = %193
  %228 = load i32*, i32** %15, align 8
  %229 = load i64, i64* %21, align 8
  %230 = call i32 @sldns_buffer_write_u16_at(i32* %228, i32 8, i64 %229)
  %231 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %232 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %233 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %15, align 8
  %236 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %237 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %240 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %238, %241
  %243 = load i64, i64* %16, align 8
  %244 = load %struct.regional*, %struct.regional** %17, align 8
  %245 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %246 = load %struct.query_info*, %struct.query_info** %11, align 8
  %247 = getelementptr inbounds %struct.query_info, %struct.query_info* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = load i64, i64* %25, align 8
  %251 = call i32 @insert_section(%struct.reply_info* %231, i32 %234, i64* %22, i32* %235, i32 %242, i64 %243, %struct.regional* %244, %struct.compress_tree_node** %23, i32 %245, i32 %248, i32 %249, i64 %250)
  store i32 %251, i32* %24, align 4
  %252 = load i32, i32* @RETVAL_OK, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %265

254:                                              ; preds = %227
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* @RETVAL_TRUNC, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %254
  %259 = load i32*, i32** %15, align 8
  %260 = load i64, i64* %22, align 8
  %261 = call i32 @sldns_buffer_write_u16_at(i32* %259, i32 10, i64 %260)
  %262 = load i32*, i32** %15, align 8
  %263 = call i32 @sldns_buffer_flip(i32* %262)
  store i32 1, i32* %10, align 4
  br label %272

264:                                              ; preds = %254
  store i32 0, i32* %10, align 4
  br label %272

265:                                              ; preds = %227
  %266 = load i32*, i32** %15, align 8
  %267 = load i64, i64* %22, align 8
  %268 = call i32 @sldns_buffer_write_u16_at(i32* %266, i32 10, i64 %267)
  br label %269

269:                                              ; preds = %265, %186
  %270 = load i32*, i32** %15, align 8
  %271 = call i32 @sldns_buffer_flip(i32* %270)
  store i32 1, i32* %10, align 4
  br label %272

272:                                              ; preds = %269, %264, %258, %226, %217, %179, %170, %147, %138, %80, %72, %43
  %273 = load i32, i32* %10, align 4
  ret i32 %273
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @sldns_buffer_set_limit(i32*, i64) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, ...) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i64) #1

declare dso_local i32 @insert_query(%struct.query_info*, %struct.compress_tree_node**, i32*, %struct.regional*) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32*, i32, i64) #1

declare dso_local i32 @LDNS_TC_SET(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @memset(%struct.reply_info*, i32, i32) #1

declare dso_local i32 @insert_section(%struct.reply_info*, i32, i64*, i32*, i32, i64, %struct.regional*, %struct.compress_tree_node**, i32, i32, i32, i64) #1

declare dso_local i64 @positive_answer(%struct.reply_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
