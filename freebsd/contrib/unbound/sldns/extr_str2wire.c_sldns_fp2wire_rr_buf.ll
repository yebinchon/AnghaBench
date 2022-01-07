; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_fp2wire_rr_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_fp2wire_rr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sldns_file_parse_state = type { i32, i64, i32*, i32*, i32, i32 }

@LDNS_RR_BUF_SIZE = common dso_local global i32 0, align 4
@LDNS_PARSE_SKIP_SPACE = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"$ORIGIN\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"$TTL\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"$INCLUDE\00", align 1
@LDNS_WIREPARSE_ERR_INCLUDE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_fp2wire_rr_buf(i32* %0, i64* %1, i64* %2, i64* %3, %struct.sldns_file_parse_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.sldns_file_parse_state*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.sldns_file_parse_state* %4, %struct.sldns_file_parse_state** %11, align 8
  %19 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @LDNS_PARSE_SKIP_SPACE, align 4
  %26 = load i32, i32* @LDNS_RR_BUF_SIZE, align 4
  %27 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %28 = icmp ne %struct.sldns_file_parse_state* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %31 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %30, i32 0, i32 5
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32* [ %31, %29 ], [ null, %32 ]
  %35 = call i32 @sldns_fget_token_l(i32* %24, i8* %23, i32 %25, i32 %26, i32* %34)
  store i32 %35, i32* %14, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64*, i64** %9, align 8
  store i64 0, i64* %50, align 8
  %51 = load i64*, i64** %10, align 8
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

53:                                               ; preds = %39
  %54 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, i8* %23, i64 7
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load i64*, i64** %8, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @strlcpy(i8* %63, i8* %23, i64 %65)
  %67 = load i64*, i64** %9, align 8
  store i64 0, i64* %67, align 8
  %68 = load i64*, i64** %10, align 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %70 = icmp ne %struct.sldns_file_parse_state* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

73:                                               ; preds = %61
  %74 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %75 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %74, i32 0, i32 0
  store i32 8, i32* %75, align 8
  %76 = getelementptr inbounds i8, i8* %23, i64 8
  %77 = call i32 @sldns_strip_ws(i8* %76)
  %78 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %79 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %82 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %81, i32 0, i32 0
  %83 = call i32 @sldns_str2wire_dname_buf(i32 %77, i32* %80, i32* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %88 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %73
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

91:                                               ; preds = %56, %53
  %92 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = getelementptr inbounds i8, i8* %23, i64 4
  %96 = load i8, i8* %95, align 4
  %97 = call i64 @isspace(i8 zeroext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  store i8* null, i8** %17, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = bitcast i64* %100 to i8*
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @strlcpy(i8* %101, i8* %23, i64 %103)
  %105 = load i64*, i64** %9, align 8
  store i64 0, i64* %105, align 8
  %106 = load i64*, i64** %10, align 8
  store i64 0, i64* %106, align 8
  %107 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %108 = icmp ne %struct.sldns_file_parse_state* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %110, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

111:                                              ; preds = %99
  %112 = getelementptr inbounds i8, i8* %23, i64 5
  %113 = call i32 @sldns_strip_ws(i8* %112)
  %114 = call i32 @sldns_str2period(i32 %113, i8** %17)
  %115 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %116 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  br label %229

117:                                              ; preds = %94, %91
  %118 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i64*, i64** %8, align 8
  %122 = bitcast i64* %121 to i8*
  %123 = load i64*, i64** %9, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @strlcpy(i8* %122, i8* %23, i64 %124)
  %126 = load i64*, i64** %9, align 8
  store i64 0, i64* %126, align 8
  %127 = load i64*, i64** %10, align 8
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @LDNS_WIREPARSE_ERR_INCLUDE, align 4
  store i32 %128, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

129:                                              ; preds = %117
  %130 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load i64*, i64** %8, align 8
  %134 = bitcast i64* %133 to i8*
  %135 = load i64*, i64** %9, align 8
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @strlcpy(i8* %134, i8* %23, i64 %136)
  %138 = load i64*, i64** %9, align 8
  store i64 0, i64* %138, align 8
  %139 = load i64*, i64** %10, align 8
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* @LDNS_WIREPARSE_ERR_INCLUDE, align 4
  store i32 %140, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

141:                                              ; preds = %129
  %142 = load i64*, i64** %8, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = load i64*, i64** %10, align 8
  %145 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %146 = icmp ne %struct.sldns_file_parse_state* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %149 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  br label %152

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i32 [ %150, %147 ], [ 0, %151 ]
  %154 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %155 = icmp ne %struct.sldns_file_parse_state* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %158 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %163 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  br label %166

165:                                              ; preds = %156, %152
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i32* [ %164, %161 ], [ null, %165 ]
  %168 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %169 = icmp ne %struct.sldns_file_parse_state* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %172 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  br label %175

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %170
  %176 = phi i32 [ %173, %170 ], [ 0, %174 ]
  %177 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %178 = icmp ne %struct.sldns_file_parse_state* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %181 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %186 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  br label %189

188:                                              ; preds = %179, %175
  br label %189

189:                                              ; preds = %188, %184
  %190 = phi i32* [ %187, %184 ], [ null, %188 ]
  %191 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %192 = icmp ne %struct.sldns_file_parse_state* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %195 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  br label %198

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %193
  %199 = phi i64 [ %196, %193 ], [ 0, %197 ]
  %200 = call i32 @sldns_str2wire_rr_buf(i8* %23, i64* %142, i64* %143, i64* %144, i32 %153, i32* %167, i32 %176, i32* %190, i64 %199)
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %198
  %205 = load i64*, i64** %10, align 8
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %204
  %209 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %210 = icmp ne %struct.sldns_file_parse_state* %209, null
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = load i64*, i64** %10, align 8
  %213 = load i64, i64* %212, align 8
  %214 = icmp ule i64 %213, 8
  br i1 %214, label %215, label %227

215:                                              ; preds = %211
  %216 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %217 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i64*, i64** %8, align 8
  %220 = load i64*, i64** %10, align 8
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @memmove(i32* %218, i64* %219, i64 %221)
  %223 = load i64*, i64** %10, align 8
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.sldns_file_parse_state*, %struct.sldns_file_parse_state** %11, align 8
  %226 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %215, %211, %208, %204, %198
  %228 = load i32, i32* %18, align 4
  store i32 %228, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

229:                                              ; preds = %111
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %231, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %232

232:                                              ; preds = %230, %227, %132, %120, %109, %89, %71, %49, %37
  %233 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sldns_fget_token_l(i32*, i8*, i32, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @sldns_str2wire_dname_buf(i32, i32*, i32*) #2

declare dso_local i32 @sldns_strip_ws(i8*) #2

declare dso_local i32 @sldns_str2period(i32, i8**) #2

declare dso_local i32 @sldns_str2wire_rr_buf(i8*, i64*, i64*, i64*, i32, i32*, i32, i32*, i64) #2

declare dso_local i32 @memmove(i32*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
