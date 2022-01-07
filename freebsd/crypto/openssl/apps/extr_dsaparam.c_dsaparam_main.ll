; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_dsaparam.c_dsaparam_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_dsaparam.c_dsaparam_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@dsaparam_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@OPENSSL_DSA_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error allocating BN_GENCB object\0A\00", align 1
@dsa_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Error allocating DSA object\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Generating DSA parameters, %d bit long prime\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"This could take some time\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Error, DSA key generation failed\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"unable to load DSA parameters\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"BN space\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"static DSA *get_dsa%d(void)\0A{\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dsap\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"dsaq\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dsag\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"    DSA *dsa = DSA_new();\0A    BIGNUM *p, *q, *g;\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"    if (dsa == NULL)\0A        return NULL;\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"    if (!DSA_set0_pqg(dsa, p = BN_bin2bn(dsap_%d, sizeof(dsap_%d), NULL),\0A\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"                           q = BN_bin2bn(dsaq_%d, sizeof(dsaq_%d), NULL),\0A\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"                           g = BN_bin2bn(dsag_%d, sizeof(dsag_%d), NULL))) {\0A\00", align 1
@.str.18 = private unnamed_addr constant [129 x i8] c"        DSA_free(dsa);\0A        BN_free(p);\0A        BN_free(q);\0A        BN_free(g);\0A        return NULL;\0A    }\0A    return dsa;\0A}\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"unable to write DSA parameters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsaparam_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %33, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* @dsaparam_options, align 4
  %37 = call i8* @opt_init(i32 %34, i8** %35, i32 %36)
  store i8* %37, i8** %23, align 8
  br label %38

38:                                               ; preds = %82, %2
  %39 = call i32 (...) @opt_next()
  store i32 %39, i32* %24, align 4
  %40 = icmp ne i32 %39, 138
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = load i32, i32* %24, align 4
  switch i32 %42, label %82 [
    i32 138, label %43
    i32 137, label %43
    i32 135, label %48
    i32 133, label %51
    i32 134, label %58
    i32 130, label %60
    i32 131, label %67
    i32 139, label %69
    i32 128, label %72
    i32 140, label %73
    i32 136, label %74
    i32 129, label %75
    i32 132, label %81
  ]

43:                                               ; preds = %41, %41
  br label %44

44:                                               ; preds = %65, %56, %43
  %45 = load i32, i32* @bio_err, align 4
  %46 = load i8*, i8** %23, align 8
  %47 = call i32 (i32, i8*, ...) @BIO_printf(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %310

48:                                               ; preds = %41
  %49 = load i32, i32* @dsaparam_options, align 4
  %50 = call i32 @opt_help(i32 %49)
  store i32 0, i32* %17, align 4
  br label %310

51:                                               ; preds = %41
  %52 = call i8* (...) @opt_arg()
  %53 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %54 = call i32 @opt_format(i8* %52, i32 %53, i32* %13)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %44

57:                                               ; preds = %51
  br label %82

58:                                               ; preds = %41
  %59 = call i8* (...) @opt_arg()
  store i8* %59, i8** %21, align 8
  br label %82

60:                                               ; preds = %41
  %61 = call i8* (...) @opt_arg()
  %62 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %63 = call i32 @opt_format(i8* %61, i32 %62, i32* %14)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %44

66:                                               ; preds = %60
  br label %82

67:                                               ; preds = %41
  %68 = call i8* (...) @opt_arg()
  store i8* %68, i8** %22, align 8
  br label %82

69:                                               ; preds = %41
  %70 = call i8* (...) @opt_arg()
  %71 = call i32* @setup_engine(i8* %70, i32 0)
  store i32* %71, i32** %5, align 8
  br label %82

72:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  br label %82

73:                                               ; preds = %41
  store i32 1, i32* %16, align 4
  br label %82

74:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %82

75:                                               ; preds = %41
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @opt_rand(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %310

80:                                               ; preds = %75
  br label %82

81:                                               ; preds = %41
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %41, %81, %80, %74, %73, %72, %69, %67, %66, %58, %57
  br label %38

83:                                               ; preds = %38
  %84 = call i32 (...) @opt_num_rest()
  store i32 %84, i32* %3, align 4
  %85 = call i8** (...) @opt_rest()
  store i8** %85, i8*** %4, align 8
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @opt_int(i8* %91, i32* %11)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %88
  br label %310

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %98, %83
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  store i32 %104, i32* %20, align 4
  %105 = load i8*, i8** %21, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32* @bio_open_default(i8* %105, i8 signext 114, i32 %106)
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %310

111:                                              ; preds = %100
  %112 = load i8*, i8** %22, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %20, align 4
  %115 = call i32* @bio_open_owner(i8* %112, i32 %113, i32 %114)
  store i32* %115, i32** %8, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %310

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %166

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @OPENSSL_DSA_MAX_MODULUS_BITS, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* @bio_err, align 4
  %128 = load i32, i32* @OPENSSL_DSA_MAX_MODULUS_BITS, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 (i32, i8*, ...) @BIO_printf(i32 %127, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %122
  %132 = call i32* (...) @BN_GENCB_new()
  store i32* %132, i32** %9, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @bio_err, align 4
  %137 = call i32 (i32, i8*, ...) @BIO_printf(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %310

138:                                              ; preds = %131
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* @dsa_cb, align 4
  %141 = load i32, i32* @bio_err, align 4
  %142 = call i32 @BN_GENCB_set(i32* %139, i32 %140, i32 %141)
  %143 = call i32* (...) @DSA_new()
  store i32* %143, i32** %6, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @bio_err, align 4
  %148 = call i32 (i32, i8*, ...) @BIO_printf(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %310

149:                                              ; preds = %138
  %150 = load i32, i32* @bio_err, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (i32, i8*, ...) @BIO_printf(i32 %150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @bio_err, align 4
  %154 = call i32 (i32, i8*, ...) @BIO_printf(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @DSA_generate_parameters_ex(i32* %155, i32 %156, i32* null, i32 0, i32* null, i32* null, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %149
  %161 = load i32, i32* @bio_err, align 4
  %162 = call i32 @ERR_print_errors(i32 %161)
  %163 = load i32, i32* @bio_err, align 4
  %164 = call i32 (i32, i8*, ...) @BIO_printf(i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %310

165:                                              ; preds = %149
  br label %177

166:                                              ; preds = %119
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @FORMAT_ASN1, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32*, i32** %7, align 8
  %172 = call i32* @d2i_DSAparams_bio(i32* %171, i32* null)
  store i32* %172, i32** %6, align 8
  br label %176

173:                                              ; preds = %166
  %174 = load i32*, i32** %7, align 8
  %175 = call i32* @PEM_read_bio_DSAparams(i32* %174, i32* null, i32* null, i32* null)
  store i32* %175, i32** %6, align 8
  br label %176

176:                                              ; preds = %173, %170
  br label %177

177:                                              ; preds = %176, %165
  %178 = load i32*, i32** %6, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32, i32* @bio_err, align 4
  %182 = call i32 (i32, i8*, ...) @BIO_printf(i32 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %183 = load i32, i32* @bio_err, align 4
  %184 = call i32 @ERR_print_errors(i32 %183)
  br label %310

185:                                              ; preds = %177
  %186 = load i32, i32* %19, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32*, i32** %8, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @DSAparams_print(i32* %189, i32* %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %243

195:                                              ; preds = %192
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @DSA_get0_pqg(i32* %196, i32** %25, i32** %26, i32** %27)
  %198 = load i32*, i32** %25, align 8
  %199 = call i32 @BN_num_bytes(i32* %198)
  store i32 %199, i32* %29, align 4
  %200 = load i32*, i32** %25, align 8
  %201 = call i32 @BN_num_bits(i32* %200)
  store i32 %201, i32* %30, align 4
  %202 = load i32, i32* %29, align 4
  %203 = add nsw i32 %202, 20
  %204 = call i8* @app_malloc(i32 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i8* %204, i8** %28, align 8
  %205 = load i32, i32* @bio_out, align 4
  %206 = load i32, i32* %30, align 4
  %207 = call i32 (i32, i8*, ...) @BIO_printf(i32 %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @bio_out, align 4
  %209 = load i32*, i32** %25, align 8
  %210 = load i32, i32* %30, align 4
  %211 = load i8*, i8** %28, align 8
  %212 = call i32 @print_bignum_var(i32 %208, i32* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %210, i8* %211)
  %213 = load i32, i32* @bio_out, align 4
  %214 = load i32*, i32** %26, align 8
  %215 = load i32, i32* %30, align 4
  %216 = load i8*, i8** %28, align 8
  %217 = call i32 @print_bignum_var(i32 %213, i32* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %215, i8* %216)
  %218 = load i32, i32* @bio_out, align 4
  %219 = load i32*, i32** %27, align 8
  %220 = load i32, i32* %30, align 4
  %221 = load i8*, i8** %28, align 8
  %222 = call i32 @print_bignum_var(i32 %218, i32* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %220, i8* %221)
  %223 = load i32, i32* @bio_out, align 4
  %224 = call i32 (i32, i8*, ...) @BIO_printf(i32 %223, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %225 = load i32, i32* @bio_out, align 4
  %226 = call i32 (i32, i8*, ...) @BIO_printf(i32 %225, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %227 = load i32, i32* @bio_out, align 4
  %228 = load i32, i32* %30, align 4
  %229 = load i32, i32* %30, align 4
  %230 = call i32 (i32, i8*, ...) @BIO_printf(i32 %227, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 %228, i32 %229)
  %231 = load i32, i32* @bio_out, align 4
  %232 = load i32, i32* %30, align 4
  %233 = load i32, i32* %30, align 4
  %234 = call i32 (i32, i8*, ...) @BIO_printf(i32 %231, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 %232, i32 %233)
  %235 = load i32, i32* @bio_out, align 4
  %236 = load i32, i32* %30, align 4
  %237 = load i32, i32* %30, align 4
  %238 = call i32 (i32, i8*, ...) @BIO_printf(i32 %235, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i64 0, i64 0), i32 %236, i32 %237)
  %239 = load i32, i32* @bio_out, align 4
  %240 = call i32 (i32, i8*, ...) @BIO_printf(i32 %239, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.18, i64 0, i64 0))
  %241 = load i8*, i8** %28, align 8
  %242 = call i32 @OPENSSL_free(i8* %241)
  br label %243

243:                                              ; preds = %195, %192
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* @FORMAT_ASN1, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  store i32 1, i32* %15, align 4
  br label %251

251:                                              ; preds = %250, %247, %243
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %275, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* @FORMAT_ASN1, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load i32*, i32** %8, align 8
  %260 = load i32*, i32** %6, align 8
  %261 = call i32 @i2d_DSAparams_bio(i32* %259, i32* %260)
  store i32 %261, i32* %18, align 4
  br label %266

262:                                              ; preds = %254
  %263 = load i32*, i32** %8, align 8
  %264 = load i32*, i32** %6, align 8
  %265 = call i32 @PEM_write_bio_DSAparams(i32* %263, i32* %264)
  store i32 %265, i32* %18, align 4
  br label %266

266:                                              ; preds = %262, %258
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* @bio_err, align 4
  %271 = call i32 (i32, i8*, ...) @BIO_printf(i32 %270, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %272 = load i32, i32* @bio_err, align 4
  %273 = call i32 @ERR_print_errors(i32 %272)
  br label %310

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274, %251
  %276 = load i32, i32* %12, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %309

278:                                              ; preds = %275
  %279 = load i32*, i32** %6, align 8
  %280 = call i32* @DSAparams_dup(i32* %279)
  store i32* %280, i32** %31, align 8
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  br label %310

283:                                              ; preds = %278
  %284 = load i32*, i32** %31, align 8
  %285 = call i32 @DSA_generate_key(i32* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* @bio_err, align 4
  %289 = call i32 @ERR_print_errors(i32 %288)
  %290 = load i32*, i32** %31, align 8
  %291 = call i32 @DSA_free(i32* %290)
  br label %310

292:                                              ; preds = %283
  %293 = load i32, i32* %20, align 4
  %294 = call i32 @assert(i32 %293)
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* @FORMAT_ASN1, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %292
  %299 = load i32*, i32** %8, align 8
  %300 = load i32*, i32** %31, align 8
  %301 = call i32 @i2d_DSAPrivateKey_bio(i32* %299, i32* %300)
  store i32 %301, i32* %18, align 4
  br label %306

302:                                              ; preds = %292
  %303 = load i32*, i32** %8, align 8
  %304 = load i32*, i32** %31, align 8
  %305 = call i32 @PEM_write_bio_DSAPrivateKey(i32* %303, i32* %304, i32* null, i32* null, i32 0, i32* null, i32* null)
  store i32 %305, i32* %18, align 4
  br label %306

306:                                              ; preds = %302, %298
  %307 = load i32*, i32** %31, align 8
  %308 = call i32 @DSA_free(i32* %307)
  br label %309

309:                                              ; preds = %306, %275
  store i32 0, i32* %17, align 4
  br label %310

310:                                              ; preds = %309, %287, %282, %269, %180, %160, %146, %135, %118, %110, %97, %79, %48, %44
  %311 = load i32*, i32** %9, align 8
  %312 = call i32 @BN_GENCB_free(i32* %311)
  %313 = load i32*, i32** %7, align 8
  %314 = call i32 @BIO_free(i32* %313)
  %315 = load i32*, i32** %8, align 8
  %316 = call i32 @BIO_free_all(i32* %315)
  %317 = load i32*, i32** %6, align 8
  %318 = call i32 @DSA_free(i32* %317)
  %319 = load i32*, i32** %5, align 8
  %320 = call i32 @release_engine(i32* %319)
  %321 = load i32, i32* %17, align 4
  ret i32 %321
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32 @BN_GENCB_set(i32*, i32, i32) #1

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32 @DSA_generate_parameters_ex(i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32* @d2i_DSAparams_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSAparams_print(i32*, i32*) #1

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @print_bignum_var(i32, i32*, i8*, i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @i2d_DSAparams_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DSAparams(i32*, i32*) #1

declare dso_local i32* @DSAparams_dup(i32*) #1

declare dso_local i32 @DSA_generate_key(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @i2d_DSAPrivateKey_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
