; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { %struct.ucl_stack*, i32, i8*, %struct.TYPE_2__* }
%struct.ucl_stack = type { i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.ucl_msgpack_parser = type { i32, i32, i8, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"unknown msgpack format: %x\00", align 1
@MSGPACK_FLAG_FIXED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"not enough data remain to read object's length: %u remain, %u needed\00", align 1
@MSGPACK_FLAG_TYPEVALUE = common dso_local global i32 0, align 4
@MSGPACK_FLAG_ASSOC = common dso_local global i32 0, align 4
@MSGPACK_FLAG_CONTAINER = common dso_local global i32 0, align 4
@UCL_OBJECT = common dso_local global i32 0, align 4
@CONSUME_RET = common dso_local global i32 0, align 4
@UCL_ARRAY = common dso_local global i32 0, align 4
@MSGPACK_FLAG_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"bad type for key: %u, expected string\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"too long or empty key\00", align 1
@GET_NEXT_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid state machine state\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"invalid non-empty container at the end\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"unfinished value at the end\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"invalid state machine finishing state: %d\00", align 1
@MSGPACK_CONTAINER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*)* @ucl_msgpack_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_consume(%struct.ucl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucl_stack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucl_msgpack_parser*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 8, i32* %9, align 4
  store %struct.ucl_msgpack_parser* null, %struct.ucl_msgpack_parser** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %16 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %4, align 8
  %20 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %21 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %405, %1
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %406

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %405 [
    i32 0, label %35
    i32 1, label %181
    i32 2, label %232
    i32 6, label %283
    i32 3, label %318
    i32 4, label %353
    i32 7, label %399
    i32 5, label %399
    i32 8, label %401
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call %struct.ucl_msgpack_parser* @ucl_msgpack_get_parser_from_type(i8 zeroext %37)
  store %struct.ucl_msgpack_parser* %38, %struct.ucl_msgpack_parser** %10, align 8
  %39 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %40 = icmp eq %struct.ucl_msgpack_parser* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %43 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %42, i32 0, i32 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %2, align 4
  br label %524

48:                                               ; preds = %35
  %49 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %50 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MSGPACK_FLAG_FIXED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %106

55:                                               ; preds = %48
  %56 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %57 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %65 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 8
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, -1
  %69 = and i32 %63, %68
  store i32 %69, i32* %11, align 4
  br label %88

70:                                               ; preds = %55
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %73 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %78 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %77, i32 0, i32 1
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %81 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %78, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  store i32 0, i32* %2, align 4
  br label %524

84:                                               ; preds = %70
  %85 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %86 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %60
  %89 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %90 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MSGPACK_FLAG_TYPEVALUE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %4, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %98, %95
  br label %105

104:                                              ; preds = %88
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %161

106:                                              ; preds = %48
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %109 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %114 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %113, i32 0, i32 1
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %117 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %114, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118)
  store i32 0, i32* %2, align 4
  br label %524

120:                                              ; preds = %106
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %13, align 4
  %125 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %126 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %147 [
    i32 1, label %128
    i32 2, label %132
    i32 4, label %137
    i32 8, label %142
  ]

128:                                              ; preds = %120
  %129 = load i8*, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  store i32 %131, i32* %11, align 4
  br label %149

132:                                              ; preds = %120
  %133 = load i8*, i8** %4, align 8
  %134 = bitcast i8* %133 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @FROM_BE16(i32 %135)
  store i32 %136, i32* %11, align 4
  br label %149

137:                                              ; preds = %120
  %138 = load i8*, i8** %4, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @FROM_BE32(i32 %140)
  store i32 %141, i32* %11, align 4
  br label %149

142:                                              ; preds = %120
  %143 = load i8*, i8** %4, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @FROM_BE64(i32 %145)
  store i32 %146, i32* %11, align 4
  br label %149

147:                                              ; preds = %120
  %148 = call i32 @assert(i32 0)
  br label %149

149:                                              ; preds = %147, %142, %137, %132, %128
  %150 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %151 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %4, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %4, align 8
  %156 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %157 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %149, %105
  %162 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %163 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @MSGPACK_FLAG_ASSOC, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i32 1, i32* %8, align 4
  br label %180

169:                                              ; preds = %161
  %170 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %171 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MSGPACK_FLAG_CONTAINER, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i32 2, i32* %8, align 4
  br label %179

177:                                              ; preds = %169
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %177, %176
  br label %180

180:                                              ; preds = %179, %168
  br label %405

181:                                              ; preds = %33
  %182 = load i32, i32* @UCL_OBJECT, align 4
  %183 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %184 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %183, i32 0, i32 3
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @ucl_object_new_full(i32 %182, i32 %187)
  %189 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %190 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %192 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %191, i32 0, i32 0
  %193 = load %struct.ucl_stack*, %struct.ucl_stack** %192, align 8
  %194 = icmp ne %struct.ucl_stack* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %181
  %196 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %200 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %196, i8* %197, i32 %198, i8* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %524

205:                                              ; preds = %195, %181
  %206 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %207 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call %struct.ucl_stack* @ucl_msgpack_get_container(%struct.ucl_parser* %206, %struct.ucl_msgpack_parser* %207, i32 %208)
  store %struct.ucl_stack* %209, %struct.ucl_stack** %7, align 8
  %210 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %211 = icmp eq %struct.ucl_stack* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  store i32 0, i32* %2, align 4
  br label %524

213:                                              ; preds = %205
  %214 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %215 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %214, i32 0, i32 3
  %216 = load i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)** %215, align 8
  %217 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %218 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %221 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = load i32, i32* %13, align 4
  %225 = call i32 %216(%struct.ucl_parser* %217, %struct.ucl_stack* %218, i32 %219, i32 %222, i8* %223, i32 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @CONSUME_RET, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %14, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %213
  store i32 0, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %231

230:                                              ; preds = %213
  store i32 5, i32* %8, align 4
  br label %231

231:                                              ; preds = %230, %229
  br label %405

232:                                              ; preds = %33
  %233 = load i32, i32* @UCL_ARRAY, align 4
  %234 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %235 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %234, i32 0, i32 3
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @ucl_object_new_full(i32 %233, i32 %238)
  %240 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %241 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  %242 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %243 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %242, i32 0, i32 0
  %244 = load %struct.ucl_stack*, %struct.ucl_stack** %243, align 8
  %245 = icmp ne %struct.ucl_stack* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %232
  %247 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %251 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %247, i8* %248, i32 %249, i8* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %246
  store i32 0, i32* %2, align 4
  br label %524

256:                                              ; preds = %246, %232
  %257 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %258 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %259 = load i32, i32* %11, align 4
  %260 = call %struct.ucl_stack* @ucl_msgpack_get_container(%struct.ucl_parser* %257, %struct.ucl_msgpack_parser* %258, i32 %259)
  store %struct.ucl_stack* %260, %struct.ucl_stack** %7, align 8
  %261 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %262 = icmp eq %struct.ucl_stack* %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  store i32 0, i32* %2, align 4
  br label %524

264:                                              ; preds = %256
  %265 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %266 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %265, i32 0, i32 3
  %267 = load i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)** %266, align 8
  %268 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %269 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %270 = load i32, i32* %11, align 4
  %271 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %272 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = load i8*, i8** %4, align 8
  %275 = load i32, i32* %13, align 4
  %276 = call i32 %267(%struct.ucl_parser* %268, %struct.ucl_stack* %269, i32 %270, i32 %273, i8* %274, i32 %275)
  store i32 %276, i32* %12, align 4
  %277 = load i32, i32* @CONSUME_RET, align 4
  %278 = load i32, i32* %11, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %264
  store i32 0, i32* %8, align 4
  store i32 6, i32* %9, align 4
  br label %282

281:                                              ; preds = %264
  store i32 7, i32* %8, align 4
  br label %282

282:                                              ; preds = %281, %280
  br label %405

283:                                              ; preds = %33
  %284 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %285 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %284, i32 0, i32 0
  %286 = load %struct.ucl_stack*, %struct.ucl_stack** %285, align 8
  store %struct.ucl_stack* %286, %struct.ucl_stack** %7, align 8
  %287 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %288 = icmp eq %struct.ucl_stack* %287, null
  br i1 %288, label %289, label %290

289:                                              ; preds = %283
  store i32 0, i32* %2, align 4
  br label %524

290:                                              ; preds = %283
  %291 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %292 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %291, i32 0, i32 3
  %293 = load i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)** %292, align 8
  %294 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %295 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %296 = load i32, i32* %11, align 4
  %297 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %298 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load i8*, i8** %4, align 8
  %301 = load i32, i32* %13, align 4
  %302 = call i32 %293(%struct.ucl_parser* %294, %struct.ucl_stack* %295, i32 %296, i32 %299, i8* %300, i32 %301)
  store i32 %302, i32* %12, align 4
  %303 = load i32, i32* @CONSUME_RET, align 4
  %304 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %305 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %306 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %304, i8* null, i32 0, i8* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %290
  store i32 0, i32* %2, align 4
  br label %524

311:                                              ; preds = %290
  %312 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %313 = call i32 @ucl_msgpack_is_container_finished(%struct.ucl_stack* %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  store i32 7, i32* %8, align 4
  br label %317

316:                                              ; preds = %311
  store i32 0, i32* %8, align 4
  store i32 6, i32* %9, align 4
  br label %317

317:                                              ; preds = %316, %315
  br label %405

318:                                              ; preds = %33
  %319 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %320 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @MSGPACK_FLAG_KEY, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %318
  %326 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %327 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %326, i32 0, i32 1
  %328 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %329 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %327, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %330)
  store i32 0, i32* %2, align 4
  br label %524

332:                                              ; preds = %318
  %333 = load i8*, i8** %4, align 8
  store i8* %333, i8** %6, align 8
  %334 = load i32, i32* %11, align 4
  store i32 %334, i32* %14, align 4
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* %13, align 4
  %337 = icmp sgt i32 %335, %336
  br i1 %337, label %341, label %338

338:                                              ; preds = %332
  %339 = load i32, i32* %14, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %338, %332
  %342 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %343 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %342, i32 0, i32 1
  %344 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %343, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %524

345:                                              ; preds = %338
  %346 = load i32, i32* %11, align 4
  %347 = load i8*, i8** %4, align 8
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i8, i8* %347, i64 %348
  store i8* %349, i8** %4, align 8
  %350 = load i32, i32* %11, align 4
  %351 = load i32, i32* %13, align 4
  %352 = sub nsw i32 %351, %350
  store i32 %352, i32* %13, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %405

353:                                              ; preds = %33
  %354 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %355 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %354, i32 0, i32 0
  %356 = load %struct.ucl_stack*, %struct.ucl_stack** %355, align 8
  store %struct.ucl_stack* %356, %struct.ucl_stack** %7, align 8
  %357 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %358 = icmp eq %struct.ucl_stack* %357, null
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  store i32 0, i32* %2, align 4
  br label %524

360:                                              ; preds = %353
  %361 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %362 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %361, i32 0, i32 3
  %363 = load i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)** %362, align 8
  %364 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %365 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %366 = load i32, i32* %11, align 4
  %367 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %368 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 8
  %370 = load i8*, i8** %4, align 8
  %371 = load i32, i32* %13, align 4
  %372 = call i32 %363(%struct.ucl_parser* %364, %struct.ucl_stack* %365, i32 %366, i32 %369, i8* %370, i32 %371)
  store i32 %372, i32* %12, align 4
  %373 = load i32, i32* @CONSUME_RET, align 4
  %374 = load i8*, i8** %6, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %379

376:                                              ; preds = %360
  %377 = load i32, i32* %14, align 4
  %378 = icmp sgt i32 %377, 0
  br label %379

379:                                              ; preds = %376, %360
  %380 = phi i1 [ false, %360 ], [ %378, %376 ]
  %381 = zext i1 %380 to i32
  %382 = call i32 @assert(i32 %381)
  %383 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %384 = load i8*, i8** %6, align 8
  %385 = load i32, i32* %14, align 4
  %386 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %387 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %386, i32 0, i32 2
  %388 = load i8*, i8** %387, align 8
  %389 = call i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %383, i8* %384, i32 %385, i8* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %379
  store i32 0, i32* %2, align 4
  br label %524

392:                                              ; preds = %379
  store i8* null, i8** %6, align 8
  store i32 0, i32* %14, align 4
  %393 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %394 = call i32 @ucl_msgpack_is_container_finished(%struct.ucl_stack* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  store i32 5, i32* %8, align 4
  br label %398

397:                                              ; preds = %392
  store i32 0, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %398

398:                                              ; preds = %397, %396
  br label %405

399:                                              ; preds = %33, %33
  %400 = load i32, i32* @GET_NEXT_STATE, align 4
  store i32 0, i32* %8, align 4
  br label %405

401:                                              ; preds = %33
  %402 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %403 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %402, i32 0, i32 1
  %404 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %403, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %524

405:                                              ; preds = %33, %399, %398, %345, %317, %282, %231, %180
  br label %29

406:                                              ; preds = %29
  %407 = load i32, i32* %8, align 4
  switch i32 %407, label %499 [
    i32 2, label %408
    i32 1, label %408
    i32 6, label %462
    i32 4, label %462
    i32 7, label %498
    i32 5, label %498
    i32 0, label %498
  ]

408:                                              ; preds = %406, %406
  %409 = load i32, i32* %11, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %408
  %412 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %413 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %412, i32 0, i32 1
  %414 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %413, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %524

415:                                              ; preds = %408
  %416 = load i32, i32* %8, align 4
  %417 = icmp eq i32 %416, 2
  br i1 %417, label %418, label %420

418:                                              ; preds = %415
  %419 = load i32, i32* @UCL_ARRAY, align 4
  br label %422

420:                                              ; preds = %415
  %421 = load i32, i32* @UCL_OBJECT, align 4
  br label %422

422:                                              ; preds = %420, %418
  %423 = phi i32 [ %419, %418 ], [ %421, %420 ]
  %424 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %425 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %424, i32 0, i32 3
  %426 = load %struct.TYPE_2__*, %struct.TYPE_2__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = call i8* @ucl_object_new_full(i32 %423, i32 %428)
  %430 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %431 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %430, i32 0, i32 2
  store i8* %429, i8** %431, align 8
  %432 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %433 = load i8*, i8** %6, align 8
  %434 = load i32, i32* %14, align 4
  %435 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %436 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %435, i32 0, i32 2
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %432, i8* %433, i32 %434, i8* %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %422
  store i32 0, i32* %2, align 4
  br label %524

441:                                              ; preds = %422
  %442 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %443 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %444 = load i32, i32* %11, align 4
  %445 = call %struct.ucl_stack* @ucl_msgpack_get_container(%struct.ucl_parser* %442, %struct.ucl_msgpack_parser* %443, i32 %444)
  store %struct.ucl_stack* %445, %struct.ucl_stack** %7, align 8
  %446 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %447 = icmp eq %struct.ucl_stack* %446, null
  br i1 %447, label %448, label %449

448:                                              ; preds = %441
  store i32 0, i32* %2, align 4
  br label %524

449:                                              ; preds = %441
  %450 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %451 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %450, i32 0, i32 3
  %452 = load i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)** %451, align 8
  %453 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %454 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %455 = load i32, i32* %11, align 4
  %456 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %457 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 8
  %459 = load i8*, i8** %4, align 8
  %460 = load i32, i32* %13, align 4
  %461 = call i32 %452(%struct.ucl_parser* %453, %struct.ucl_stack* %454, i32 %455, i32 %458, i8* %459, i32 %460)
  store i32 %461, i32* %12, align 4
  br label %504

462:                                              ; preds = %406, %406
  %463 = load i32, i32* %11, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %462
  %466 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %467 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %466, i32 0, i32 1
  %468 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %467, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %524

469:                                              ; preds = %462
  %470 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %471 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %470, i32 0, i32 0
  %472 = load %struct.ucl_stack*, %struct.ucl_stack** %471, align 8
  store %struct.ucl_stack* %472, %struct.ucl_stack** %7, align 8
  %473 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %474 = icmp eq %struct.ucl_stack* %473, null
  br i1 %474, label %475, label %476

475:                                              ; preds = %469
  store i32 0, i32* %2, align 4
  br label %524

476:                                              ; preds = %469
  %477 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %478 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %477, i32 0, i32 3
  %479 = load i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)*, i32 (%struct.ucl_parser*, %struct.ucl_stack*, i32, i32, i8*, i32)** %478, align 8
  %480 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %481 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  %482 = load i32, i32* %11, align 4
  %483 = load %struct.ucl_msgpack_parser*, %struct.ucl_msgpack_parser** %10, align 8
  %484 = getelementptr inbounds %struct.ucl_msgpack_parser, %struct.ucl_msgpack_parser* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = load i8*, i8** %4, align 8
  %487 = load i32, i32* %13, align 4
  %488 = call i32 %479(%struct.ucl_parser* %480, %struct.ucl_stack* %481, i32 %482, i32 %485, i8* %486, i32 %487)
  store i32 %488, i32* %12, align 4
  %489 = load i32, i32* @CONSUME_RET, align 4
  %490 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %491 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %492 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %491, i32 0, i32 2
  %493 = load i8*, i8** %492, align 8
  %494 = call i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %490, i8* null, i32 0, i8* %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %476
  store i32 0, i32* %2, align 4
  br label %524

497:                                              ; preds = %476
  br label %504

498:                                              ; preds = %406, %406, %406
  br label %504

499:                                              ; preds = %406
  %500 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %501 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %500, i32 0, i32 1
  %502 = load i32, i32* %8, align 4
  %503 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %501, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %502)
  store i32 0, i32* %2, align 4
  br label %524

504:                                              ; preds = %498, %497, %449
  %505 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %506 = call i32 @ucl_msgpack_get_next_container(%struct.ucl_parser* %505)
  %507 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %508 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %507, i32 0, i32 0
  %509 = load %struct.ucl_stack*, %struct.ucl_stack** %508, align 8
  %510 = icmp eq %struct.ucl_stack* %509, null
  br i1 %510, label %520, label %511

511:                                              ; preds = %504
  %512 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %513 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %512, i32 0, i32 0
  %514 = load %struct.ucl_stack*, %struct.ucl_stack** %513, align 8
  %515 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %518 = and i32 %516, %517
  %519 = icmp eq i32 %518, 0
  br label %520

520:                                              ; preds = %511, %504
  %521 = phi i1 [ true, %504 ], [ %519, %511 ]
  %522 = zext i1 %521 to i32
  %523 = call i32 @assert(i32 %522)
  store i32 1, i32* %2, align 4
  br label %524

524:                                              ; preds = %520, %499, %496, %475, %465, %448, %440, %411, %401, %391, %359, %341, %325, %310, %289, %263, %255, %212, %204, %112, %76, %41
  %525 = load i32, i32* %2, align 4
  ret i32 %525
}

declare dso_local %struct.ucl_msgpack_parser* @ucl_msgpack_get_parser_from_type(i8 zeroext) #1

declare dso_local i32 @ucl_create_err(i32*, i8*, ...) #1

declare dso_local i32 @FROM_BE16(i32) #1

declare dso_local i32 @FROM_BE32(i32) #1

declare dso_local i32 @FROM_BE64(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ucl_object_new_full(i32, i32) #1

declare dso_local i32 @ucl_msgpack_insert_object(%struct.ucl_parser*, i8*, i32, i8*) #1

declare dso_local %struct.ucl_stack* @ucl_msgpack_get_container(%struct.ucl_parser*, %struct.ucl_msgpack_parser*, i32) #1

declare dso_local i32 @ucl_msgpack_is_container_finished(%struct.ucl_stack*) #1

declare dso_local i32 @ucl_msgpack_get_next_container(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
