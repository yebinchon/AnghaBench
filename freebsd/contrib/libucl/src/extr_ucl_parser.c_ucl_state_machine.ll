; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_state_machine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32, %struct.ucl_chunk*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.ucl_chunk = type { i8*, i8*, i32, i32 }
%struct.ucl_macro = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 (i8*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (i8*, i64, %struct.TYPE_17__*, i32)* }

@UCL_STATE_ERROR = common dso_local global i8* null, align 8
@UCL_CHARACTER_WHITESPACE_UNSAFE = common dso_local global i32 0, align 4
@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"top object is finished but the parser expects a key\00", align 1
@UCL_OBJECT = common dso_local global i32 0, align 4
@UCL_PARSER_DISABLE_MACRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"error on line %d at column %d: invalid macro\00", align 1
@hh = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"error on line %d at column %d: unknown macro: '%.*s', character: '%c'\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"error on line %d at column %d: invalid macro name\00", align 1
@UCL_EINTERNAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"internal error: parser has macro undefined\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"internal error: parser is in an unknown state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*)* @ucl_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_state_machine(%struct.ucl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.ucl_chunk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ucl_macro*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  %16 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %17 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %16, i32 0, i32 8
  %18 = load %struct.ucl_chunk*, %struct.ucl_chunk** %17, align 8
  store %struct.ucl_chunk* %18, %struct.ucl_chunk** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %11, align 8
  store %struct.ucl_macro* null, %struct.ucl_macro** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %20 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %19, i32 0, i32 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = icmp eq %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %25 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %24, i32 0, i32 0
  store i32 132, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %28 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %608, %201, %160, %26
  %31 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %32 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ult i8* %33, %36
  br i1 %37, label %38, label %609

38:                                               ; preds = %30
  %39 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %40 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %598 [
    i32 132, label %42
    i32 131, label %130
    i32 128, label %254
    i32 133, label %278
    i32 129, label %320
    i32 130, label %447
  ]

42:                                               ; preds = %38
  %43 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %44 = call i32 @ucl_skip_comments(%struct.ucl_parser* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %48 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %51 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %55 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %665

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %60 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ult i8* %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %67 = call i32 @ucl_test_character(i8 zeroext %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i1 [ false, %57 ], [ %68, %63 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %72, i8* %73)
  br label %57

75:                                               ; preds = %69
  %76 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %77 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 91
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %85 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %84, i32 0, i32 0
  store i32 128, i32* %85, align 8
  %86 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %86, i8* %87)
  br label %101

89:                                               ; preds = %75
  %90 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %91 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %90, i32 0, i32 0
  store i32 131, i32* %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 123
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %89
  br label %101

101:                                              ; preds = %100, %83
  %102 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %103 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %102, i32 0, i32 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = icmp eq %struct.TYPE_17__* %104, null
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %108 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %113 = call %struct.TYPE_17__* @ucl_parser_add_container(%struct.TYPE_17__* null, %struct.ucl_parser* %112, i32 1, i32 0)
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** %4, align 8
  br label %117

114:                                              ; preds = %106
  %115 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %116 = call %struct.TYPE_17__* @ucl_parser_add_container(%struct.TYPE_17__* null, %struct.ucl_parser* %115, i32 0, i32 0)
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %4, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = icmp eq %struct.TYPE_17__* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %665

121:                                              ; preds = %117
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %124 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %123, i32 0, i32 4
  store %struct.TYPE_17__* %122, %struct.TYPE_17__** %124, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %127 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %126, i32 0, i32 6
  store %struct.TYPE_17__* %125, %struct.TYPE_17__** %127, align 8
  br label %128

128:                                              ; preds = %121, %101
  br label %129

129:                                              ; preds = %128
  br label %608

130:                                              ; preds = %38
  br label %131

131:                                              ; preds = %145, %130
  %132 = load i8*, i8** %7, align 8
  %133 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %134 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ult i8* %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i8*, i8** %7, align 8
  %139 = load i8, i8* %138, align 1
  %140 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %141 = call i32 @ucl_test_character(i8 zeroext %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br label %143

143:                                              ; preds = %137, %131
  %144 = phi i1 [ false, %131 ], [ %142, %137 ]
  br i1 %144, label %145, label %149

145:                                              ; preds = %143
  %146 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %146, i8* %147)
  br label %131

149:                                              ; preds = %143
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %152 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = icmp eq i8* %150, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = load i8*, i8** %7, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 125
  br i1 %159, label %160, label %163

160:                                              ; preds = %155, %149
  %161 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %162 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %161, i32 0, i32 0
  store i32 133, i32* %162, align 8
  br label %30

163:                                              ; preds = %155
  %164 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %165 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %164, i32 0, i32 5
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = icmp eq %struct.TYPE_16__* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %170 = load i32, i32* @UCL_ESYNTAX, align 4
  %171 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %172 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %171, i32 0, i32 7
  %173 = call i32 @ucl_set_err(%struct.ucl_parser* %169, i32 %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %172)
  %174 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %175 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %178 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %182 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  store i32 0, i32* %2, align 4
  br label %665

183:                                              ; preds = %163
  %184 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %185 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %186 = call i32 @ucl_parse_key(%struct.ucl_parser* %184, %struct.ucl_chunk* %185, i32* %13, i32* %14)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %190 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %193 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %197 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  store i32 0, i32* %2, align 4
  br label %665

198:                                              ; preds = %183
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %203 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** %7, align 8
  %205 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %206 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %205, i32 0, i32 0
  store i32 133, i32* %206, align 8
  br label %30

207:                                              ; preds = %198
  %208 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %209 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 129
  br i1 %211, label %212, label %245

212:                                              ; preds = %207
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %241

215:                                              ; preds = %212
  %216 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %217 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %216, i32 0, i32 5
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @UCL_OBJECT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %241

225:                                              ; preds = %215
  %226 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %227 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %226, i32 0, i32 6
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %230 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %231 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %230, i32 0, i32 5
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  %236 = call %struct.TYPE_17__* @ucl_parser_add_container(%struct.TYPE_17__* %228, %struct.ucl_parser* %229, i32 0, i32 %235)
  store %struct.TYPE_17__* %236, %struct.TYPE_17__** %4, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %238 = icmp eq %struct.TYPE_17__* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %225
  store i32 0, i32* %2, align 4
  br label %665

240:                                              ; preds = %225
  br label %244

241:                                              ; preds = %215, %212
  %242 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %243 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %242, i32 0, i32 0
  store i32 128, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %240
  br label %249

245:                                              ; preds = %207
  %246 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %247 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  store i8* %248, i8** %8, align 8
  br label %249

249:                                              ; preds = %245, %244
  br label %250

250:                                              ; preds = %249
  %251 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %252 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  store i8* %253, i8** %7, align 8
  br label %608

254:                                              ; preds = %38
  %255 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %256 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %255, i32 0, i32 6
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = icmp ne %struct.TYPE_17__* %257, null
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %261 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %262 = call i32 @ucl_parse_value(%struct.ucl_parser* %260, %struct.ucl_chunk* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %274, label %264

264:                                              ; preds = %259, %254
  %265 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %266 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %269 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %273 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  store i32 0, i32* %2, align 4
  br label %665

274:                                              ; preds = %259
  %275 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %276 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  store i8* %277, i8** %7, align 8
  br label %608

278:                                              ; preds = %38
  %279 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %280 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %281 = call i32 @ucl_parse_after_value(%struct.ucl_parser* %279, %struct.ucl_chunk* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %278
  %284 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %285 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %288 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  %289 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %290 = ptrtoint i8* %289 to i32
  %291 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %292 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  store i32 0, i32* %2, align 4
  br label %665

293:                                              ; preds = %278
  %294 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %295 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %294, i32 0, i32 5
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = icmp ne %struct.TYPE_16__* %296, null
  br i1 %297, label %298, label %315

298:                                              ; preds = %293
  %299 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %300 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %299, i32 0, i32 5
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @UCL_OBJECT, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %298
  %309 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %310 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %309, i32 0, i32 0
  store i32 131, i32* %310, align 8
  br label %314

311:                                              ; preds = %298
  %312 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %313 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %312, i32 0, i32 0
  store i32 128, i32* %313, align 8
  br label %314

314:                                              ; preds = %311, %308
  br label %316

315:                                              ; preds = %293
  store i32 1, i32* %2, align 4
  br label %665

316:                                              ; preds = %314
  %317 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %318 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  store i8* %319, i8** %7, align 8
  br label %608

320:                                              ; preds = %38
  %321 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %322 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @UCL_PARSER_DISABLE_MACRO, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %356

327:                                              ; preds = %320
  %328 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %329 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %330 = call i32 @ucl_skip_macro_as_comment(%struct.ucl_parser* %328, %struct.ucl_chunk* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %346, label %332

332:                                              ; preds = %327
  %333 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %334 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %333, i32 0, i32 7
  %335 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %336 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %339 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 (i32*, i8*, i32, i32, ...) @ucl_create_err(i32* %334, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %337, i32 %340)
  %342 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %345 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 8
  store i32 0, i32* %2, align 4
  br label %665

346:                                              ; preds = %327
  %347 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %348 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  store i8* %349, i8** %7, align 8
  %350 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %351 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %354 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %346
  br label %446

356:                                              ; preds = %320
  %357 = load i8*, i8** %7, align 8
  %358 = load i8, i8* %357, align 1
  %359 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %360 = call i32 @ucl_test_character(i8 zeroext %358, i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %371, label %362

362:                                              ; preds = %356
  %363 = load i8*, i8** %7, align 8
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = icmp ne i32 %365, 40
  br i1 %366, label %367, label %371

367:                                              ; preds = %362
  %368 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %369 = load i8*, i8** %7, align 8
  %370 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %368, i8* %369)
  br label %445

371:                                              ; preds = %362, %356
  %372 = load i8*, i8** %8, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %430

374:                                              ; preds = %371
  %375 = load i8*, i8** %7, align 8
  %376 = load i8*, i8** %8, align 8
  %377 = ptrtoint i8* %375 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  %380 = icmp sgt i64 %379, 0
  br i1 %380, label %381, label %430

381:                                              ; preds = %374
  %382 = load i8*, i8** %7, align 8
  %383 = load i8*, i8** %8, align 8
  %384 = ptrtoint i8* %382 to i64
  %385 = ptrtoint i8* %383 to i64
  %386 = sub i64 %384, %385
  store i64 %386, i64* %11, align 8
  %387 = load i32, i32* @hh, align 4
  %388 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %389 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %388, i32 0, i32 9
  %390 = load i32, i32* %389, align 8
  %391 = load i8*, i8** %8, align 8
  %392 = load i64, i64* %11, align 8
  %393 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %394 = call i32 @HASH_FIND(i32 %387, i32 %390, i8* %391, i64 %392, %struct.ucl_macro* %393)
  %395 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %396 = icmp eq %struct.ucl_macro* %395, null
  br i1 %396, label %397, label %423

397:                                              ; preds = %381
  %398 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %399 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %398, i32 0, i32 7
  %400 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %401 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %404 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = load i8*, i8** %7, align 8
  %407 = load i8*, i8** %8, align 8
  %408 = ptrtoint i8* %406 to i64
  %409 = ptrtoint i8* %407 to i64
  %410 = sub i64 %408, %409
  %411 = trunc i64 %410 to i32
  %412 = load i8*, i8** %8, align 8
  %413 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %414 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %413, i32 0, i32 0
  %415 = load i8*, i8** %414, align 8
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i32
  %418 = call i32 (i32*, i8*, i32, i32, ...) @ucl_create_err(i32* %399, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %402, i32 %405, i32 %411, i8* %412, i32 %417)
  %419 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %420 = ptrtoint i8* %419 to i32
  %421 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %422 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 8
  store i32 0, i32* %2, align 4
  br label %665

423:                                              ; preds = %381
  %424 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %425 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %426 = load i8*, i8** %7, align 8
  %427 = call i32 @SKIP_SPACES_COMMENTS(%struct.ucl_parser* %424, %struct.ucl_chunk* %425, i8* %426)
  %428 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %429 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %428, i32 0, i32 0
  store i32 130, i32* %429, align 8
  br label %444

430:                                              ; preds = %374, %371
  %431 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %432 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %431, i32 0, i32 7
  %433 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %434 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %437 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = call i32 (i32*, i8*, i32, i32, ...) @ucl_create_err(i32* %432, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %435, i32 %438)
  %440 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %441 = ptrtoint i8* %440 to i32
  %442 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %443 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %442, i32 0, i32 0
  store i32 %441, i32* %443, align 8
  store i32 0, i32* %2, align 4
  br label %665

444:                                              ; preds = %423
  br label %445

445:                                              ; preds = %444, %367
  br label %446

446:                                              ; preds = %445, %355
  br label %608

447:                                              ; preds = %38
  %448 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %449 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %448, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp eq i32 %452, 40
  br i1 %453, label %454, label %469

454:                                              ; preds = %447
  %455 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %456 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %457 = call %struct.TYPE_17__* @ucl_parse_macro_arguments(%struct.ucl_parser* %455, %struct.ucl_chunk* %456)
  store %struct.TYPE_17__* %457, %struct.TYPE_17__** %5, align 8
  %458 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %459 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %458, i32 0, i32 0
  %460 = load i8*, i8** %459, align 8
  store i8* %460, i8** %7, align 8
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %462 = icmp ne %struct.TYPE_17__* %461, null
  br i1 %462, label %463, label %468

463:                                              ; preds = %454
  %464 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %465 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %466 = load i8*, i8** %7, align 8
  %467 = call i32 @SKIP_SPACES_COMMENTS(%struct.ucl_parser* %464, %struct.ucl_chunk* %465, i8* %466)
  br label %468

468:                                              ; preds = %463, %454
  br label %470

469:                                              ; preds = %447
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %470

470:                                              ; preds = %469, %468
  %471 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %472 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %473 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %474 = call i32 @ucl_parse_macro_value(%struct.ucl_parser* %471, %struct.ucl_chunk* %472, %struct.ucl_macro* %473, i8** %9, i64* %11)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %486, label %476

476:                                              ; preds = %470
  %477 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %478 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %481 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %480, i32 0, i32 1
  store i32 %479, i32* %481, align 4
  %482 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %483 = ptrtoint i8* %482 to i32
  %484 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %485 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %484, i32 0, i32 0
  store i32 %483, i32* %485, align 8
  store i32 0, i32* %2, align 4
  br label %665

486:                                              ; preds = %470
  %487 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %488 = load i8*, i8** %9, align 8
  %489 = load i64, i64* %11, align 8
  %490 = call i64 @ucl_expand_variable(%struct.ucl_parser* %487, i8** %10, i8* %488, i64 %489)
  store i64 %490, i64* %11, align 8
  %491 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %492 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %495 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %494, i32 0, i32 0
  store i32 %493, i32* %495, align 8
  %496 = load i8*, i8** %10, align 8
  %497 = icmp eq i8* %496, null
  br i1 %497, label %498, label %534

498:                                              ; preds = %486
  %499 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %500 = icmp ne %struct.ucl_macro* %499, null
  br i1 %500, label %501, label %534

501:                                              ; preds = %498
  %502 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %503 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %521

506:                                              ; preds = %501
  %507 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %508 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %508, i32 0, i32 0
  %510 = load i32 (i8*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (i8*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %509, align 8
  %511 = load i8*, i8** %9, align 8
  %512 = load i64, i64* %11, align 8
  %513 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %514 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %515 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %514, i32 0, i32 4
  %516 = load %struct.TYPE_17__*, %struct.TYPE_17__** %515, align 8
  %517 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %518 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = call i32 %510(i8* %511, i64 %512, %struct.TYPE_17__* %513, %struct.TYPE_17__* %516, i32 %519)
  store i32 %520, i32* %15, align 4
  br label %533

521:                                              ; preds = %501
  %522 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %523 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %523, i32 0, i32 1
  %525 = load i32 (i8*, i64, %struct.TYPE_17__*, i32)*, i32 (i8*, i64, %struct.TYPE_17__*, i32)** %524, align 8
  %526 = load i8*, i8** %9, align 8
  %527 = load i64, i64* %11, align 8
  %528 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %529 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %530 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = call i32 %525(i8* %526, i64 %527, %struct.TYPE_17__* %528, i32 %531)
  store i32 %532, i32* %15, align 4
  br label %533

533:                                              ; preds = %521, %506
  br label %581

534:                                              ; preds = %498, %486
  %535 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %536 = icmp ne %struct.ucl_macro* %535, null
  br i1 %536, label %537, label %574

537:                                              ; preds = %534
  %538 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %539 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 8
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %557

542:                                              ; preds = %537
  %543 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %544 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %544, i32 0, i32 0
  %546 = load i32 (i8*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (i8*, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %545, align 8
  %547 = load i8*, i8** %10, align 8
  %548 = load i64, i64* %11, align 8
  %549 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %550 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %551 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %550, i32 0, i32 4
  %552 = load %struct.TYPE_17__*, %struct.TYPE_17__** %551, align 8
  %553 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %554 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = call i32 %546(i8* %547, i64 %548, %struct.TYPE_17__* %549, %struct.TYPE_17__* %552, i32 %555)
  store i32 %556, i32* %15, align 4
  br label %569

557:                                              ; preds = %537
  %558 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %559 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %559, i32 0, i32 1
  %561 = load i32 (i8*, i64, %struct.TYPE_17__*, i32)*, i32 (i8*, i64, %struct.TYPE_17__*, i32)** %560, align 8
  %562 = load i8*, i8** %10, align 8
  %563 = load i64, i64* %11, align 8
  %564 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %565 = load %struct.ucl_macro*, %struct.ucl_macro** %12, align 8
  %566 = getelementptr inbounds %struct.ucl_macro, %struct.ucl_macro* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = call i32 %561(i8* %562, i64 %563, %struct.TYPE_17__* %564, i32 %567)
  store i32 %568, i32* %15, align 4
  br label %569

569:                                              ; preds = %557, %542
  %570 = load i64, i64* %11, align 8
  %571 = add i64 %570, 1
  %572 = load i8*, i8** %10, align 8
  %573 = call i32 @UCL_FREE(i64 %571, i8* %572)
  br label %580

574:                                              ; preds = %534
  store i32 0, i32* %15, align 4
  %575 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %576 = load i32, i32* @UCL_EINTERNAL, align 4
  %577 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %578 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %577, i32 0, i32 7
  %579 = call i32 @ucl_set_err(%struct.ucl_parser* %575, i32 %576, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32* %578)
  br label %580

580:                                              ; preds = %574, %569
  br label %581

581:                                              ; preds = %580, %533
  %582 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %583 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %582, i32 0, i32 8
  %584 = load %struct.ucl_chunk*, %struct.ucl_chunk** %583, align 8
  store %struct.ucl_chunk* %584, %struct.ucl_chunk** %6, align 8
  %585 = load %struct.ucl_chunk*, %struct.ucl_chunk** %6, align 8
  %586 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %585, i32 0, i32 0
  %587 = load i8*, i8** %586, align 8
  store i8* %587, i8** %7, align 8
  %588 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %589 = icmp ne %struct.TYPE_17__* %588, null
  br i1 %589, label %590, label %593

590:                                              ; preds = %581
  %591 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %592 = call i32 @ucl_object_unref(%struct.TYPE_17__* %591)
  br label %593

593:                                              ; preds = %590, %581
  %594 = load i32, i32* %15, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %593
  store i32 0, i32* %2, align 4
  br label %665

597:                                              ; preds = %593
  br label %608

598:                                              ; preds = %38
  %599 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %600 = load i32, i32* @UCL_EINTERNAL, align 4
  %601 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %602 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %601, i32 0, i32 7
  %603 = call i32 @ucl_set_err(%struct.ucl_parser* %599, i32 %600, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32* %602)
  %604 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %605 = ptrtoint i8* %604 to i32
  %606 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %607 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %606, i32 0, i32 0
  store i32 %605, i32* %607, align 8
  store i32 0, i32* %2, align 4
  br label %665

608:                                              ; preds = %597, %446, %316, %274, %250, %129
  br label %30

609:                                              ; preds = %30
  %610 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %611 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %610, i32 0, i32 3
  %612 = load %struct.TYPE_17__*, %struct.TYPE_17__** %611, align 8
  %613 = icmp ne %struct.TYPE_17__* %612, null
  br i1 %613, label %614, label %664

614:                                              ; preds = %609
  %615 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %616 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %615, i32 0, i32 6
  %617 = load %struct.TYPE_17__*, %struct.TYPE_17__** %616, align 8
  %618 = icmp ne %struct.TYPE_17__* %617, null
  br i1 %618, label %619, label %625

619:                                              ; preds = %614
  %620 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %621 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %622 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %621, i32 0, i32 6
  %623 = load %struct.TYPE_17__*, %struct.TYPE_17__** %622, align 8
  %624 = call i32 @ucl_attach_comment(%struct.ucl_parser* %620, %struct.TYPE_17__* %623, i32 1)
  br label %663

625:                                              ; preds = %614
  %626 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %627 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %626, i32 0, i32 5
  %628 = load %struct.TYPE_16__*, %struct.TYPE_16__** %627, align 8
  %629 = icmp ne %struct.TYPE_16__* %628, null
  br i1 %629, label %630, label %645

630:                                              ; preds = %625
  %631 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %632 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %631, i32 0, i32 5
  %633 = load %struct.TYPE_16__*, %struct.TYPE_16__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %633, i32 0, i32 0
  %635 = load %struct.TYPE_17__*, %struct.TYPE_17__** %634, align 8
  %636 = icmp ne %struct.TYPE_17__* %635, null
  br i1 %636, label %637, label %645

637:                                              ; preds = %630
  %638 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %639 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %640 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %639, i32 0, i32 5
  %641 = load %struct.TYPE_16__*, %struct.TYPE_16__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %641, i32 0, i32 0
  %643 = load %struct.TYPE_17__*, %struct.TYPE_17__** %642, align 8
  %644 = call i32 @ucl_attach_comment(%struct.ucl_parser* %638, %struct.TYPE_17__* %643, i32 1)
  br label %662

645:                                              ; preds = %630, %625
  %646 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %647 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %646, i32 0, i32 4
  %648 = load %struct.TYPE_17__*, %struct.TYPE_17__** %647, align 8
  %649 = icmp ne %struct.TYPE_17__* %648, null
  br i1 %649, label %650, label %656

650:                                              ; preds = %645
  %651 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %652 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %653 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %652, i32 0, i32 4
  %654 = load %struct.TYPE_17__*, %struct.TYPE_17__** %653, align 8
  %655 = call i32 @ucl_attach_comment(%struct.ucl_parser* %651, %struct.TYPE_17__* %654, i32 1)
  br label %661

656:                                              ; preds = %645
  %657 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %658 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %657, i32 0, i32 3
  %659 = load %struct.TYPE_17__*, %struct.TYPE_17__** %658, align 8
  %660 = call i32 @ucl_object_unref(%struct.TYPE_17__* %659)
  br label %661

661:                                              ; preds = %656, %650
  br label %662

662:                                              ; preds = %661, %637
  br label %663

663:                                              ; preds = %662, %619
  br label %664

664:                                              ; preds = %663, %609
  store i32 1, i32* %2, align 4
  br label %665

665:                                              ; preds = %664, %598, %596, %476, %430, %397, %332, %315, %283, %264, %239, %188, %168, %120, %46
  %666 = load i32, i32* %2, align 4
  ret i32 %666
}

declare dso_local i32 @ucl_skip_comments(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local %struct.TYPE_17__* @ucl_parser_add_container(%struct.TYPE_17__*, %struct.ucl_parser*, i32, i32) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @ucl_parse_key(%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*) #1

declare dso_local i32 @ucl_parse_value(%struct.ucl_parser*, %struct.ucl_chunk*) #1

declare dso_local i32 @ucl_parse_after_value(%struct.ucl_parser*, %struct.ucl_chunk*) #1

declare dso_local i32 @ucl_skip_macro_as_comment(%struct.ucl_parser*, %struct.ucl_chunk*) #1

declare dso_local i32 @ucl_create_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @HASH_FIND(i32, i32, i8*, i64, %struct.ucl_macro*) #1

declare dso_local i32 @SKIP_SPACES_COMMENTS(%struct.ucl_parser*, %struct.ucl_chunk*, i8*) #1

declare dso_local %struct.TYPE_17__* @ucl_parse_macro_arguments(%struct.ucl_parser*, %struct.ucl_chunk*) #1

declare dso_local i32 @ucl_parse_macro_value(%struct.ucl_parser*, %struct.ucl_chunk*, %struct.ucl_macro*, i8**, i64*) #1

declare dso_local i64 @ucl_expand_variable(%struct.ucl_parser*, i8**, i8*, i64) #1

declare dso_local i32 @UCL_FREE(i64, i8*) #1

declare dso_local i32 @ucl_object_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @ucl_attach_comment(%struct.ucl_parser*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
