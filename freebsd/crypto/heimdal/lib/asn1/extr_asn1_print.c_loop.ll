; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_asn1_print.c_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_asn1_print.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"der_get_tag: %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unreasonable length (%u) > %u\00", align 1
@indent_flag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@ASN1_C_UNIV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"tag %d = \00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"unreasonable tag length (%u) > %u\00", align 1
@ASN1_INDEFINITE = common dso_local global i64 0, align 8
@PRIM = common dso_local global i64 0, align 8
@ASN1_C_CONTEXT = common dso_local global i64 0, align 8
@CONS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"*INDEFINITE FORM*\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"indef form used on unsupported object\00", align 1
@indefinite_form_loop = common dso_local global i64 0, align 8
@indefinite_form_loop_max = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [63 x i8] c"indefinite form used recursively more then %lu times, aborting\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unreasonable inner length (%u) > %u\00", align 1
@ASN1_C_APPL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"%lu bytes [%u]\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c" IMPLICIT content\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c" INDEFINITE length was %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%lu bytes {\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"} indent = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"der_get_integer: %s\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"integer %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"der_get_heim_integer: %s\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"der_print_hex_heim_integer: %s\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"BIG NUM integer: length %lu %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"der_get_octet_string: %s\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"(length %lu), \00", align 1
@inner_flag = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"der_get_general_string: %s\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"#%02x\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"der_get_oid: %s\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"der_print_heim_oid: %s\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"der_get_enum: %s\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"%lu bytes\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"zero length INDEFINITE data ? indent = %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"internal error in indefinite form loop detection\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"internal error for INDEFINITE form\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @loop(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_7__, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %525, %3
  %37 = load i64, i64* %5, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %532

39:                                               ; preds = %36
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @der_get_tag(i8* %40, i64 %41, i64* %9, i64* %10, i32* %11, i64* %12)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @error_message(i32 %46)
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i64, i64* %12, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i64, i64* %12, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %4, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %5, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* @indent_flag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %75, %68
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %69

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i64, i64* %9, align 8
  %81 = call i8* @der_get_class_name(i64 %80)
  %82 = load i64, i64* %10, align 8
  %83 = call i8* @der_get_type_name(i64 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @der_get_tag_name(i32 %85)
  store i8* %86, i8** %16, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @ASN1_C_UNIV, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i8*, i8** %16, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  br label %99

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @der_get_length(i8* %100, i64 %101, i64* %13, i64* %12)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @error_message(i32 %106)
  %108 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %5, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i64, i64* %5, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %113, %109
  %120 = load i64, i64* %12, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 %120
  store i8* %122, i8** %4, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %5, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @ASN1_INDEFINITE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %187

129:                                              ; preds = %119
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* @ASN1_C_UNIV, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @PRIM, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 133
  br i1 %139, label %170, label %140

140:                                              ; preds = %137, %133, %129
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @ASN1_C_CONTEXT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* @CONS, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %170, label %148

148:                                              ; preds = %144, %140
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* @ASN1_C_UNIV, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* @CONS, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 131
  br i1 %158, label %170, label %159

159:                                              ; preds = %156, %152, %148
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* @ASN1_C_UNIV, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* @CONS, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, 130
  br i1 %169, label %170, label %172

170:                                              ; preds = %167, %156, %144, %137
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %176

172:                                              ; preds = %167, %163, %159
  %173 = load i32, i32* @stdout, align 4
  %174 = call i32 @fflush(i32 %173)
  %175 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %172, %170
  store i32 1, i32* %15, align 4
  %177 = load i64, i64* @indefinite_form_loop, align 8
  %178 = load i64, i64* @indefinite_form_loop_max, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i64, i64* @indefinite_form_loop_max, align 8
  %182 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i64 %181)
  br label %183

183:                                              ; preds = %180, %176
  %184 = load i64, i64* @indefinite_form_loop, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* @indefinite_form_loop, align 8
  %186 = load i64, i64* %5, align 8
  store i64 %186, i64* %13, align 8
  br label %201

187:                                              ; preds = %119
  %188 = load i64, i64* %13, align 8
  %189 = load i64, i64* %5, align 8
  %190 = icmp ugt i64 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %193 = load i32, i32* @stdout, align 4
  %194 = call i32 @fflush(i32 %193)
  %195 = load i64, i64* %13, align 8
  %196 = trunc i64 %195 to i32
  %197 = load i64, i64* %5, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %196, i32 %198)
  br label %200

200:                                              ; preds = %191, %187
  br label %201

201:                                              ; preds = %200, %183
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* @ASN1_C_CONTEXT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i64, i64* %9, align 8
  %207 = load i64, i64* @ASN1_C_APPL, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %226

209:                                              ; preds = %205, %201
  %210 = load i64, i64* %13, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 %210, i32 %211)
  %213 = load i64, i64* %10, align 8
  %214 = load i64, i64* @CONS, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %218 = load i8*, i8** %4, align 8
  %219 = load i64, i64* %13, align 8
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 2
  %222 = call i64 @loop(i8* %218, i64 %219, i32 %221)
  store i64 %222, i64* %14, align 8
  br label %225

223:                                              ; preds = %209
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %216
  br label %495

226:                                              ; preds = %205
  %227 = load i64, i64* %9, align 8
  %228 = load i64, i64* @ASN1_C_UNIV, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %494

230:                                              ; preds = %226
  %231 = load i32, i32* %11, align 4
  switch i32 %231, label %490 [
    i32 140, label %232
    i32 130, label %239
    i32 131, label %239
    i32 135, label %266
    i32 133, label %307
    i32 136, label %389
    i32 132, label %389
    i32 137, label %438
    i32 138, label %438
    i32 128, label %438
    i32 129, label %438
    i32 134, label %453
    i32 139, label %477
  ]

232:                                              ; preds = %230
  %233 = load i8*, i8** %4, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i64 %237)
  br label %493

239:                                              ; preds = %230, %230
  %240 = load i64, i64* %13, align 8
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 %240)
  %242 = load i8*, i8** %4, align 8
  %243 = load i64, i64* %13, align 8
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 2
  %246 = call i64 @loop(i8* %242, i64 %243, i32 %245)
  store i64 %246, i64* %14, align 8
  %247 = load i64, i64* @indent_flag, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %239
  store i32 0, i32* %18, align 4
  br label %250

250:                                              ; preds = %256, %249
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254
  %257 = load i32, i32* %18, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %18, align 4
  br label %250

259:                                              ; preds = %250
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %265

261:                                              ; preds = %239
  %262 = load i32, i32* %6, align 4
  %263 = sdiv i32 %262, 2
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %261, %259
  br label %493

266:                                              ; preds = %230
  %267 = load i64, i64* %13, align 8
  %268 = icmp ule i64 %267, 4
  br i1 %268, label %269, label %282

269:                                              ; preds = %266
  %270 = load i8*, i8** %4, align 8
  %271 = load i64, i64* %13, align 8
  %272 = call i32 @der_get_integer(i8* %270, i64 %271, i32* %19, i32* null)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* %8, align 4
  %277 = call i32 @error_message(i32 %276)
  %278 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %277)
  br label %279

279:                                              ; preds = %275, %269
  %280 = load i32, i32* %19, align 4
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %280)
  br label %306

282:                                              ; preds = %266
  %283 = load i8*, i8** %4, align 8
  %284 = load i64, i64* %13, align 8
  %285 = call i32 @der_get_heim_integer(i8* %283, i64 %284, i32* %20, i32* null)
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = load i32, i32* %8, align 4
  %290 = call i32 @error_message(i32 %289)
  %291 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %290)
  br label %292

292:                                              ; preds = %288, %282
  %293 = call i32 @der_print_hex_heim_integer(i32* %20, i8** %21)
  store i32 %293, i32* %8, align 4
  %294 = load i32, i32* %8, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @error_message(i32 %297)
  %299 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %296, %292
  %301 = load i64, i64* %13, align 8
  %302 = load i8*, i8** %21, align 8
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i64 %301, i8* %302)
  %304 = load i8*, i8** %21, align 8
  %305 = call i32 @free(i8* %304)
  br label %306

306:                                              ; preds = %300, %279
  br label %493

307:                                              ; preds = %230
  %308 = load i8*, i8** %4, align 8
  %309 = load i64, i64* %13, align 8
  %310 = call i32 @der_get_octet_string(i8* %308, i64 %309, %struct.TYPE_8__* %22, i32* null)
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %8, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %307
  %314 = load i32, i32* %8, align 4
  %315 = call i32 @error_message(i32 %314)
  %316 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %313, %307
  %318 = load i64, i64* %13, align 8
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i64 %318)
  %320 = load i32, i32* @inner_flag, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %364

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @der_get_tag(i8* %324, i64 %326, i64* %24, i64* %25, i32* %26, i64* %12)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %322
  %331 = load i64, i64* %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ugt i64 %331, %333
  br i1 %334, label %342, label %335

335:                                              ; preds = %330
  %336 = load i64, i64* %25, align 8
  %337 = load i64, i64* @CONS, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = load i32, i32* %26, align 4
  %341 = icmp ne i32 %340, 131
  br i1 %341, label %342, label %343

342:                                              ; preds = %339, %335, %330, %322
  br label %365

343:                                              ; preds = %339
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = add nsw i32 %349, 2
  %351 = call i64 @loop(i8* %346, i64 %348, i32 %350)
  store i64 0, i64* %23, align 8
  br label %352

352:                                              ; preds = %359, %343
  %353 = load i64, i64* %23, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = icmp ult i64 %353, %355
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %359

359:                                              ; preds = %357
  %360 = load i64, i64* %23, align 8
  %361 = add i64 %360, 1
  store i64 %361, i64* %23, align 8
  br label %352

362:                                              ; preds = %352
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %385

364:                                              ; preds = %317
  br label %365

365:                                              ; preds = %364, %342
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  store i8* %367, i8** %27, align 8
  store i64 0, i64* %23, align 8
  br label %368

368:                                              ; preds = %380, %365
  %369 = load i64, i64* %23, align 8
  %370 = load i64, i64* %13, align 8
  %371 = call i64 @min(i32 16, i64 %370)
  %372 = icmp ult i64 %369, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %368
  %374 = load i8*, i8** %27, align 8
  %375 = load i64, i64* %23, align 8
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %378)
  br label %380

380:                                              ; preds = %373
  %381 = load i64, i64* %23, align 8
  %382 = add i64 %381, 1
  store i64 %382, i64* %23, align 8
  br label %368

383:                                              ; preds = %368
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %385

385:                                              ; preds = %383, %362
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @free(i8* %387)
  br label %493

389:                                              ; preds = %230, %230
  %390 = call i32 @memset(%struct.TYPE_7__* %28, i32 0, i32 16)
  %391 = load i8*, i8** %4, align 8
  %392 = load i64, i64* %13, align 8
  %393 = call i32 @der_get_printable_string(i8* %391, i64 %392, %struct.TYPE_7__* %28, i32* null)
  store i32 %393, i32* %8, align 4
  %394 = load i32, i32* %8, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  %397 = load i32, i32* %8, align 4
  %398 = call i32 @error_message(i32 %397)
  %399 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %398)
  br label %400

400:                                              ; preds = %396, %389
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %402 = load i8*, i8** %401, align 8
  store i8* %402, i8** %29, align 8
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  store i64 0, i64* %30, align 8
  br label %404

404:                                              ; preds = %432, %400
  %405 = load i64, i64* %30, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ult i64 %405, %407
  br i1 %408, label %409, label %435

409:                                              ; preds = %404
  %410 = load i8*, i8** %29, align 8
  %411 = load i64, i64* %30, align 8
  %412 = getelementptr inbounds i8, i8* %410, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = call i32 @isprint(i32 %414) #3
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %409
  %418 = load i8*, i8** %29, align 8
  %419 = load i64, i64* %30, align 8
  %420 = getelementptr inbounds i8, i8* %418, i64 %419
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 %422)
  br label %431

424:                                              ; preds = %409
  %425 = load i8*, i8** %29, align 8
  %426 = load i64, i64* %30, align 8
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %429)
  br label %431

431:                                              ; preds = %424, %417
  br label %432

432:                                              ; preds = %431
  %433 = load i64, i64* %30, align 8
  %434 = add i64 %433, 1
  store i64 %434, i64* %30, align 8
  br label %404

435:                                              ; preds = %404
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %437 = call i32 @der_free_printable_string(%struct.TYPE_7__* %28)
  br label %493

438:                                              ; preds = %230, %230, %230, %230
  %439 = load i8*, i8** %4, align 8
  %440 = load i64, i64* %13, align 8
  %441 = call i32 @der_get_general_string(i8* %439, i64 %440, i8** %31, i32* null)
  store i32 %441, i32* %8, align 4
  %442 = load i32, i32* %8, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %438
  %445 = load i32, i32* %8, align 4
  %446 = call i32 @error_message(i32 %445)
  %447 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %446)
  br label %448

448:                                              ; preds = %444, %438
  %449 = load i8*, i8** %31, align 8
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %449)
  %451 = load i8*, i8** %31, align 8
  %452 = call i32 @free(i8* %451)
  br label %493

453:                                              ; preds = %230
  %454 = load i8*, i8** %4, align 8
  %455 = load i64, i64* %13, align 8
  %456 = call i32 @der_get_oid(i8* %454, i64 %455, i32* %32, i32* null)
  store i32 %456, i32* %8, align 4
  %457 = load i32, i32* %8, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %453
  %460 = load i32, i32* %8, align 4
  %461 = call i32 @error_message(i32 %460)
  %462 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 %461)
  br label %463

463:                                              ; preds = %459, %453
  %464 = call i32 @der_print_heim_oid(i32* %32, i8 signext 46, i8** %33)
  store i32 %464, i32* %8, align 4
  %465 = call i32 @der_free_oid(i32* %32)
  %466 = load i32, i32* %8, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %463
  %469 = load i32, i32* %8, align 4
  %470 = call i32 @error_message(i32 %469)
  %471 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 %470)
  br label %472

472:                                              ; preds = %468, %463
  %473 = load i8*, i8** %33, align 8
  %474 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i8* %473)
  %475 = load i8*, i8** %33, align 8
  %476 = call i32 @free(i8* %475)
  br label %493

477:                                              ; preds = %230
  %478 = load i8*, i8** %4, align 8
  %479 = load i64, i64* %13, align 8
  %480 = call i32 @der_get_integer(i8* %478, i64 %479, i32* %34, i32* null)
  store i32 %480, i32* %8, align 4
  %481 = load i32, i32* %8, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %477
  %484 = load i32, i32* %8, align 4
  %485 = call i32 @error_message(i32 %484)
  %486 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 %485)
  br label %487

487:                                              ; preds = %483, %477
  %488 = load i32, i32* %34, align 4
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i32 %488)
  br label %493

490:                                              ; preds = %230
  %491 = load i64, i64* %13, align 8
  %492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i64 %491)
  br label %493

493:                                              ; preds = %490, %487, %472, %448, %435, %385, %306, %265, %232
  br label %494

494:                                              ; preds = %493, %226
  br label %495

495:                                              ; preds = %494, %225
  %496 = load i32, i32* %15, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %519

498:                                              ; preds = %495
  %499 = load i64, i64* %14, align 8
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %498
  %502 = load i32, i32* %6, align 4
  %503 = sdiv i32 %502, 2
  %504 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i32 %503)
  br label %505

505:                                              ; preds = %501, %498
  %506 = load i64, i64* %14, align 8
  %507 = load i64, i64* %13, align 8
  %508 = icmp ult i64 %506, %507
  br i1 %508, label %509, label %511

509:                                              ; preds = %505
  %510 = load i64, i64* %14, align 8
  store i64 %510, i64* %13, align 8
  br label %511

511:                                              ; preds = %509, %505
  %512 = load i64, i64* @indefinite_form_loop, align 8
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %511
  %515 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i64 0, i64 0))
  br label %516

516:                                              ; preds = %514, %511
  %517 = load i64, i64* @indefinite_form_loop, align 8
  %518 = add nsw i64 %517, -1
  store i64 %518, i64* @indefinite_form_loop, align 8
  br label %525

519:                                              ; preds = %495
  %520 = load i64, i64* %14, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  %523 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0))
  br label %524

524:                                              ; preds = %522, %519
  br label %525

525:                                              ; preds = %524, %516
  %526 = load i64, i64* %13, align 8
  %527 = load i8*, i8** %4, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 %526
  store i8* %528, i8** %4, align 8
  %529 = load i64, i64* %13, align 8
  %530 = load i64, i64* %5, align 8
  %531 = sub i64 %530, %529
  store i64 %531, i64* %5, align 8
  br label %36

532:                                              ; preds = %36
  ret i64 0
}

declare dso_local i32 @der_get_tag(i8*, i64, i64*, i64*, i32*, i64*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @error_message(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @der_get_class_name(i64) #1

declare dso_local i8* @der_get_type_name(i64) #1

declare dso_local i8* @der_get_tag_name(i32) #1

declare dso_local i32 @der_get_length(i8*, i64, i64*, i64*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @der_get_integer(i8*, i64, i32*, i32*) #1

declare dso_local i32 @der_get_heim_integer(i8*, i64, i32*, i32*) #1

declare dso_local i32 @der_print_hex_heim_integer(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @der_get_octet_string(i8*, i64, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @der_get_printable_string(i8*, i64, %struct.TYPE_7__*, i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @der_free_printable_string(%struct.TYPE_7__*) #1

declare dso_local i32 @der_get_general_string(i8*, i64, i8**, i32*) #1

declare dso_local i32 @der_get_oid(i8*, i64, i32*, i32*) #1

declare dso_local i32 @der_print_heim_oid(i32*, i8 signext, i8**) #1

declare dso_local i32 @der_free_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
