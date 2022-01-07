; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_parse_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_parse_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_GENERAL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\#\00", align 1
@LDNS_RDF_TYPE_HIP = common dso_local global i64 0, align 8
@LDNS_RDF_TYPE_INT16_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_MISSING_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@LDNS_WIREPARSE_ERR_PARENTHESIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64*, i64, i64, i32*, i64)* @rrinternal_parse_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_parse_rdata(i32* %0, i8* %1, i64 %2, i32* %3, i64* %4, i64 %5, i64 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i32* @sldns_rr_descript(i64 %33)
  store i32* %34, i32** %20, align 8
  %35 = load i64, i64* %16, align 8
  %36 = add i64 %35, 10
  store i64 %36, i64* %24, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %37 = load i32*, i32** %20, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %9
  %40 = load i32, i32* @LDNS_WIREPARSE_ERR_GENERAL, align 4
  store i32 %40, i32* %10, align 4
  br label %234

41:                                               ; preds = %9
  %42 = load i32*, i32** %20, align 8
  %43 = call i64 @sldns_rr_descriptor_maximum(i32* %42)
  store i64 %43, i64* %23, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = call i64 @sldns_rr_descriptor_minimum(i32* %44)
  store i64 %45, i64* %22, align 8
  %46 = load i64, i64* %24, align 8
  %47 = load i64*, i64** %15, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @sldns_buffer_position(i32* %52)
  %54 = call i32 @RET_ERR(i32 %51, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %234

55:                                               ; preds = %41
  store i64 0, i64* %21, align 8
  br label %56

56:                                               ; preds = %176, %55
  %57 = load i64, i64* %21, align 8
  %58 = load i64, i64* %23, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %179

60:                                               ; preds = %56
  %61 = load i32*, i32** %20, align 8
  %62 = load i64, i64* %21, align 8
  %63 = call i64 @sldns_rr_descriptor_field_type(i32* %61, i64 %62)
  store i64 %63, i64* %32, align 8
  %64 = load i64, i64* %32, align 8
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* %23, align 8
  %67 = call i8* @rrinternal_get_delims(i64 %64, i64 %65, i64 %66)
  store i8* %67, i8** %31, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i64, i64* %32, align 8
  %70 = call i32 @rrinternal_get_quoted(i32* %68, i8** %31, i64 %69)
  store i32 %70, i32* %30, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i8*, i8** %31, align 8
  %75 = load i64, i64* %32, align 8
  %76 = call i32 @sldns_parse_rdf_token(i32* %71, i8* %72, i64 %73, i32* %30, i32* %28, i64* %25, i8* %74, i64 %75, i64* %26)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  br label %179

79:                                               ; preds = %60
  %80 = load i64, i64* %26, align 8
  %81 = icmp uge i64 %80, 2
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %82
  %87 = load i32, i32* %30, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %26, align 8
  %91 = icmp eq i64 %90, 2
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %98, label %110

98:                                               ; preds = %92, %89
  store i32 1, i32* %27, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i64*, i64** %15, align 8
  %104 = load i64, i64* %25, align 8
  %105 = call i32 @rrinternal_parse_unknown(i32* %99, i8* %100, i64 %101, i32* %102, i64* %103, i64* %24, i64 %104)
  store i32 %105, i32* %29, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %29, align 4
  store i32 %108, i32* %10, align 4
  br label %234

109:                                              ; preds = %98
  br label %175

110:                                              ; preds = %92, %86, %82, %79
  %111 = load i64, i64* %26, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %30, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %174

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %32, align 8
  %118 = load i64, i64* @LDNS_RDF_TYPE_HIP, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8*, i8** %31, align 8
  %124 = load i64, i64* %32, align 8
  %125 = call i32 @sldns_affix_token(i32* %121, i8* %122, i64* %13, i32* %30, i32* %28, i64* %25, i8* %123, i64 %124, i64* %26)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %179

128:                                              ; preds = %120
  %129 = load i32*, i32** %11, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %31, align 8
  %132 = load i64, i64* %32, align 8
  %133 = call i32 @sldns_affix_token(i32* %129, i8* %130, i64* %13, i32* %30, i32* %28, i64* %25, i8* %131, i64 %132, i64* %26)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  br label %179

136:                                              ; preds = %128
  br label %155

137:                                              ; preds = %116
  %138 = load i64, i64* %32, align 8
  %139 = load i64, i64* @LDNS_RDF_TYPE_INT16_DATA, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load i8*, i8** %12, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32*, i32** %11, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** %31, align 8
  %149 = load i64, i64* %32, align 8
  %150 = call i32 @sldns_affix_token(i32* %146, i8* %147, i64* %13, i32* %30, i32* %28, i64* %25, i8* %148, i64 %149, i64* %26)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  br label %179

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %141, %137
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i32*, i32** %11, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load i32*, i32** %14, align 8
  %160 = load i64*, i64** %15, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %32, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* %23, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i32*, i32** %18, align 8
  %168 = load i64, i64* %19, align 8
  %169 = call i32 @rrinternal_parse_rdf(i32* %156, i8* %157, i64 %158, i32* %159, i64 %161, i64* %24, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i32* %167, i64 %168)
  store i32 %169, i32* %29, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %155
  %172 = load i32, i32* %29, align 4
  store i32 %172, i32* %10, align 4
  br label %234

173:                                              ; preds = %155
  br label %174

174:                                              ; preds = %173, %113
  br label %175

175:                                              ; preds = %174, %109
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %21, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %21, align 8
  br label %56

179:                                              ; preds = %152, %135, %127, %78, %56
  %180 = load i32, i32* %27, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %179
  %183 = load i64, i64* %21, align 8
  %184 = add i64 %183, 1
  %185 = load i64, i64* %22, align 8
  %186 = icmp ult i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_MISSING_VALUE, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @sldns_buffer_position(i32* %189)
  %191 = call i32 @RET_ERR(i32 %188, i32 %190)
  store i32 %191, i32* %10, align 4
  br label %234

192:                                              ; preds = %182, %179
  br label %193

193:                                              ; preds = %220, %192
  %194 = load i32, i32* %28, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load i32*, i32** %11, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = load i64, i64* %13, align 8
  %200 = call i32 @sldns_bget_token_par(i32* %197, i8* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %199, i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load i32, i32* %28, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32, i32* @LDNS_WIREPARSE_ERR_PARENTHESIS, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = call i32 @sldns_buffer_position(i32* %207)
  %209 = call i32 @RET_ERR(i32 %206, i32 %208)
  store i32 %209, i32* %10, align 4
  br label %234

210:                                              ; preds = %202
  br label %221

211:                                              ; preds = %196
  %212 = load i8*, i8** %12, align 8
  %213 = call i64 @strcmp(i8* %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load i32, i32* @LDNS_WIREPARSE_ERR_PARENTHESIS, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @sldns_buffer_position(i32* %217)
  %219 = call i32 @RET_ERR(i32 %216, i32 %218)
  store i32 %219, i32* %10, align 4
  br label %234

220:                                              ; preds = %211
  br label %193

221:                                              ; preds = %210, %193
  %222 = load i32*, i32** %14, align 8
  %223 = load i64, i64* %16, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = getelementptr inbounds i32, i32* %224, i64 8
  %226 = load i64, i64* %24, align 8
  %227 = load i64, i64* %16, align 8
  %228 = sub i64 %226, %227
  %229 = sub i64 %228, 10
  %230 = call i32 @sldns_write_uint16(i32* %225, i64 %229)
  %231 = load i64, i64* %24, align 8
  %232 = load i64*, i64** %15, align 8
  store i64 %231, i64* %232, align 8
  %233 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %233, i32* %10, align 4
  br label %234

234:                                              ; preds = %221, %215, %205, %187, %171, %107, %50, %39
  %235 = load i32, i32* %10, align 4
  ret i32 %235
}

declare dso_local i32* @sldns_rr_descript(i64) #1

declare dso_local i64 @sldns_rr_descriptor_maximum(i32*) #1

declare dso_local i64 @sldns_rr_descriptor_minimum(i32*) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i32 @sldns_buffer_position(i32*) #1

declare dso_local i64 @sldns_rr_descriptor_field_type(i32*, i64) #1

declare dso_local i8* @rrinternal_get_delims(i64, i64, i64) #1

declare dso_local i32 @rrinternal_get_quoted(i32*, i8**, i64) #1

declare dso_local i32 @sldns_parse_rdf_token(i32*, i8*, i64, i32*, i32*, i64*, i8*, i64, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @rrinternal_parse_unknown(i32*, i8*, i64, i32*, i64*, i64*, i64) #1

declare dso_local i32 @sldns_affix_token(i32*, i8*, i64*, i32*, i32*, i64*, i8*, i64, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rrinternal_parse_rdf(i32*, i8*, i64, i32*, i64, i64*, i64, i64, i64, i64, i64, i32*, i64) #1

declare dso_local i32 @sldns_bget_token_par(i32*, i8*, i8*, i64, i32*, i8*) #1

declare dso_local i32 @sldns_write_uint16(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
