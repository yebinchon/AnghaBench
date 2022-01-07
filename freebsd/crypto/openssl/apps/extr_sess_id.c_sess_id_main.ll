; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_sess_id.c_sess_id_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_sess_id.c_sess_id_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_PEM = common dso_local global i32 0, align 4
@sess_id_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4
@OPT_FMT_NSS = common dso_local global i32 0, align 4
@SSL_MAX_SID_CTX_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Context too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Error setting id context\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No certificate present\0A\00", align 1
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_NSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unable to write SSL_SESSION\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unable to write X509\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sess_id_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %22 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @FORMAT_PEM, align 4
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* @sess_id_options, align 4
  %27 = call i8* @opt_init(i32 %24, i8** %25, i32 %26)
  store i8* %27, i8** %11, align 8
  br label %28

28:                                               ; preds = %72, %2
  %29 = call i32 (...) @opt_next()
  store i32 %29, i32* %20, align 4
  %30 = icmp ne i32 %29, 136
  br i1 %30, label %31, label %73

31:                                               ; preds = %28
  %32 = load i32, i32* %20, align 4
  switch i32 %32, label %72 [
    i32 136, label %33
    i32 135, label %33
    i32 134, label %38
    i32 132, label %41
    i32 129, label %48
    i32 133, label %57
    i32 130, label %59
    i32 128, label %61
    i32 138, label %64
    i32 131, label %67
    i32 137, label %70
  ]

33:                                               ; preds = %31, %31
  br label %34

34:                                               ; preds = %77, %55, %46, %33
  %35 = load i32, i32* @bio_err, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 (i32, i8*, ...) @BIO_printf(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %222

38:                                               ; preds = %31
  %39 = load i32, i32* @sess_id_options, align 4
  %40 = call i32 @opt_help(i32 %39)
  store i32 0, i32* %17, align 4
  br label %222

41:                                               ; preds = %31
  %42 = call i8* (...) @opt_arg()
  %43 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %44 = call i32 @opt_format(i8* %42, i32 %43, i32* %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %34

47:                                               ; preds = %41
  br label %72

48:                                               ; preds = %31
  %49 = call i8* (...) @opt_arg()
  %50 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %51 = load i32, i32* @OPT_FMT_NSS, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @opt_format(i8* %49, i32 %52, i32* %13)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %34

56:                                               ; preds = %48
  br label %72

57:                                               ; preds = %31
  %58 = call i8* (...) @opt_arg()
  store i8* %58, i8** %8, align 8
  br label %72

59:                                               ; preds = %31
  %60 = call i8* (...) @opt_arg()
  store i8* %60, i8** %9, align 8
  br label %72

61:                                               ; preds = %31
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %19, align 4
  store i32 %63, i32* %16, align 4
  br label %72

64:                                               ; preds = %31
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %19, align 4
  store i32 %66, i32* %14, align 4
  br label %72

67:                                               ; preds = %31
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %19, align 4
  store i32 %69, i32* %15, align 4
  br label %72

70:                                               ; preds = %31
  %71 = call i8* (...) @opt_arg()
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %31, %70, %67, %64, %61, %59, %57, %56, %47
  br label %28

73:                                               ; preds = %28
  %74 = call i32 (...) @opt_num_rest()
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %34

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32* @load_sess_id(i8* %79, i32 %80)
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %222

85:                                               ; preds = %78
  %86 = load i32*, i32** %5, align 8
  %87 = call i32* @SSL_SESSION_get0_peer(i32* %86)
  store i32* %87, i32** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @strlen(i8* %91)
  store i64 %92, i64* %21, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* @SSL_MAX_SID_CTX_LENGTH, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @bio_err, align 4
  %98 = call i32 (i32, i8*, ...) @BIO_printf(i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %222

99:                                               ; preds = %90
  %100 = load i32*, i32** %5, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %21, align 8
  %103 = call i32 @SSL_SESSION_set1_id_context(i32* %100, i8* %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @bio_err, align 4
  %107 = call i32 (i32, i8*, ...) @BIO_printf(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %222

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %85
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112, %109
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32* @bio_open_default(i8* %116, i8 signext 119, i32 %117)
  store i32* %118, i32** %7, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %222

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %112
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %123
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @SSL_SESSION_print(i32* %127, i32* %128)
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load i32*, i32** %6, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @BIO_puts(i32* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %142

138:                                              ; preds = %132
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @X509_print(i32* %139, i32* %140)
  br label %142

142:                                              ; preds = %138, %135
  br label %143

143:                                              ; preds = %142, %126
  br label %144

144:                                              ; preds = %143, %123
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %186, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %186, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @FORMAT_ASN1, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32*, i32** %7, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @i2d_SSL_SESSION_bio(i32* %155, i32* %156)
  store i32 %157, i32* %18, align 4
  br label %179

158:                                              ; preds = %150
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @FORMAT_PEM, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32*, i32** %7, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @PEM_write_bio_SSL_SESSION(i32* %163, i32* %164)
  store i32 %165, i32* %18, align 4
  br label %178

166:                                              ; preds = %158
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @FORMAT_NSS, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i32*, i32** %7, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @SSL_SESSION_print_keylog(i32* %171, i32* %172)
  store i32 %173, i32* %18, align 4
  br label %177

174:                                              ; preds = %166
  %175 = load i32, i32* @bio_err, align 4
  %176 = call i32 (i32, i8*, ...) @BIO_printf(i32 %175, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %222

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %162
  br label %179

179:                                              ; preds = %178, %154
  %180 = load i32, i32* %18, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* @bio_err, align 4
  %184 = call i32 (i32, i8*, ...) @BIO_printf(i32 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %222

185:                                              ; preds = %179
  br label %221

186:                                              ; preds = %147, %144
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %220, label %189

189:                                              ; preds = %186
  %190 = load i32*, i32** %6, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %220

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @FORMAT_ASN1, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32*, i32** %7, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = call i64 @i2d_X509_bio(i32* %197, i32* %198)
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %18, align 4
  br label %213

201:                                              ; preds = %192
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @FORMAT_PEM, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load i32*, i32** %7, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @PEM_write_bio_X509(i32* %206, i32* %207)
  store i32 %208, i32* %18, align 4
  br label %212

209:                                              ; preds = %201
  %210 = load i32, i32* @bio_err, align 4
  %211 = call i32 (i32, i8*, ...) @BIO_printf(i32 %210, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %222

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %196
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @bio_err, align 4
  %218 = call i32 (i32, i8*, ...) @BIO_printf(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %222

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %189, %186
  br label %221

221:                                              ; preds = %220, %185
  store i32 0, i32* %17, align 4
  br label %222

222:                                              ; preds = %221, %216, %209, %182, %174, %121, %105, %96, %84, %38, %34
  %223 = load i32*, i32** %7, align 8
  %224 = call i32 @BIO_free_all(i32* %223)
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @SSL_SESSION_free(i32* %225)
  %227 = load i32, i32* %17, align 4
  ret i32 %227
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i32* @load_sess_id(i8*, i32) #1

declare dso_local i32* @SSL_SESSION_get0_peer(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SSL_SESSION_set1_id_context(i32*, i8*, i64) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32 @SSL_SESSION_print(i32*, i32*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @X509_print(i32*, i32*) #1

declare dso_local i32 @i2d_SSL_SESSION_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_SSL_SESSION(i32*, i32*) #1

declare dso_local i32 @SSL_SESSION_print_keylog(i32*, i32*) #1

declare dso_local i64 @i2d_X509_bio(i32*, i32*) #1

declare dso_local i32 @PEM_write_bio_X509(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
