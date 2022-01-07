; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_t_x509.c_X509_print_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_t_x509.c_X509_print_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32* }

@XN_FLAG_SEP_MASK = common dso_local global i64 0, align 8
@XN_FLAG_SEP_MULTILINE = common dso_local global i64 0, align 8
@X509_FLAG_COMPAT = common dso_local global i64 0, align 8
@X509_FLAG_NO_HEADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Certificate:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"    Data:\0A\00", align 1
@X509_FLAG_NO_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%8sVersion: %ld (0x%lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%8sVersion: Unknown (%ld)\0A\00", align 1
@X509_FLAG_NO_SERIAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"        Serial Number:\00", align 1
@V_ASN1_NEG_INTEGER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" %s%lu (%s0x%lx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" (Negative)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\0A%12s%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@X509_FLAG_NO_SIGNAME = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@X509_FLAG_NO_ISSUER = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"        Issuer:%c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@X509_FLAG_NO_VALIDITY = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"        Validity\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"            Not Before: \00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"\0A            Not After : \00", align 1
@X509_FLAG_NO_SUBJECT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"        Subject:%c\00", align 1
@X509_FLAG_NO_PUBKEY = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"        Subject Public Key Info:\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"%12sPublic Key Algorithm: \00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"%12sUnable to load Public Key\0A\00", align 1
@X509_FLAG_NO_IDS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"%8sIssuer Unique ID: \00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"%8sSubject Unique ID: \00", align 1
@X509_FLAG_NO_EXTENSIONS = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [18 x i8] c"X509v3 extensions\00", align 1
@X509_FLAG_NO_SIGDUMP = common dso_local global i64 0, align 8
@X509_FLAG_NO_AUX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_print_ex(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  store i8 32, i8* %13, align 1
  store i32 0, i32* %14, align 4
  store i32* null, i32** %16, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @XN_FLAG_SEP_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @XN_FLAG_SEP_MULTILINE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i8 10, i8* %13, align 1
  store i32 12, i32* %14, align 4
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @X509_FLAG_COMPAT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 16, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @X509_FLAG_NO_HEADER, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @BIO_write(i32* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %411

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @BIO_write(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %411

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @X509_FLAG_NO_VERSION, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @X509_get_version(i32* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i64, i64* %9, align 8
  %65 = icmp sle i64 %64, 2
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  %70 = load i64, i64* %9, align 8
  %71 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 %69, i64 %70)
  %72 = icmp sle i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %411

74:                                               ; preds = %66
  br label %82

75:                                               ; preds = %63, %58
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %411

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %74
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @X509_FLAG_NO_SERIAL, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %176, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %5, align 8
  %90 = call i64 @BIO_write(i32* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 22)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %411

93:                                               ; preds = %88
  %94 = load i32*, i32** %6, align 8
  %95 = call %struct.TYPE_4__* @X509_get_serialNumber(i32* %94)
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %15, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sle i32 %98, 8
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = call i32 (...) @ERR_set_mark()
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %103 = call i64 @ASN1_INTEGER_get(%struct.TYPE_4__* %102)
  store i64 %103, i64* %9, align 8
  %104 = call i32 (...) @ERR_pop_to_mark()
  br label %106

105:                                              ; preds = %93
  store i64 -1, i64* %9, align 8
  br label %106

106:                                              ; preds = %105, %100
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, -1
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @V_ASN1_NEG_INTEGER, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 0, %116
  store i64 %117, i64* %18, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %120

118:                                              ; preds = %109
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32*, i32** %5, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load i64, i64* %18, align 8
  %126 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %122, i64 %123, i8* %124, i64 %125)
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %411

129:                                              ; preds = %120
  br label %175

130:                                              ; preds = %106
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @V_ASN1_NEG_INTEGER, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  store i8* %137, i8** %17, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %139)
  %141 = icmp sle i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %411

143:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %171, %143
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %144
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 10, i32 58
  %167 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %158, i32 %166)
  %168 = icmp sle i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %150
  br label %411

170:                                              ; preds = %150
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %144

174:                                              ; preds = %144
  br label %175

175:                                              ; preds = %174, %129
  br label %176

176:                                              ; preds = %175, %83
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* @X509_FLAG_NO_SIGNAME, align 8
  %179 = and i64 %177, %178
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %176
  %182 = load i32*, i32** %6, align 8
  %183 = call i32* @X509_get0_tbs_sigalg(i32* %182)
  store i32* %183, i32** %19, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = call i64 @BIO_puts(i32* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %186 = icmp sle i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %411

188:                                              ; preds = %181
  %189 = load i32*, i32** %5, align 8
  %190 = load i32*, i32** %19, align 8
  %191 = call i64 @X509_signature_print(i32* %189, i32* %190, i32* null)
  %192 = icmp sle i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %411

194:                                              ; preds = %188
  br label %195

195:                                              ; preds = %194, %176
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* @X509_FLAG_NO_ISSUER, align 8
  %198 = and i64 %196, %197
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %222, label %200

200:                                              ; preds = %195
  %201 = load i32*, i32** %5, align 8
  %202 = load i8, i8* %13, align 1
  %203 = sext i8 %202 to i32
  %204 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %203)
  %205 = icmp sle i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %411

207:                                              ; preds = %200
  %208 = load i32*, i32** %5, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = call i32 @X509_get_issuer_name(i32* %209)
  %211 = load i32, i32* %14, align 4
  %212 = load i64, i64* %7, align 8
  %213 = call i64 @X509_NAME_print_ex(i32* %208, i32 %210, i32 %211, i64 %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %411

216:                                              ; preds = %207
  %217 = load i32*, i32** %5, align 8
  %218 = call i64 @BIO_write(i32* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %219 = icmp sle i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %411

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %195
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* @X509_FLAG_NO_VALIDITY, align 8
  %225 = and i64 %223, %224
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %262, label %227

227:                                              ; preds = %222
  %228 = load i32*, i32** %5, align 8
  %229 = call i64 @BIO_write(i32* %228, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 17)
  %230 = icmp sle i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %411

232:                                              ; preds = %227
  %233 = load i32*, i32** %5, align 8
  %234 = call i64 @BIO_write(i32* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 24)
  %235 = icmp sle i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %411

237:                                              ; preds = %232
  %238 = load i32*, i32** %5, align 8
  %239 = load i32*, i32** %6, align 8
  %240 = call i32 @X509_get0_notBefore(i32* %239)
  %241 = call i32 @ASN1_TIME_print(i32* %238, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %237
  br label %411

244:                                              ; preds = %237
  %245 = load i32*, i32** %5, align 8
  %246 = call i64 @BIO_write(i32* %245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 25)
  %247 = icmp sle i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  br label %411

249:                                              ; preds = %244
  %250 = load i32*, i32** %5, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = call i32 @X509_get0_notAfter(i32* %251)
  %253 = call i32 @ASN1_TIME_print(i32* %250, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %249
  br label %411

256:                                              ; preds = %249
  %257 = load i32*, i32** %5, align 8
  %258 = call i64 @BIO_write(i32* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %259 = icmp sle i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %411

261:                                              ; preds = %256
  br label %262

262:                                              ; preds = %261, %222
  %263 = load i64, i64* %8, align 8
  %264 = load i64, i64* @X509_FLAG_NO_SUBJECT, align 8
  %265 = and i64 %263, %264
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %289, label %267

267:                                              ; preds = %262
  %268 = load i32*, i32** %5, align 8
  %269 = load i8, i8* %13, align 1
  %270 = sext i8 %269 to i32
  %271 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %268, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %270)
  %272 = icmp sle i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  br label %411

274:                                              ; preds = %267
  %275 = load i32*, i32** %5, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = call i32 @X509_get_subject_name(i32* %276)
  %278 = load i32, i32* %14, align 4
  %279 = load i64, i64* %7, align 8
  %280 = call i64 @X509_NAME_print_ex(i32* %275, i32 %277, i32 %278, i64 %279)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %411

283:                                              ; preds = %274
  %284 = load i32*, i32** %5, align 8
  %285 = call i64 @BIO_write(i32* %284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %286 = icmp sle i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  br label %411

288:                                              ; preds = %283
  br label %289

289:                                              ; preds = %288, %262
  %290 = load i64, i64* %8, align 8
  %291 = load i64, i64* @X509_FLAG_NO_PUBKEY, align 8
  %292 = and i64 %290, %291
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %334, label %294

294:                                              ; preds = %289
  %295 = load i32*, i32** %6, align 8
  %296 = call i32* @X509_get_X509_PUBKEY(i32* %295)
  store i32* %296, i32** %20, align 8
  %297 = load i32*, i32** %20, align 8
  %298 = call i32 @X509_PUBKEY_get0_param(i32** %21, i32* null, i32* null, i32* null, i32* %297)
  %299 = load i32*, i32** %5, align 8
  %300 = call i64 @BIO_write(i32* %299, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 33)
  %301 = icmp sle i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %294
  br label %411

303:                                              ; preds = %294
  %304 = load i32*, i32** %5, align 8
  %305 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %304, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %306 = icmp sle i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  br label %411

308:                                              ; preds = %303
  %309 = load i32*, i32** %5, align 8
  %310 = load i32*, i32** %21, align 8
  %311 = call i64 @i2a_ASN1_OBJECT(i32* %309, i32* %310)
  %312 = icmp sle i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %411

314:                                              ; preds = %308
  %315 = load i32*, i32** %5, align 8
  %316 = call i64 @BIO_puts(i32* %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %317 = icmp sle i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  br label %411

319:                                              ; preds = %314
  %320 = load i32*, i32** %6, align 8
  %321 = call i32* @X509_get0_pubkey(i32* %320)
  store i32* %321, i32** %16, align 8
  %322 = load i32*, i32** %16, align 8
  %323 = icmp eq i32* %322, null
  br i1 %323, label %324, label %329

324:                                              ; preds = %319
  %325 = load i32*, i32** %5, align 8
  %326 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %325, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %327 = load i32*, i32** %5, align 8
  %328 = call i32 @ERR_print_errors(i32* %327)
  br label %333

329:                                              ; preds = %319
  %330 = load i32*, i32** %5, align 8
  %331 = load i32*, i32** %16, align 8
  %332 = call i32 @EVP_PKEY_print_public(i32* %330, i32* %331, i32 16, i32* null)
  br label %333

333:                                              ; preds = %329, %324
  br label %334

334:                                              ; preds = %333, %289
  %335 = load i64, i64* %8, align 8
  %336 = load i64, i64* @X509_FLAG_NO_IDS, align 8
  %337 = and i64 %335, %336
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %372, label %339

339:                                              ; preds = %334
  %340 = load i32*, i32** %6, align 8
  %341 = call i32 @X509_get0_uids(i32* %340, i32** %22, i32** %23)
  %342 = load i32*, i32** %22, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %344, label %356

344:                                              ; preds = %339
  %345 = load i32*, i32** %5, align 8
  %346 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %345, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %347 = icmp sle i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  br label %411

349:                                              ; preds = %344
  %350 = load i32*, i32** %5, align 8
  %351 = load i32*, i32** %22, align 8
  %352 = call i32 @X509_signature_dump(i32* %350, i32* %351, i32 12)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %349
  br label %411

355:                                              ; preds = %349
  br label %356

356:                                              ; preds = %355, %339
  %357 = load i32*, i32** %23, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %359, label %371

359:                                              ; preds = %356
  %360 = load i32*, i32** %5, align 8
  %361 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %360, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %362 = icmp sle i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  br label %411

364:                                              ; preds = %359
  %365 = load i32*, i32** %5, align 8
  %366 = load i32*, i32** %23, align 8
  %367 = call i32 @X509_signature_dump(i32* %365, i32* %366, i32 12)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  br label %411

370:                                              ; preds = %364
  br label %371

371:                                              ; preds = %370, %356
  br label %372

372:                                              ; preds = %371, %334
  %373 = load i64, i64* %8, align 8
  %374 = load i64, i64* @X509_FLAG_NO_EXTENSIONS, align 8
  %375 = and i64 %373, %374
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %372
  %378 = load i32*, i32** %5, align 8
  %379 = load i32*, i32** %6, align 8
  %380 = call i32 @X509_get0_extensions(i32* %379)
  %381 = load i64, i64* %8, align 8
  %382 = call i32 @X509V3_extensions_print(i32* %378, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %380, i64 %381, i32 8)
  br label %383

383:                                              ; preds = %377, %372
  %384 = load i64, i64* %8, align 8
  %385 = load i64, i64* @X509_FLAG_NO_SIGDUMP, align 8
  %386 = and i64 %384, %385
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %383
  %389 = load i32*, i32** %6, align 8
  %390 = call i32 @X509_get0_signature(i32** %25, i32** %24, i32* %389)
  %391 = load i32*, i32** %5, align 8
  %392 = load i32*, i32** %24, align 8
  %393 = load i32*, i32** %25, align 8
  %394 = call i64 @X509_signature_print(i32* %391, i32* %392, i32* %393)
  %395 = icmp sle i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %388
  br label %411

397:                                              ; preds = %388
  br label %398

398:                                              ; preds = %397, %383
  %399 = load i64, i64* %8, align 8
  %400 = load i64, i64* @X509_FLAG_NO_AUX, align 8
  %401 = and i64 %399, %400
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %410, label %403

403:                                              ; preds = %398
  %404 = load i32*, i32** %5, align 8
  %405 = load i32*, i32** %6, align 8
  %406 = call i32 @X509_aux_print(i32* %404, i32* %405, i32 0)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %403
  br label %411

409:                                              ; preds = %403
  br label %410

410:                                              ; preds = %409, %398
  store i32 1, i32* %10, align 4
  br label %411

411:                                              ; preds = %410, %408, %396, %369, %363, %354, %348, %318, %313, %307, %302, %287, %282, %273, %260, %255, %248, %243, %236, %231, %220, %215, %206, %193, %187, %169, %142, %128, %92, %80, %73, %51, %46
  %412 = load i8*, i8** %12, align 8
  %413 = call i32 @OPENSSL_free(i8* %412)
  %414 = load i32, i32* %10, align 4
  ret i32 %414
}

declare dso_local i64 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @X509_get_version(i32*) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @X509_get_serialNumber(i32*) #1

declare dso_local i32 @ERR_set_mark(...) #1

declare dso_local i64 @ASN1_INTEGER_get(%struct.TYPE_4__*) #1

declare dso_local i32 @ERR_pop_to_mark(...) #1

declare dso_local i32* @X509_get0_tbs_sigalg(i32*) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @X509_signature_print(i32*, i32*, i32*) #1

declare dso_local i64 @X509_NAME_print_ex(i32*, i32, i32, i64) #1

declare dso_local i32 @X509_get_issuer_name(i32*) #1

declare dso_local i32 @ASN1_TIME_print(i32*, i32) #1

declare dso_local i32 @X509_get0_notBefore(i32*) #1

declare dso_local i32 @X509_get0_notAfter(i32*) #1

declare dso_local i32 @X509_get_subject_name(i32*) #1

declare dso_local i32* @X509_get_X509_PUBKEY(i32*) #1

declare dso_local i32 @X509_PUBKEY_get0_param(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @i2a_ASN1_OBJECT(i32*, i32*) #1

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @ERR_print_errors(i32*) #1

declare dso_local i32 @EVP_PKEY_print_public(i32*, i32*, i32, i32*) #1

declare dso_local i32 @X509_get0_uids(i32*, i32**, i32**) #1

declare dso_local i32 @X509_signature_dump(i32*, i32*, i32) #1

declare dso_local i32 @X509V3_extensions_print(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @X509_get0_extensions(i32*) #1

declare dso_local i32 @X509_get0_signature(i32**, i32**, i32*) #1

declare dso_local i32 @X509_aux_print(i32*, i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
