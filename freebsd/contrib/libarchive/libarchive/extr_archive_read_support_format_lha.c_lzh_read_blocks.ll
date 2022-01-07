; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_read_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_read_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzh_stream = type { %struct.lzh_dec* }
%struct.lzh_dec = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i8*, i32, %struct.lzh_br }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32 }
%struct.lzh_br = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzh_stream*, i32)* @lzh_read_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_read_blocks(%struct.lzh_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzh_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lzh_dec*, align 8
  %7 = alloca %struct.lzh_br*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lzh_stream* %0, %struct.lzh_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %13 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %12, i32 0, i32 0
  %14 = load %struct.lzh_dec*, %struct.lzh_dec** %13, align 8
  store %struct.lzh_dec* %14, %struct.lzh_dec** %6, align 8
  %15 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %16 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %15, i32 0, i32 12
  store %struct.lzh_br* %16, %struct.lzh_br** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %630, %2
  %18 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %19 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %630 [
    i32 136, label %21
    i32 131, label %79
    i32 130, label %113
    i32 129, label %204
    i32 128, label %275
    i32 135, label %324
    i32 134, label %358
    i32 133, label %422
    i32 132, label %612
    i32 137, label %629
  ]

21:                                               ; preds = %17
  %22 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %23 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %24 = call i32 @lzh_br_read_ahead_0(%struct.lzh_stream* %22, %struct.lzh_br* %23, i32 16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %635

31:                                               ; preds = %26
  %32 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %33 = call i32 @lzh_br_has(%struct.lzh_br* %32, i32 8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %631

36:                                               ; preds = %31
  %37 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %38 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %43 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %44 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @lzh_emit_window(%struct.lzh_stream* %42, i32 %45)
  %47 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %48 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %47, i32 0, i32 11
  store i32 0, i32* %48, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %635

50:                                               ; preds = %36
  %51 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %51, i32* %3, align 4
  br label %635

52:                                               ; preds = %21
  %53 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %54 = call i8* @lzh_br_bits(%struct.lzh_br* %53, i32 16)
  %55 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %56 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %55, i32 0, i32 10
  store i8* %54, i8** %56, align 8
  %57 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %58 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %57, i32 0, i32 10
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %631

62:                                               ; preds = %52
  %63 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %64 = call i32 @lzh_br_consume(%struct.lzh_br* %63, i32 16)
  %65 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %66 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %69 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %72 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %75 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %78 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %17, %62
  %80 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %81 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %82 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %83 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %80, %struct.lzh_br* %81, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %631

92:                                               ; preds = %88
  %93 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %94 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %93, i32 0, i32 0
  store i32 131, i32* %94, align 8
  %95 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %635

96:                                               ; preds = %79
  %97 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %98 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %99 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @lzh_br_bits(%struct.lzh_br* %97, i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %105 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %108 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %109 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @lzh_br_consume(%struct.lzh_br* %107, i32 %111)
  br label %113

113:                                              ; preds = %17, %96
  %114 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %115 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %166

119:                                              ; preds = %113
  %120 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %121 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %122 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %123 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %120, %struct.lzh_br* %121, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %631

132:                                              ; preds = %128
  %133 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %134 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %133, i32 0, i32 0
  store i32 130, i32* %134, align 8
  %135 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %635

136:                                              ; preds = %119
  %137 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %138 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %137, i32 0, i32 8
  %139 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %140 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %141 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %140, i32 0, i32 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @lzh_br_bits(%struct.lzh_br* %139, i32 %143)
  %145 = call i32 @lzh_make_fake_table(%struct.TYPE_4__* %138, i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %136
  br label %631

148:                                              ; preds = %136
  %149 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %150 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %151 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @lzh_br_consume(%struct.lzh_br* %149, i32 %153)
  %155 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %156 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %148
  %160 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %161 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %160, i32 0, i32 0
  store i32 137, i32* %161, align 8
  br label %165

162:                                              ; preds = %148
  %163 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %164 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %163, i32 0, i32 0
  store i32 135, i32* %164, align 8
  br label %165

165:                                              ; preds = %162, %159
  br label %630

166:                                              ; preds = %113
  %167 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %168 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %167, i32 0, i32 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %172 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %171, i32 0, i32 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %170, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  br label %631

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %180 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %179, i32 0, i32 4
  store i32 0, i32* %180, align 8
  %181 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %182 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %181, i32 0, i32 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @memset(i32* %184, i32 0, i32 8)
  %186 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %187 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %189, 3
  br i1 %190, label %200, label %191

191:                                              ; preds = %178
  %192 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %193 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %197 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %195, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %191, %178
  %201 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %202 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %201, i32 0, i32 0
  store i32 128, i32* %202, align 8
  br label %630

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %17, %203
  %205 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %206 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %207 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i8* @lzh_read_pt_bitlen(%struct.lzh_stream* %205, i32 %208, i32 3)
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %212 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  %213 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %214 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %230

217:                                              ; preds = %204
  %218 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %219 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %217
  br label %631

226:                                              ; preds = %222
  %227 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %228 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %227, i32 0, i32 0
  store i32 129, i32* %228, align 8
  %229 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %229, i32* %3, align 4
  br label %635

230:                                              ; preds = %204
  %231 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %232 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %233 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %231, %struct.lzh_br* %232, i32 2)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %243, label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  br label %631

239:                                              ; preds = %235
  %240 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %241 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %240, i32 0, i32 0
  store i32 129, i32* %241, align 8
  %242 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %242, i32* %3, align 4
  br label %635

243:                                              ; preds = %230
  %244 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %245 = call i8* @lzh_br_bits(%struct.lzh_br* %244, i32 2)
  %246 = ptrtoint i8* %245 to i32
  store i32 %246, i32* %8, align 4
  %247 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %248 = call i32 @lzh_br_consume(%struct.lzh_br* %247, i32 2)
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %251 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = sub nsw i32 %253, 3
  %255 = icmp sgt i32 %249, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %243
  br label %631

257:                                              ; preds = %243
  store i32 3, i32* %9, align 4
  br label %258

258:                                              ; preds = %262, %257
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %8, align 4
  %261 = icmp sgt i32 %259, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %264 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  store i32 0, i32* %270, align 4
  br label %258

271:                                              ; preds = %258
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %274 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  br label %275

275:                                              ; preds = %17, %271
  %276 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %277 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %278 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %281 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %280, i32 0, i32 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i8* @lzh_read_pt_bitlen(%struct.lzh_stream* %276, i32 %279, i32 %283)
  %285 = ptrtoint i8* %284 to i32
  %286 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %287 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 8
  %288 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %289 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %292 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %291, i32 0, i32 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = icmp slt i32 %290, %294
  br i1 %295, label %296, label %309

296:                                              ; preds = %275
  %297 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %298 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %296
  %302 = load i32, i32* %5, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301, %296
  br label %631

305:                                              ; preds = %301
  %306 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %307 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %306, i32 0, i32 0
  store i32 128, i32* %307, align 8
  %308 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %308, i32* %3, align 4
  br label %635

309:                                              ; preds = %275
  %310 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %311 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %310, i32 0, i32 8
  %312 = call i32 @lzh_make_huffman_table(%struct.TYPE_4__* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  br label %631

315:                                              ; preds = %309
  %316 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %317 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  %321 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %322 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %321, i32 0, i32 0
  store i32 137, i32* %322, align 8
  br label %630

323:                                              ; preds = %315
  br label %324

324:                                              ; preds = %17, %323
  %325 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %326 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %327 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %328 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %327, i32 0, i32 9
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %325, %struct.lzh_br* %326, i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %324
  %334 = load i32, i32* %5, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %631

337:                                              ; preds = %333
  %338 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %339 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %338, i32 0, i32 0
  store i32 135, i32* %339, align 8
  %340 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %340, i32* %3, align 4
  br label %635

341:                                              ; preds = %324
  %342 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %343 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %344 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i8* @lzh_br_bits(%struct.lzh_br* %342, i32 %346)
  %348 = ptrtoint i8* %347 to i32
  %349 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %350 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %349, i32 0, i32 9
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 2
  store i32 %348, i32* %351, align 8
  %352 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %353 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %354 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @lzh_br_consume(%struct.lzh_br* %352, i32 %356)
  br label %358

358:                                              ; preds = %17, %341
  %359 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %360 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %359, i32 0, i32 9
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %402

364:                                              ; preds = %358
  %365 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %366 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %367 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %368 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %367, i32 0, i32 9
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %365, %struct.lzh_br* %366, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %381, label %373

373:                                              ; preds = %364
  %374 = load i32, i32* %5, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  br label %631

377:                                              ; preds = %373
  %378 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %379 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %378, i32 0, i32 0
  store i32 134, i32* %379, align 8
  %380 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %380, i32* %3, align 4
  br label %635

381:                                              ; preds = %364
  %382 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %383 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %382, i32 0, i32 9
  %384 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %385 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %386 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %385, i32 0, i32 9
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = call i8* @lzh_br_bits(%struct.lzh_br* %384, i32 %388)
  %390 = call i32 @lzh_make_fake_table(%struct.TYPE_4__* %383, i8* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %381
  br label %631

393:                                              ; preds = %381
  %394 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %395 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %396 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %395, i32 0, i32 9
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @lzh_br_consume(%struct.lzh_br* %394, i32 %398)
  %400 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %401 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %400, i32 0, i32 0
  store i32 132, i32* %401, align 8
  br label %630

402:                                              ; preds = %358
  %403 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %404 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %403, i32 0, i32 9
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %408 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %407, i32 0, i32 9
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp sgt i32 %406, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %402
  br label %631

413:                                              ; preds = %402
  br label %414

414:                                              ; preds = %413
  %415 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %416 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %415, i32 0, i32 4
  store i32 0, i32* %416, align 8
  %417 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %418 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %417, i32 0, i32 9
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 3
  %420 = load i32*, i32** %419, align 8
  %421 = call i32 @memset(i32* %420, i32 0, i32 8)
  br label %422

422:                                              ; preds = %17, %414
  %423 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %424 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  store i32 %425, i32* %9, align 4
  br label %426

426:                                              ; preds = %597, %422
  %427 = load i32, i32* %9, align 4
  %428 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %429 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %428, i32 0, i32 9
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = icmp slt i32 %427, %431
  br i1 %432, label %433, label %598

433:                                              ; preds = %426
  %434 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %435 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %436 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %437 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %436, i32 0, i32 8
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %434, %struct.lzh_br* %435, i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %453, label %442

442:                                              ; preds = %433
  %443 = load i32, i32* %5, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %442
  br label %631

446:                                              ; preds = %442
  %447 = load i32, i32* %9, align 4
  %448 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %449 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %448, i32 0, i32 4
  store i32 %447, i32* %449, align 8
  %450 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %451 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %450, i32 0, i32 0
  store i32 133, i32* %451, align 8
  %452 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %452, i32* %3, align 4
  br label %635

453:                                              ; preds = %433
  %454 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %455 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %456 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %455, i32 0, i32 8
  %457 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  %459 = call i8* @lzh_br_bits(%struct.lzh_br* %454, i32 %458)
  %460 = ptrtoint i8* %459 to i32
  store i32 %460, i32* %10, align 4
  %461 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %462 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %461, i32 0, i32 8
  %463 = load i32, i32* %10, align 4
  %464 = call i32 @lzh_decode_huffman(%struct.TYPE_4__* %462, i32 %463)
  store i32 %464, i32* %8, align 4
  %465 = load i32, i32* %8, align 4
  %466 = icmp sgt i32 %465, 2
  br i1 %466, label %467, label %498

467:                                              ; preds = %453
  %468 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %469 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %470 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %469, i32 0, i32 8
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 4
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %8, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @lzh_br_consume(%struct.lzh_br* %468, i32 %476)
  %478 = load i32, i32* %8, align 4
  %479 = sub nsw i32 %478, 2
  store i32 %479, i32* %8, align 4
  %480 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %481 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %480, i32 0, i32 9
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 3
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %8, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %486, align 4
  %489 = load i32, i32* %8, align 4
  %490 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %491 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %490, i32 0, i32 9
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 4
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %9, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %9, align 4
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i32, i32* %493, i64 %496
  store i32 %489, i32* %497, align 4
  br label %597

498:                                              ; preds = %453
  %499 = load i32, i32* %8, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %520

501:                                              ; preds = %498
  %502 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %503 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %504 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %503, i32 0, i32 8
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 4
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %8, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @lzh_br_consume(%struct.lzh_br* %502, i32 %510)
  %512 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %513 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %512, i32 0, i32 9
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 4
  %515 = load i32*, i32** %514, align 8
  %516 = load i32, i32* %9, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %9, align 4
  %518 = sext i32 %516 to i64
  %519 = getelementptr inbounds i32, i32* %515, i64 %518
  store i32 0, i32* %519, align 4
  br label %596

520:                                              ; preds = %498
  %521 = load i32, i32* %8, align 4
  %522 = icmp eq i32 %521, 1
  %523 = zext i1 %522 to i64
  %524 = select i1 %522, i32 4, i32 9
  store i32 %524, i32* %11, align 4
  %525 = load %struct.lzh_stream*, %struct.lzh_stream** %4, align 8
  %526 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %527 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %528 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %527, i32 0, i32 8
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 4
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %8, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %11, align 4
  %536 = add nsw i32 %534, %535
  %537 = call i32 @lzh_br_read_ahead(%struct.lzh_stream* %525, %struct.lzh_br* %526, i32 %536)
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %550, label %539

539:                                              ; preds = %520
  %540 = load i32, i32* %5, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %539
  br label %631

543:                                              ; preds = %539
  %544 = load i32, i32* %9, align 4
  %545 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %546 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %545, i32 0, i32 4
  store i32 %544, i32* %546, align 8
  %547 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %548 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %547, i32 0, i32 0
  store i32 133, i32* %548, align 8
  %549 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %549, i32* %3, align 4
  br label %635

550:                                              ; preds = %520
  %551 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %552 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %553 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %552, i32 0, i32 8
  %554 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %553, i32 0, i32 4
  %555 = load i32*, i32** %554, align 8
  %556 = load i32, i32* %8, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %555, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @lzh_br_consume(%struct.lzh_br* %551, i32 %559)
  %561 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %562 = load i32, i32* %11, align 4
  %563 = call i8* @lzh_br_bits(%struct.lzh_br* %561, i32 %562)
  %564 = ptrtoint i8* %563 to i32
  store i32 %564, i32* %8, align 4
  %565 = load %struct.lzh_br*, %struct.lzh_br** %7, align 8
  %566 = load i32, i32* %11, align 4
  %567 = call i32 @lzh_br_consume(%struct.lzh_br* %565, i32 %566)
  %568 = load i32, i32* %11, align 4
  %569 = icmp eq i32 %568, 4
  %570 = zext i1 %569 to i64
  %571 = select i1 %569, i32 3, i32 20
  %572 = load i32, i32* %8, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* %8, align 4
  %574 = load i32, i32* %9, align 4
  %575 = load i32, i32* %8, align 4
  %576 = add nsw i32 %574, %575
  %577 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %578 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %577, i32 0, i32 9
  %579 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = icmp sgt i32 %576, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %550
  br label %631

583:                                              ; preds = %550
  %584 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %585 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %584, i32 0, i32 9
  %586 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %585, i32 0, i32 4
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %9, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %8, align 4
  %592 = call i32 @memset(i32* %590, i32 0, i32 %591)
  %593 = load i32, i32* %8, align 4
  %594 = load i32, i32* %9, align 4
  %595 = add nsw i32 %594, %593
  store i32 %595, i32* %9, align 4
  br label %596

596:                                              ; preds = %583, %501
  br label %597

597:                                              ; preds = %596, %467
  br label %426

598:                                              ; preds = %426
  %599 = load i32, i32* %9, align 4
  %600 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %601 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %600, i32 0, i32 9
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i32 0, i32 2
  %603 = load i32, i32* %602, align 8
  %604 = icmp sgt i32 %599, %603
  br i1 %604, label %610, label %605

605:                                              ; preds = %598
  %606 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %607 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %606, i32 0, i32 9
  %608 = call i32 @lzh_make_huffman_table(%struct.TYPE_4__* %607)
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %611, label %610

610:                                              ; preds = %605, %598
  br label %631

611:                                              ; preds = %605
  br label %612

612:                                              ; preds = %17, %611
  %613 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %614 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %613, i32 0, i32 5
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %617 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %616, i32 0, i32 8
  %618 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %617, i32 0, i32 0
  store i32 %615, i32* %618, align 8
  %619 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %620 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %619, i32 0, i32 6
  %621 = load i32, i32* %620, align 8
  %622 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %623 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %622, i32 0, i32 8
  %624 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %623, i32 0, i32 1
  store i32 %621, i32* %624, align 4
  %625 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %626 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %625, i32 0, i32 3
  store i32 1, i32* %626, align 4
  %627 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %628 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %627, i32 0, i32 0
  store i32 131, i32* %628, align 8
  br label %630

629:                                              ; preds = %17
  store i32 100, i32* %3, align 4
  br label %635

630:                                              ; preds = %17, %612, %393, %320, %200, %165
  br label %17

631:                                              ; preds = %610, %582, %542, %445, %412, %392, %376, %336, %314, %304, %256, %238, %225, %176, %147, %131, %91, %61, %35
  %632 = load i32, i32* @ARCHIVE_FAILED, align 4
  %633 = load %struct.lzh_dec*, %struct.lzh_dec** %6, align 8
  %634 = getelementptr inbounds %struct.lzh_dec, %struct.lzh_dec* %633, i32 0, i32 7
  store i32 %632, i32* %634, align 4
  store i32 %632, i32* %3, align 4
  br label %635

635:                                              ; preds = %631, %629, %543, %446, %377, %337, %305, %239, %226, %132, %92, %50, %41, %29
  %636 = load i32, i32* %3, align 4
  ret i32 %636
}

declare dso_local i32 @lzh_br_read_ahead_0(%struct.lzh_stream*, %struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_br_has(%struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_emit_window(%struct.lzh_stream*, i32) #1

declare dso_local i8* @lzh_br_bits(%struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_br_consume(%struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_br_read_ahead(%struct.lzh_stream*, %struct.lzh_br*, i32) #1

declare dso_local i32 @lzh_make_fake_table(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @lzh_read_pt_bitlen(%struct.lzh_stream*, i32, i32) #1

declare dso_local i32 @lzh_make_huffman_table(%struct.TYPE_4__*) #1

declare dso_local i32 @lzh_decode_huffman(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
