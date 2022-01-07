; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kswitch.c_kswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kswitch.c_kswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kswitch_options = type { i64, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@kcc_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Both --cache and --principal given, choose one\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Principal\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"krb5_cc_cache_get_first\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"Select number: \00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Cache number '%s' is invalid\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Cache number '%s' is too large\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"No cache selected\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"krb5_parse_name: %s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Did not find principal: %s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"krb5_cc_get_prefix_ops\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"krb5_cc_resolve: %s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"missing option for kswitch\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"krb5_cc_switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kswitch(%struct.kswitch_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.kswitch_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [10 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i8*, align 8
  store %struct.kswitch_options* %0, %struct.kswitch_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %8, align 8
  %20 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %21 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %26 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @kcc_context, align 4
  %31 = call i8* @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %30, i32 1, i8* %31)
  br label %33

33:                                               ; preds = %29, %24, %3
  %34 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %35 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %172

38:                                               ; preds = %33
  store i32** null, i32*** %10, align 8
  store i64 0, i64* %12, align 8
  %39 = call i32 (...) @rtbl_create()
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @rtbl_add_column_by_id(i32 %40, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @rtbl_add_column_by_id(i32 %42, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @rtbl_set_column_affix_by_id(i32 %44, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @rtbl_add_column_by_id(i32 %46, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @rtbl_set_column_affix_by_id(i32 %48, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @kcc_context, align 4
  %51 = call i64 @krb5_cc_cache_get_first(i32 %50, i32* null, i32* %9)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load i32, i32* @kcc_context, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %55, i32 1, i64 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %38
  br label %59

59:                                               ; preds = %71, %70, %58
  %60 = load i32, i32* @kcc_context, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @krb5_cc_cache_next(i32 %60, i32 %61, i32** %8)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %59
  %65 = load i32, i32* @kcc_context, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @krb5_cc_get_principal(i32 %65, i32* %66, i32* %15)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %59

71:                                               ; preds = %64
  %72 = load i32, i32* @kcc_context, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @krb5_unparse_name(i32 %72, i32 %73, i8** %13)
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* @kcc_context, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @krb5_free_principal(i32 %75, i32 %76)
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @snprintf(i8* %78, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %85 = call i32 @rtbl_add_column_entry_by_id(i32 %83, i32 0, i8* %84)
  %86 = load i32, i32* %14, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @rtbl_add_column_entry_by_id(i32 %86, i32 1, i8* %87)
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @kcc_context, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = call i8* @krb5_cc_get_type(i32 %90, i32* %91)
  %93 = call i32 @rtbl_add_column_entry_by_id(i32 %89, i32 2, i8* %92)
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32**, i32*** %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  %99 = mul i64 %98, 8
  %100 = call i32** @erealloc(i32** %96, i64 %99)
  store i32** %100, i32*** %10, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32**, i32*** %10, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  store i32* %101, i32** %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %59

107:                                              ; preds = %59
  %108 = load i32, i32* @kcc_context, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @krb5_cc_cache_end_seq_get(i32 %108, i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @rtbl_format(i32 %111, i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @rtbl_destroy(i32 %114)
  %116 = call i8* @readline(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i8* %116, i8** %13, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %146

119:                                              ; preds = %107
  %120 = load i8*, i8** %13, align 8
  %121 = call i64 @atoi(i8* %120)
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @kcc_context, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %125, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @kcc_context, align 4
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %133, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i32**, i32*** %10, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %8, align 8
  %142 = load i32**, i32*** %10, align 8
  %143 = load i64, i64* %11, align 8
  %144 = sub i64 %143, 1
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  store i32* null, i32** %145, align 8
  br label %149

146:                                              ; preds = %107
  %147 = load i32, i32* @kcc_context, align 4
  %148 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %147, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %136
  store i64 0, i64* %11, align 8
  br label %150

150:                                              ; preds = %168, %149
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %150
  %155 = load i32**, i32*** %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load i32, i32* @kcc_context, align 4
  %162 = load i32**, i32*** %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @krb5_cc_close(i32 %161, i32* %165)
  br label %167

167:                                              ; preds = %160, %154
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %11, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %11, align 8
  br label %150

171:                                              ; preds = %150
  br label %259

172:                                              ; preds = %33
  %173 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %174 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %172
  %178 = load i32, i32* @kcc_context, align 4
  %179 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %180 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @krb5_parse_name(i32 %178, i32 %181, i32* %17)
  store i64 %182, i64* %7, align 8
  %183 = load i64, i64* %7, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %177
  %186 = load i32, i32* @kcc_context, align 4
  %187 = load i64, i64* %7, align 8
  %188 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %189 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %186, i32 1, i64 %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %185, %177
  %193 = load i32, i32* @kcc_context, align 4
  %194 = load i32, i32* %17, align 4
  %195 = call i64 @krb5_cc_cache_match(i32 %193, i32 %194, i32** %8)
  store i64 %195, i64* %7, align 8
  %196 = load i64, i64* %7, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %192
  %199 = load i32, i32* @kcc_context, align 4
  %200 = load i64, i64* %7, align 8
  %201 = call i8* @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %202 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %203 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %199, i32 1, i64 %200, i8* %201, i32 %204)
  br label %206

206:                                              ; preds = %198, %192
  %207 = load i32, i32* @kcc_context, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @krb5_free_principal(i32 %207, i32 %208)
  br label %258

210:                                              ; preds = %172
  %211 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %212 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %254

215:                                              ; preds = %210
  %216 = load i32, i32* @kcc_context, align 4
  %217 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %218 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call %struct.TYPE_3__* @krb5_cc_get_prefix_ops(i32 %216, i32 %219)
  store %struct.TYPE_3__* %220, %struct.TYPE_3__** %18, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %222 = icmp eq %struct.TYPE_3__* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load i32, i32* @kcc_context, align 4
  %225 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %224, i32 1, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %215
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.kswitch_options*, %struct.kswitch_options** %4, align 8
  %231 = getelementptr inbounds %struct.kswitch_options, %struct.kswitch_options* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @asprintf(i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %229, i64 %232)
  %234 = load i8*, i8** %19, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %226
  %237 = load i32, i32* @kcc_context, align 4
  %238 = call i8* @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %239 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %237, i32 1, i8* %238)
  br label %240

240:                                              ; preds = %236, %226
  %241 = load i32, i32* @kcc_context, align 4
  %242 = load i8*, i8** %19, align 8
  %243 = call i64 @krb5_cc_resolve(i32 %241, i8* %242, i32** %8)
  store i64 %243, i64* %7, align 8
  %244 = load i64, i64* %7, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load i32, i32* @kcc_context, align 4
  %248 = load i64, i64* %7, align 8
  %249 = load i8*, i8** %19, align 8
  %250 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %247, i32 1, i64 %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %246, %240
  %252 = load i8*, i8** %19, align 8
  %253 = call i32 @free(i8* %252)
  br label %257

254:                                              ; preds = %210
  %255 = load i32, i32* @kcc_context, align 4
  %256 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %255, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %251
  br label %258

258:                                              ; preds = %257, %206
  br label %259

259:                                              ; preds = %258, %171
  %260 = load i32, i32* @kcc_context, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = call i64 @krb5_cc_switch(i32 %260, i32* %261)
  store i64 %262, i64* %7, align 8
  %263 = load i64, i64* %7, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load i32, i32* @kcc_context, align 4
  %267 = load i64, i64* %7, align 8
  %268 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %266, i32 1, i64 %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  br label %269

269:                                              ; preds = %265, %259
  ret i32 0
}

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i8* @N_(i8*, i8*) #1

declare dso_local i32 @rtbl_create(...) #1

declare dso_local i32 @rtbl_add_column_by_id(i32, i32, i8*, i32) #1

declare dso_local i32 @rtbl_set_column_affix_by_id(i32, i32, i8*, i8*) #1

declare dso_local i64 @krb5_cc_cache_get_first(i32, i32*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_cc_cache_next(i32, i32, i32**) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32*, i32*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rtbl_add_column_entry_by_id(i32, i32, i8*) #1

declare dso_local i8* @krb5_cc_get_type(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32** @erealloc(i32**, i64) #1

declare dso_local i32 @krb5_cc_cache_end_seq_get(i32, i32) #1

declare dso_local i32 @rtbl_format(i32, i32) #1

declare dso_local i32 @rtbl_destroy(i32) #1

declare dso_local i8* @readline(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i64 @krb5_parse_name(i32, i32, i32*) #1

declare dso_local i64 @krb5_cc_cache_match(i32, i32, i32**) #1

declare dso_local %struct.TYPE_3__* @krb5_cc_get_prefix_ops(i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i64) #1

declare dso_local i64 @krb5_cc_resolve(i32, i8*, i32**) #1

declare dso_local i64 @krb5_cc_switch(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
