; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_dhparam.c_dhparam_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_dhparam.c_dhparam_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@dhparam_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@DEFBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"generator may not be chosen for DSA parameters\0A\00", align 1
@dh_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Generating DSA parameters, %d bit long prime\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Generating DH parameters, %d bit long safe prime, generator %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"This is going to take a long time\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to load DSA parameters\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to load DH parameters\0A\00", align 1
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"WARNING: p value is not prime\0A\00", align 1
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"WARNING: p value is not a safe prime\0A\00", align 1
@DH_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"WARNING: q value is not a prime\0A\00", align 1
@DH_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"WARNING: q value is invalid\0A\00", align 1
@DH_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"WARNING: j value is invalid\0A\00", align 1
@DH_UNABLE_TO_CHECK_GENERATOR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"WARNING: unable to check the generator value\0A\00", align 1
@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"WARNING: the g value is not a generator\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"DH parameters appear to be ok.\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"ERROR: Invalid parameters generated\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"print a BN\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"static DH *get_dh%d(void)\0A{\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dhp\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"dhg\00", align 1
@.str.20 = private unnamed_addr constant [85 x i8] c"    DH *dh = DH_new();\0A    BIGNUM *p, *g;\0A\0A    if (dh == NULL)\0A        return NULL;\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"    p = BN_bin2bn(dhp_%d, sizeof(dhp_%d), NULL);\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"    g = BN_bin2bn(dhg_%d, sizeof(dhg_%d), NULL);\0A\00", align 1
@.str.23 = private unnamed_addr constant [167 x i8] c"    if (p == NULL || g == NULL\0A            || !DH_set0_pqg(dh, p, NULL, g)) {\0A        DH_free(dh);\0A        BN_free(p);\0A        BN_free(g);\0A        return NULL;\0A    }\0A\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"    if (!DH_set_length(dh, %ld)) {\0A        DH_free(dh);\0A        return NULL;\0A    }\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"    return dh;\0A}\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"unable to write DH parameters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhparam_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %34, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* @dhparam_options, align 4
  %38 = call i8* @opt_init(i32 %35, i8** %36, i32 %37)
  store i8* %38, i8** %10, align 8
  br label %39

39:                                               ; preds = %86, %2
  %40 = call i32 (...) @opt_next()
  store i32 %40, i32* %23, align 4
  %41 = icmp ne i32 %40, 137
  br i1 %41, label %42, label %87

42:                                               ; preds = %39
  %43 = load i32, i32* %23, align 4
  switch i32 %43, label %86 [
    i32 137, label %44
    i32 136, label %44
    i32 135, label %49
    i32 133, label %52
    i32 130, label %59
    i32 134, label %66
    i32 131, label %68
    i32 138, label %70
    i32 140, label %73
    i32 128, label %74
    i32 139, label %75
    i32 141, label %76
    i32 143, label %77
    i32 142, label %78
    i32 132, label %79
    i32 129, label %80
  ]

44:                                               ; preds = %42, %42
  br label %45

45:                                               ; preds = %64, %57, %44
  %46 = load i32*, i32** @bio_err, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %462

49:                                               ; preds = %42
  %50 = load i32, i32* @dhparam_options, align 4
  %51 = call i32 @opt_help(i32 %50)
  store i32 0, i32* %16, align 4
  br label %462

52:                                               ; preds = %42
  %53 = call i8* (...) @opt_arg()
  %54 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %55 = call i32 @opt_format(i8* %53, i32 %54, i32* %19)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %45

58:                                               ; preds = %52
  br label %86

59:                                               ; preds = %42
  %60 = call i8* (...) @opt_arg()
  %61 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %62 = call i32 @opt_format(i8* %60, i32 %61, i32* %20)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %45

65:                                               ; preds = %59
  br label %86

66:                                               ; preds = %42
  %67 = call i8* (...) @opt_arg()
  store i8* %67, i8** %8, align 8
  br label %86

68:                                               ; preds = %42
  %69 = call i8* (...) @opt_arg()
  store i8* %69, i8** %9, align 8
  br label %86

70:                                               ; preds = %42
  %71 = call i8* (...) @opt_arg()
  %72 = call i32* @setup_engine(i8* %71, i32 0)
  store i32* %72, i32** %11, align 8
  br label %86

73:                                               ; preds = %42
  store i32 1, i32* %21, align 4
  br label %86

74:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  br label %86

75:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %86

76:                                               ; preds = %42
  store i32 1, i32* %15, align 4
  br label %86

77:                                               ; preds = %42
  store i32 2, i32* %18, align 4
  br label %86

78:                                               ; preds = %42
  store i32 5, i32* %18, align 4
  br label %86

79:                                               ; preds = %42
  store i32 1, i32* %22, align 4
  br label %86

80:                                               ; preds = %42
  %81 = load i32, i32* %23, align 4
  %82 = call i32 @opt_rand(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %462

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %42, %85, %79, %78, %77, %76, %75, %74, %73, %70, %68, %66, %65, %58
  br label %39

87:                                               ; preds = %39
  %88 = call i32 (...) @opt_num_rest()
  store i32 %88, i32* %3, align 4
  %89 = call i8** (...) @opt_rest()
  store i8** %89, i8*** %4, align 8
  %90 = load i8**, i8*** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @opt_int(i8* %97, i32* %17)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %17, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %94
  br label %462

104:                                              ; preds = %100, %87
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @DEFBITS, align 4
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %110, %107, %104
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** @bio_err, align 8
  %120 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %462

121:                                              ; preds = %115, %112
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %20, align 4
  %124 = call i32* @bio_open_default(i8* %122, i8 signext 119, i32 %123)
  store i32* %124, i32** %6, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %462

128:                                              ; preds = %121
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %18, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  store i32 2, i32* %18, align 4
  br label %135

135:                                              ; preds = %134, %131, %128
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %211

138:                                              ; preds = %135
  %139 = call i32* (...) @BN_GENCB_new()
  store i32* %139, i32** %24, align 8
  %140 = load i32*, i32** %24, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32*, i32** @bio_err, align 8
  %144 = call i32 @ERR_print_errors(i32* %143)
  br label %462

145:                                              ; preds = %138
  %146 = load i32*, i32** %24, align 8
  %147 = load i32, i32* @dh_cb, align 4
  %148 = load i32*, i32** @bio_err, align 8
  %149 = call i32 @BN_GENCB_set(i32* %146, i32 %147, i32* %148)
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %145
  %153 = call i32* (...) @DSA_new()
  store i32* %153, i32** %25, align 8
  %154 = load i32*, i32** @bio_err, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i32*, i32** %25, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %152
  %160 = load i32*, i32** %25, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32*, i32** %24, align 8
  %163 = call i32 @DSA_generate_parameters_ex(i32* %160, i32 %161, i32* null, i32 0, i32* null, i32* null, i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %159, %152
  %166 = load i32*, i32** %25, align 8
  %167 = call i32 @DSA_free(i32* %166)
  %168 = load i32*, i32** %24, align 8
  %169 = call i32 @BN_GENCB_free(i32* %168)
  %170 = load i32*, i32** @bio_err, align 8
  %171 = call i32 @ERR_print_errors(i32* %170)
  br label %462

172:                                              ; preds = %159
  %173 = load i32*, i32** %25, align 8
  %174 = call i32* @DSA_dup_DH(i32* %173)
  store i32* %174, i32** %7, align 8
  %175 = load i32*, i32** %25, align 8
  %176 = call i32 @DSA_free(i32* %175)
  %177 = load i32*, i32** %7, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load i32*, i32** %24, align 8
  %181 = call i32 @BN_GENCB_free(i32* %180)
  %182 = load i32*, i32** @bio_err, align 8
  %183 = call i32 @ERR_print_errors(i32* %182)
  br label %462

184:                                              ; preds = %172
  br label %208

185:                                              ; preds = %145
  %186 = call i32* (...) @DH_new()
  store i32* %186, i32** %7, align 8
  %187 = load i32*, i32** @bio_err, align 8
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %18, align 4
  %190 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %187, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %189)
  %191 = load i32*, i32** @bio_err, align 8
  %192 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %193 = load i32*, i32** %7, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %185
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32*, i32** %24, align 8
  %200 = call i32 @DH_generate_parameters_ex(i32* %196, i32 %197, i32 %198, i32* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %195, %185
  %203 = load i32*, i32** %24, align 8
  %204 = call i32 @BN_GENCB_free(i32* %203)
  %205 = load i32*, i32** @bio_err, align 8
  %206 = call i32 @ERR_print_errors(i32* %205)
  br label %462

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207, %184
  %209 = load i32*, i32** %24, align 8
  %210 = call i32 @BN_GENCB_free(i32* %209)
  br label %280

211:                                              ; preds = %135
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* %19, align 4
  %214 = call i32* @bio_open_default(i8* %212, i8 signext 114, i32 %213)
  store i32* %214, i32** %5, align 8
  %215 = load i32*, i32** %5, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %462

218:                                              ; preds = %211
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %250

221:                                              ; preds = %218
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* @FORMAT_ASN1, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32*, i32** %5, align 8
  %227 = call i32* @d2i_DSAparams_bio(i32* %226, i32* null)
  store i32* %227, i32** %26, align 8
  br label %231

228:                                              ; preds = %221
  %229 = load i32*, i32** %5, align 8
  %230 = call i32* @PEM_read_bio_DSAparams(i32* %229, i32* null, i32* null, i32* null)
  store i32* %230, i32** %26, align 8
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i32*, i32** %26, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load i32*, i32** @bio_err, align 8
  %236 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %237 = load i32*, i32** @bio_err, align 8
  %238 = call i32 @ERR_print_errors(i32* %237)
  br label %462

239:                                              ; preds = %231
  %240 = load i32*, i32** %26, align 8
  %241 = call i32* @DSA_dup_DH(i32* %240)
  store i32* %241, i32** %7, align 8
  %242 = load i32*, i32** %26, align 8
  %243 = call i32 @DSA_free(i32* %242)
  %244 = load i32*, i32** %7, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i32*, i32** @bio_err, align 8
  %248 = call i32 @ERR_print_errors(i32* %247)
  br label %462

249:                                              ; preds = %239
  br label %279

250:                                              ; preds = %218
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* @FORMAT_ASN1, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %250
  %255 = load i32*, i32** %5, align 8
  %256 = call i32* @d2i_DHparams_bio(i32* %255, i32* null)
  store i32* %256, i32** %7, align 8
  %257 = load i32*, i32** %7, align 8
  %258 = icmp eq i32* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load i32*, i32** %5, align 8
  %261 = call i64 @BIO_reset(i32* %260)
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32*, i32** %5, align 8
  %265 = call i32* @d2i_DHxparams_bio(i32* %264, i32* null)
  store i32* %265, i32** %7, align 8
  br label %266

266:                                              ; preds = %263, %259, %254
  br label %270

267:                                              ; preds = %250
  %268 = load i32*, i32** %5, align 8
  %269 = call i32* @PEM_read_bio_DHparams(i32* %268, i32* null, i32* null, i32* null)
  store i32* %269, i32** %7, align 8
  br label %270

270:                                              ; preds = %267, %266
  %271 = load i32*, i32** %7, align 8
  %272 = icmp eq i32* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i32*, i32** @bio_err, align 8
  %275 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %274, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %276 = load i32*, i32** @bio_err, align 8
  %277 = call i32 @ERR_print_errors(i32* %276)
  br label %462

278:                                              ; preds = %270
  br label %279

279:                                              ; preds = %278, %249
  br label %280

280:                                              ; preds = %279, %208
  %281 = load i32, i32* %14, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i32*, i32** %6, align 8
  %285 = load i32*, i32** %7, align 8
  %286 = call i32 @DHparams_print(i32* %284, i32* %285)
  br label %287

287:                                              ; preds = %283, %280
  %288 = load i32, i32* %21, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %369

290:                                              ; preds = %287
  %291 = load i32*, i32** %7, align 8
  %292 = call i32 @DH_check(i32* %291, i32* %13)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %290
  %295 = load i32*, i32** @bio_err, align 8
  %296 = call i32 @ERR_print_errors(i32* %295)
  br label %462

297:                                              ; preds = %290
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %297
  %303 = load i32*, i32** @bio_err, align 8
  %304 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %303, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %297
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i32*, i32** @bio_err, align 8
  %312 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %311, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %313

313:                                              ; preds = %310, %305
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load i32*, i32** @bio_err, align 8
  %320 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %319, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %313
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load i32*, i32** @bio_err, align 8
  %328 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %327, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %329

329:                                              ; preds = %326, %321
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i32*, i32** @bio_err, align 8
  %336 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %335, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* @DH_UNABLE_TO_CHECK_GENERATOR, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %337
  %343 = load i32*, i32** @bio_err, align 8
  %344 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %343, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %345

345:                                              ; preds = %342, %337
  %346 = load i32, i32* %13, align 4
  %347 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load i32*, i32** @bio_err, align 8
  %352 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %351, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %345
  %354 = load i32, i32* %13, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i32*, i32** @bio_err, align 8
  %358 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %357, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %359

359:                                              ; preds = %356, %353
  %360 = load i32, i32* %17, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load i32, i32* %13, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %362
  %366 = load i32*, i32** @bio_err, align 8
  %367 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %366, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  br label %462

368:                                              ; preds = %362, %359
  br label %369

369:                                              ; preds = %368, %287
  %370 = load i32, i32* %15, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %419

372:                                              ; preds = %369
  %373 = load i32*, i32** %7, align 8
  %374 = call i32 @DH_size(i32* %373)
  store i32 %374, i32* %28, align 4
  %375 = load i32*, i32** %7, align 8
  %376 = call i32 @DH_bits(i32* %375)
  store i32 %376, i32* %29, align 4
  %377 = load i32*, i32** %7, align 8
  %378 = call i32 @DH_get0_pqg(i32* %377, i32** %30, i32** null, i32** %31)
  %379 = load i32, i32* %28, align 4
  %380 = call i8* @app_malloc(i32 %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i8* %380, i8** %27, align 8
  %381 = load i32*, i32** %6, align 8
  %382 = load i32, i32* %29, align 4
  %383 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %381, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %382)
  %384 = load i32*, i32** %6, align 8
  %385 = load i32*, i32** %30, align 8
  %386 = load i32, i32* %29, align 4
  %387 = load i8*, i8** %27, align 8
  %388 = call i32 @print_bignum_var(i32* %384, i32* %385, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %386, i8* %387)
  %389 = load i32*, i32** %6, align 8
  %390 = load i32*, i32** %31, align 8
  %391 = load i32, i32* %29, align 4
  %392 = load i8*, i8** %27, align 8
  %393 = call i32 @print_bignum_var(i32* %389, i32* %390, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %391, i8* %392)
  %394 = load i32*, i32** %6, align 8
  %395 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %394, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  %396 = load i32*, i32** %6, align 8
  %397 = load i32, i32* %29, align 4
  %398 = load i32, i32* %29, align 4
  %399 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %396, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0), i32 %397, i32 %398)
  %400 = load i32*, i32** %6, align 8
  %401 = load i32, i32* %29, align 4
  %402 = load i32, i32* %29, align 4
  %403 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %400, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0), i32 %401, i32 %402)
  %404 = load i32*, i32** %6, align 8
  %405 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %404, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.23, i64 0, i64 0))
  %406 = load i32*, i32** %7, align 8
  %407 = call i32 @DH_get_length(i32* %406)
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %372
  %410 = load i32*, i32** %6, align 8
  %411 = load i32*, i32** %7, align 8
  %412 = call i32 @DH_get_length(i32* %411)
  %413 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %410, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.24, i64 0, i64 0), i32 %412)
  br label %414

414:                                              ; preds = %409, %372
  %415 = load i32*, i32** %6, align 8
  %416 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %415, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %417 = load i8*, i8** %27, align 8
  %418 = call i32 @OPENSSL_free(i8* %417)
  br label %419

419:                                              ; preds = %414, %369
  %420 = load i32, i32* %22, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %461, label %422

422:                                              ; preds = %419
  %423 = load i32*, i32** %7, align 8
  %424 = call i32 @DH_get0_pqg(i32* %423, i32** null, i32** %32, i32** null)
  %425 = load i32, i32* %20, align 4
  %426 = load i32, i32* @FORMAT_ASN1, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %440

428:                                              ; preds = %422
  %429 = load i32*, i32** %32, align 8
  %430 = icmp ne i32* %429, null
  br i1 %430, label %431, label %435

431:                                              ; preds = %428
  %432 = load i32*, i32** %6, align 8
  %433 = load i32*, i32** %7, align 8
  %434 = call i32 @i2d_DHxparams_bio(i32* %432, i32* %433)
  store i32 %434, i32* %13, align 4
  br label %439

435:                                              ; preds = %428
  %436 = load i32*, i32** %6, align 8
  %437 = load i32*, i32** %7, align 8
  %438 = call i32 @i2d_DHparams_bio(i32* %436, i32* %437)
  store i32 %438, i32* %13, align 4
  br label %439

439:                                              ; preds = %435, %431
  br label %452

440:                                              ; preds = %422
  %441 = load i32*, i32** %32, align 8
  %442 = icmp ne i32* %441, null
  br i1 %442, label %443, label %447

443:                                              ; preds = %440
  %444 = load i32*, i32** %6, align 8
  %445 = load i32*, i32** %7, align 8
  %446 = call i32 @PEM_write_bio_DHxparams(i32* %444, i32* %445)
  store i32 %446, i32* %13, align 4
  br label %451

447:                                              ; preds = %440
  %448 = load i32*, i32** %6, align 8
  %449 = load i32*, i32** %7, align 8
  %450 = call i32 @PEM_write_bio_DHparams(i32* %448, i32* %449)
  store i32 %450, i32* %13, align 4
  br label %451

451:                                              ; preds = %447, %443
  br label %452

452:                                              ; preds = %451, %439
  %453 = load i32, i32* %13, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %452
  %456 = load i32*, i32** @bio_err, align 8
  %457 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %456, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  %458 = load i32*, i32** @bio_err, align 8
  %459 = call i32 @ERR_print_errors(i32* %458)
  br label %462

460:                                              ; preds = %452
  br label %461

461:                                              ; preds = %460, %419
  store i32 0, i32* %16, align 4
  br label %462

462:                                              ; preds = %461, %455, %365, %294, %273, %246, %234, %217, %202, %179, %165, %142, %127, %118, %103, %84, %49, %45
  %463 = load i32*, i32** %5, align 8
  %464 = call i32 @BIO_free(i32* %463)
  %465 = load i32*, i32** %6, align 8
  %466 = call i32 @BIO_free_all(i32* %465)
  %467 = load i32*, i32** %7, align 8
  %468 = call i32 @DH_free(i32* %467)
  %469 = load i32*, i32** %11, align 8
  %470 = call i32 @release_engine(i32* %469)
  %471 = load i32, i32* %16, align 4
  ret i32 %471
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32 @BN_GENCB_set(i32*, i32, i32*) #1

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32 @DSA_generate_parameters_ex(i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32* @DSA_dup_DH(i32*) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32 @DH_generate_parameters_ex(i32*, i32, i32, i32*) #1

declare dso_local i32* @d2i_DSAparams_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @d2i_DHparams_bio(i32*, i32*) #1

declare dso_local i64 @BIO_reset(i32*) #1

declare dso_local i32* @d2i_DHxparams_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_DHparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DHparams_print(i32*, i32*) #1

declare dso_local i32 @DH_check(i32*, i32*) #1

declare dso_local i32 @DH_size(i32*) #1

declare dso_local i32 @DH_bits(i32*) #1

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @print_bignum_var(i32*, i32*, i8*, i32, i8*) #1

declare dso_local i32 @DH_get_length(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @i2d_DHxparams_bio(i32*, i32*) #1

declare dso_local i32 @i2d_DHparams_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DHxparams(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DHparams(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
