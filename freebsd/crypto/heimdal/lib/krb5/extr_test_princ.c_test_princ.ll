; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_princ.c_test_princ.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_princ.c_test_princ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"lha@SU.SE\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lha\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"krb5_parse_name\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1
@KRB5_PRINCIPAL_UNPARSE_NO_REALM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"p != p2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"SU.SE\00", align 1
@KRB5_PRINCIPAL_UNPARSE_SHORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"'%s' != '%s'\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SAMBA.ORG\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"p == p2\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"(ignoring realms) p != p2\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s == %s\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"krb5_unparse_name_short\00", align 1
@KRB5_PRINCIPAL_PARSE_NO_REALM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [44 x i8] c"Should have failed to parse %s a short name\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"krb5_unparse_name_norealm\00", align 1
@KRB5_PRINCIPAL_PARSE_REQUIRE_REALM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [57 x i8] c"Should have failed to parse %s because it lacked a realm\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"test\\ principal@SU.SE\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"test principal@SU.SE\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"krb5_unparse_name_flags\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"q '%s' != '%s'\00", align 1
@KRB5_PRINCIPAL_UNPARSE_DISPLAY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"nq '%s' != '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_princ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_princ(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* null, i8** %8, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @krb5_parse_name(i32 %12, i8* %13, i32* %10)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %18, i32 1, i64 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @krb5_unparse_name(i32 %22, i32 %23, i8** %7)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %28, i32 1, i64 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %37, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_NO_REALM, align 4
  %47 = call i64 @krb5_unparse_name_flags(i32 %44, i32 %45, i32 %46, i8** %7)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %2, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %51, i32 1, i64 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %2, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %60, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @krb5_principal_get_realm(i32 %67, i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %70, i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %64
  %75 = load i8*, i8** %8, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %64
  %78 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %2, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @krb5_parse_name(i32 %80, i8* %81, i32* %11)
  store i64 %82, i64* %6, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* %2, align 4
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %88, i32 1, i64 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %79
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @krb5_principal_compare(i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %2, align 4
  %99 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %98, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %91
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @krb5_free_principal(i32 %101, i32 %102)
  %104 = load i32, i32* %2, align 4
  %105 = call i64 @krb5_set_default_realm(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load i32, i32* %2, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %109, i32 1, i64 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %100
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_SHORT, align 4
  %116 = call i64 @krb5_unparse_name_flags(i32 %113, i32 %114, i32 %115, i8** %7)
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* %2, align 4
  %121 = load i64, i64* %6, align 8
  %122 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %120, i32 1, i64 %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %112
  %124 = load i8*, i8** %4, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* %2, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %129, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %130, i8* %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32, i32* %2, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = call i64 @krb5_parse_name(i32 %136, i8* %137, i32* %11)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %142, i32 1, i64 %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %133
  %146 = load i32, i32* %2, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i64 @krb5_principal_compare(i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %2, align 4
  %153 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %152, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %145
  %155 = load i32, i32* %2, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @krb5_free_principal(i32 %155, i32 %156)
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i64 @krb5_unparse_name(i32 %158, i32 %159, i8** %7)
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i32, i32* %2, align 4
  %165 = load i64, i64* %6, align 8
  %166 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %164, i32 1, i64 %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %154
  %168 = load i8*, i8** %3, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i64 @strcmp(i8* %168, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* %2, align 4
  %174 = load i8*, i8** %3, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %173, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %174, i8* %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @free(i8* %178)
  %180 = load i32, i32* %2, align 4
  %181 = call i64 @krb5_set_default_realm(i32 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* %2, align 4
  %186 = load i64, i64* %6, align 8
  %187 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %185, i32 1, i64 %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %184, %177
  %189 = load i32, i32* %2, align 4
  %190 = load i8*, i8** %4, align 8
  %191 = call i64 @krb5_parse_name(i32 %189, i8* %190, i32* %11)
  store i64 %191, i64* %6, align 8
  %192 = load i64, i64* %6, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32, i32* %2, align 4
  %196 = load i64, i64* %6, align 8
  %197 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %195, i32 1, i64 %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %198

198:                                              ; preds = %194, %188
  %199 = load i32, i32* %2, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i64 @krb5_principal_compare(i32 %199, i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* %2, align 4
  %206 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %205, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %207

207:                                              ; preds = %204, %198
  %208 = load i32, i32* %2, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @krb5_principal_compare_any_realm(i32 %208, i32 %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %2, align 4
  %215 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %214, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %207
  %217 = load i32, i32* %2, align 4
  %218 = load i32, i32* %11, align 4
  %219 = call i64 @krb5_unparse_name(i32 %217, i32 %218, i8** %7)
  store i64 %219, i64* %6, align 8
  %220 = load i64, i64* %6, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* %2, align 4
  %224 = load i64, i64* %6, align 8
  %225 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %223, i32 1, i64 %224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %226

226:                                              ; preds = %222, %216
  %227 = load i8*, i8** %3, align 8
  %228 = load i8*, i8** %7, align 8
  %229 = call i64 @strcmp(i8* %227, i8* %228)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i32, i32* %2, align 4
  %233 = load i8*, i8** %3, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %232, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %231, %226
  %237 = load i8*, i8** %7, align 8
  %238 = call i32 @free(i8* %237)
  %239 = load i32, i32* %2, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @krb5_free_principal(i32 %239, i32 %240)
  %242 = load i32, i32* %2, align 4
  %243 = load i8*, i8** %3, align 8
  %244 = call i64 @krb5_parse_name(i32 %242, i8* %243, i32* %11)
  store i64 %244, i64* %6, align 8
  %245 = load i64, i64* %6, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %236
  %248 = load i32, i32* %2, align 4
  %249 = load i64, i64* %6, align 8
  %250 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %248, i32 1, i64 %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %251

251:                                              ; preds = %247, %236
  %252 = load i32, i32* %2, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call i64 @krb5_principal_compare(i32 %252, i32 %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %251
  %258 = load i32, i32* %2, align 4
  %259 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %258, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %251
  %261 = load i32, i32* %2, align 4
  %262 = load i32, i32* %11, align 4
  %263 = call i64 @krb5_unparse_name(i32 %261, i32 %262, i8** %7)
  store i64 %263, i64* %6, align 8
  %264 = load i64, i64* %6, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load i32, i32* %2, align 4
  %268 = load i64, i64* %6, align 8
  %269 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %267, i32 1, i64 %268, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %270

270:                                              ; preds = %266, %260
  %271 = load i8*, i8** %3, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = call i64 @strcmp(i8* %271, i8* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load i32, i32* %2, align 4
  %277 = load i8*, i8** %3, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %276, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %277, i8* %278)
  br label %280

280:                                              ; preds = %275, %270
  %281 = load i8*, i8** %7, align 8
  %282 = call i32 @free(i8* %281)
  %283 = load i32, i32* %2, align 4
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @krb5_free_principal(i32 %283, i32 %284)
  %286 = load i32, i32* %2, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_SHORT, align 4
  %289 = call i64 @krb5_unparse_name_flags(i32 %286, i32 %287, i32 %288, i8** %7)
  store i64 %289, i64* %6, align 8
  %290 = load i64, i64* %6, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %280
  %293 = load i32, i32* %2, align 4
  %294 = load i64, i64* %6, align 8
  %295 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %293, i32 1, i64 %294, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %296

296:                                              ; preds = %292, %280
  %297 = load i8*, i8** %3, align 8
  %298 = load i8*, i8** %7, align 8
  %299 = call i64 @strcmp(i8* %297, i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i32, i32* %2, align 4
  %303 = load i8*, i8** %3, align 8
  %304 = load i8*, i8** %7, align 8
  %305 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %302, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %303, i8* %304)
  br label %306

306:                                              ; preds = %301, %296
  %307 = load i8*, i8** %7, align 8
  %308 = call i32 @free(i8* %307)
  %309 = load i32, i32* %2, align 4
  %310 = load i32, i32* %10, align 4
  %311 = call i64 @krb5_unparse_name(i32 %309, i32 %310, i8** %7)
  store i64 %311, i64* %6, align 8
  %312 = load i64, i64* %6, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %306
  %315 = load i32, i32* %2, align 4
  %316 = load i64, i64* %6, align 8
  %317 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %315, i32 1, i64 %316, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %318

318:                                              ; preds = %314, %306
  %319 = load i8*, i8** %3, align 8
  %320 = load i8*, i8** %7, align 8
  %321 = call i64 @strcmp(i8* %319, i8* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = load i32, i32* %2, align 4
  %325 = load i8*, i8** %3, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %324, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %325, i8* %326)
  br label %328

328:                                              ; preds = %323, %318
  %329 = load i8*, i8** %7, align 8
  %330 = call i32 @free(i8* %329)
  %331 = load i32, i32* %2, align 4
  %332 = load i8*, i8** %3, align 8
  %333 = load i32, i32* @KRB5_PRINCIPAL_PARSE_NO_REALM, align 4
  %334 = call i64 @krb5_parse_name_flags(i32 %331, i8* %332, i32 %333, i32* %11)
  store i64 %334, i64* %6, align 8
  %335 = load i64, i64* %6, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %328
  %338 = load i32, i32* %2, align 4
  %339 = load i64, i64* %6, align 8
  %340 = load i8*, i8** %3, align 8
  %341 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %338, i32 1, i64 %339, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i8* %340)
  br label %342

342:                                              ; preds = %337, %328
  %343 = load i32, i32* %2, align 4
  %344 = load i8*, i8** %4, align 8
  %345 = load i32, i32* @KRB5_PRINCIPAL_PARSE_NO_REALM, align 4
  %346 = call i64 @krb5_parse_name_flags(i32 %343, i8* %344, i32 %345, i32* %11)
  store i64 %346, i64* %6, align 8
  %347 = load i64, i64* %6, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %342
  %350 = load i32, i32* %2, align 4
  %351 = load i64, i64* %6, align 8
  %352 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %350, i32 1, i64 %351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %353

353:                                              ; preds = %349, %342
  %354 = load i32, i32* %2, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_NO_REALM, align 4
  %357 = call i64 @krb5_unparse_name_flags(i32 %354, i32 %355, i32 %356, i8** %7)
  store i64 %357, i64* %6, align 8
  %358 = load i32, i32* %2, align 4
  %359 = load i32, i32* %11, align 4
  %360 = call i32 @krb5_free_principal(i32 %358, i32 %359)
  %361 = load i64, i64* %6, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %353
  %364 = load i32, i32* %2, align 4
  %365 = load i64, i64* %6, align 8
  %366 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %364, i32 1, i64 %365, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %367

367:                                              ; preds = %363, %353
  %368 = load i8*, i8** %4, align 8
  %369 = load i8*, i8** %7, align 8
  %370 = call i64 @strcmp(i8* %368, i8* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = load i32, i32* %2, align 4
  %374 = load i8*, i8** %4, align 8
  %375 = load i8*, i8** %7, align 8
  %376 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %373, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %374, i8* %375)
  br label %377

377:                                              ; preds = %372, %367
  %378 = load i8*, i8** %7, align 8
  %379 = call i32 @free(i8* %378)
  %380 = load i32, i32* %2, align 4
  %381 = load i8*, i8** %4, align 8
  %382 = load i32, i32* @KRB5_PRINCIPAL_PARSE_REQUIRE_REALM, align 4
  %383 = call i64 @krb5_parse_name_flags(i32 %380, i8* %381, i32 %382, i32* %11)
  store i64 %383, i64* %6, align 8
  %384 = load i64, i64* %6, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %391, label %386

386:                                              ; preds = %377
  %387 = load i32, i32* %2, align 4
  %388 = load i64, i64* %6, align 8
  %389 = load i8*, i8** %4, align 8
  %390 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %387, i32 1, i64 %388, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i8* %389)
  br label %391

391:                                              ; preds = %386, %377
  %392 = load i32, i32* %2, align 4
  %393 = load i8*, i8** %3, align 8
  %394 = load i32, i32* @KRB5_PRINCIPAL_PARSE_REQUIRE_REALM, align 4
  %395 = call i64 @krb5_parse_name_flags(i32 %392, i8* %393, i32 %394, i32* %11)
  store i64 %395, i64* %6, align 8
  %396 = load i64, i64* %6, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %391
  %399 = load i32, i32* %2, align 4
  %400 = load i64, i64* %6, align 8
  %401 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %399, i32 1, i64 %400, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %402

402:                                              ; preds = %398, %391
  %403 = load i32, i32* %2, align 4
  %404 = load i32, i32* %10, align 4
  %405 = load i32, i32* %11, align 4
  %406 = call i64 @krb5_principal_compare(i32 %403, i32 %404, i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %2, align 4
  %410 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %409, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %411

411:                                              ; preds = %408, %402
  %412 = load i32, i32* %2, align 4
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_NO_REALM, align 4
  %415 = call i64 @krb5_unparse_name_flags(i32 %412, i32 %413, i32 %414, i8** %7)
  store i64 %415, i64* %6, align 8
  %416 = load i32, i32* %2, align 4
  %417 = load i32, i32* %11, align 4
  %418 = call i32 @krb5_free_principal(i32 %416, i32 %417)
  %419 = load i64, i64* %6, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %411
  %422 = load i32, i32* %2, align 4
  %423 = load i64, i64* %6, align 8
  %424 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %422, i32 1, i64 %423, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %425

425:                                              ; preds = %421, %411
  %426 = load i8*, i8** %4, align 8
  %427 = load i8*, i8** %7, align 8
  %428 = call i64 @strcmp(i8* %426, i8* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = load i32, i32* %2, align 4
  %432 = load i8*, i8** %4, align 8
  %433 = load i8*, i8** %7, align 8
  %434 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %431, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %432, i8* %433)
  br label %435

435:                                              ; preds = %430, %425
  %436 = load i8*, i8** %7, align 8
  %437 = call i32 @free(i8* %436)
  %438 = load i32, i32* %2, align 4
  %439 = load i32, i32* %10, align 4
  %440 = call i32 @krb5_free_principal(i32 %438, i32 %439)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8** %5, align 8
  %441 = load i32, i32* %2, align 4
  %442 = load i8*, i8** %3, align 8
  %443 = call i64 @krb5_parse_name_flags(i32 %441, i8* %442, i32 0, i32* %10)
  store i64 %443, i64* %6, align 8
  %444 = load i64, i64* %6, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %435
  %447 = load i32, i32* %2, align 4
  %448 = load i64, i64* %6, align 8
  %449 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %447, i32 1, i64 %448, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %450

450:                                              ; preds = %446, %435
  %451 = load i32, i32* %2, align 4
  %452 = load i32, i32* %10, align 4
  %453 = call i64 @krb5_unparse_name_flags(i32 %451, i32 %452, i32 0, i8** %7)
  store i64 %453, i64* %6, align 8
  %454 = load i64, i64* %6, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %450
  %457 = load i32, i32* %2, align 4
  %458 = load i64, i64* %6, align 8
  %459 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %457, i32 1, i64 %458, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %460

460:                                              ; preds = %456, %450
  %461 = load i8*, i8** %3, align 8
  %462 = load i8*, i8** %7, align 8
  %463 = call i64 @strcmp(i8* %461, i8* %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = load i32, i32* %2, align 4
  %467 = load i8*, i8** %3, align 8
  %468 = load i8*, i8** %7, align 8
  %469 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %466, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %467, i8* %468)
  br label %470

470:                                              ; preds = %465, %460
  %471 = load i8*, i8** %7, align 8
  %472 = call i32 @free(i8* %471)
  %473 = load i32, i32* %2, align 4
  %474 = load i32, i32* %10, align 4
  %475 = load i32, i32* @KRB5_PRINCIPAL_UNPARSE_DISPLAY, align 4
  %476 = call i64 @krb5_unparse_name_flags(i32 %473, i32 %474, i32 %475, i8** %7)
  store i64 %476, i64* %6, align 8
  %477 = load i64, i64* %6, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %470
  %480 = load i32, i32* %2, align 4
  %481 = load i64, i64* %6, align 8
  %482 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %480, i32 1, i64 %481, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %483

483:                                              ; preds = %479, %470
  %484 = load i8*, i8** %5, align 8
  %485 = load i8*, i8** %7, align 8
  %486 = call i64 @strcmp(i8* %484, i8* %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %483
  %489 = load i32, i32* %2, align 4
  %490 = load i8*, i8** %5, align 8
  %491 = load i8*, i8** %7, align 8
  %492 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %489, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %490, i8* %491)
  br label %493

493:                                              ; preds = %488, %483
  %494 = load i8*, i8** %7, align 8
  %495 = call i32 @free(i8* %494)
  %496 = load i32, i32* %2, align 4
  %497 = load i32, i32* %10, align 4
  %498 = call i32 @krb5_free_principal(i32 %496, i32 %497)
  ret void
}

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_unparse_name_flags(i32, i32, i32, i8**) #1

declare dso_local i8* @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_principal_compare(i32, i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_set_default_realm(i32, i8*) #1

declare dso_local i32 @krb5_principal_compare_any_realm(i32, i32, i32) #1

declare dso_local i64 @krb5_parse_name_flags(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
