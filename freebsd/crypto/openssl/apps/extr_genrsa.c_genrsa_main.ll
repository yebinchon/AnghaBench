; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_genrsa.c_genrsa_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_genrsa.c_genrsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@DEFBITS = common dso_local global i32 0, align 4
@DEFPRIMES = common dso_local global i32 0, align 4
@RSA_F4 = common dso_local global i64 0, align 8
@genrsa_cb = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@genrsa_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@OPENSSL_RSA_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for RSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Generating RSA private key, %d bit long modulus (%d primes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"e is %s (0x%s)\0A\00", align 1
@password_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genrsa_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %25 = call i32* (...) @BN_GENCB_new()
  store i32* %25, i32** %5, align 8
  store i32* null, i32** %7, align 8
  %26 = call i32* (...) @BN_new()
  store i32* %26, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 1, i32* %13, align 4
  %27 = load i32, i32* @DEFBITS, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @DEFPRIMES, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i64, i64* @RSA_F4, align 8
  store i64 %29, i64* %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %2
  br label %202

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @genrsa_cb, align 4
  %39 = load i32, i32* @bio_err, align 4
  %40 = call i32 @BN_GENCB_set(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* @genrsa_options, align 4
  %44 = call i8* @opt_init(i32 %41, i8** %42, i32 %43)
  store i8* %44, i8** %21, align 8
  br label %45

45:                                               ; preds = %86, %36
  %46 = call i32 (...) @opt_next()
  store i32 %46, i32* %24, align 4
  %47 = icmp ne i32 %46, 135
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  %49 = load i32, i32* %24, align 4
  switch i32 %49, label %86 [
    i32 135, label %50
    i32 134, label %50
    i32 132, label %55
    i32 138, label %58
    i32 133, label %59
    i32 131, label %61
    i32 136, label %63
    i32 128, label %66
    i32 130, label %72
    i32 137, label %74
    i32 129, label %80
  ]

50:                                               ; preds = %48, %48
  br label %51

51:                                               ; preds = %115, %50
  %52 = load i32, i32* @bio_err, align 4
  %53 = load i8*, i8** %21, align 8
  %54 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %202

55:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  %56 = load i32, i32* @genrsa_options, align 4
  %57 = call i32 @opt_help(i32 %56)
  br label %202

58:                                               ; preds = %48
  store i64 3, i64* %17, align 8
  br label %86

59:                                               ; preds = %48
  %60 = load i64, i64* @RSA_F4, align 8
  store i64 %60, i64* %17, align 8
  br label %86

61:                                               ; preds = %48
  %62 = call i8* (...) @opt_arg()
  store i8* %62, i8** %18, align 8
  br label %86

63:                                               ; preds = %48
  %64 = call i8* (...) @opt_arg()
  %65 = call i32* @setup_engine(i8* %64, i32 0)
  store i32* %65, i32** %7, align 8
  br label %86

66:                                               ; preds = %48
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @opt_rand(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %202

71:                                               ; preds = %66
  br label %86

72:                                               ; preds = %48
  %73 = call i8* (...) @opt_arg()
  store i8* %73, i8** %19, align 8
  br label %86

74:                                               ; preds = %48
  %75 = call i32 (...) @opt_unknown()
  %76 = call i32 @opt_cipher(i32 %75, i32** %12)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %202

79:                                               ; preds = %74
  br label %86

80:                                               ; preds = %48
  %81 = call i8* (...) @opt_arg()
  %82 = call i32 @opt_int(i8* %81, i32* %16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %202

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %48, %85, %79, %72, %71, %63, %61, %59, %58
  br label %45

87:                                               ; preds = %45
  %88 = call i32 (...) @opt_num_rest()
  store i32 %88, i32* %3, align 4
  %89 = call i8** (...) @opt_rest()
  store i8** %89, i8*** %4, align 8
  %90 = load i32, i32* %3, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load i8**, i8*** %4, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @opt_int(i8* %95, i32* %14)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %92
  br label %202

102:                                              ; preds = %98
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @OPENSSL_RSA_MAX_MODULUS_BITS, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* @bio_err, align 4
  %108 = load i32, i32* @OPENSSL_RSA_MAX_MODULUS_BITS, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 (i32, i8*, ...) @BIO_printf(i32 %107, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %102
  br label %119

112:                                              ; preds = %87
  %113 = load i32, i32* %3, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @bio_err, align 4
  %117 = call i32 (i32, i8*, ...) @BIO_printf(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %51

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %111
  store i32 1, i32* %15, align 4
  %120 = load i8*, i8** %19, align 8
  %121 = call i32 @app_passwd(i32* null, i8* %120, i32* null, i8** %20)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @bio_err, align 4
  %125 = call i32 (i32, i8*, ...) @BIO_printf(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %202

126:                                              ; preds = %119
  %127 = load i8*, i8** %18, align 8
  %128 = load i32, i32* @FORMAT_PEM, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32* @bio_open_owner(i8* %127, i32 %128, i32 %129)
  store i32* %130, i32** %9, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %202

134:                                              ; preds = %126
  %135 = load i32, i32* @bio_err, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 (i32, i8*, ...) @BIO_printf(i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32*, i32** %7, align 8
  %143 = call i32* @RSA_new_method(i32* %142)
  br label %146

144:                                              ; preds = %134
  %145 = call i32* (...) @RSA_new()
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32* [ %143, %141 ], [ %145, %144 ]
  store i32* %147, i32** %11, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %202

151:                                              ; preds = %146
  %152 = load i32*, i32** %8, align 8
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @BN_set_word(i32* %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @RSA_generate_multi_prime_key(i32* %157, i32 %158, i32 %159, i32* %160, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %156, %151
  br label %202

165:                                              ; preds = %156
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @RSA_get0_key(i32* %166, i32* null, i32** %10, i32* null)
  %168 = load i32*, i32** %10, align 8
  %169 = call i8* @BN_bn2hex(i32* %168)
  store i8* %169, i8** %22, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i8* @BN_bn2dec(i32* %170)
  store i8* %171, i8** %23, align 8
  %172 = load i8*, i8** %22, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %165
  %175 = load i8*, i8** %23, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* @bio_err, align 4
  %179 = load i8*, i8** %23, align 8
  %180 = load i8*, i8** %22, align 8
  %181 = call i32 (i32, i8*, ...) @BIO_printf(i32 %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %179, i8* %180)
  br label %182

182:                                              ; preds = %177, %174, %165
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 @OPENSSL_free(i8* %183)
  %185 = load i8*, i8** %23, align 8
  %186 = call i32 @OPENSSL_free(i8* %185)
  %187 = load i8*, i8** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* %187, i8** %188, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %189, i8** %190, align 8
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @assert(i32 %191)
  %193 = load i32*, i32** %9, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = load i64, i64* @password_callback, align 8
  %197 = inttoptr i64 %196 to i32*
  %198 = call i32 @PEM_write_bio_RSAPrivateKey(i32* %193, i32* %194, i32* %195, i32* null, i32 0, i32* %197, %struct.TYPE_3__* %6)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %182
  br label %202

201:                                              ; preds = %182
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %201, %200, %164, %150, %133, %123, %101, %84, %78, %70, %55, %51, %35
  %203 = load i32*, i32** %8, align 8
  %204 = call i32 @BN_free(i32* %203)
  %205 = load i32*, i32** %5, align 8
  %206 = call i32 @BN_GENCB_free(i32* %205)
  %207 = load i32*, i32** %11, align 8
  %208 = call i32 @RSA_free(i32* %207)
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @BIO_free_all(i32* %209)
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @release_engine(i32* %211)
  %213 = load i8*, i8** %20, align 8
  %214 = call i32 @OPENSSL_free(i8* %213)
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %202
  %218 = load i32, i32* @bio_err, align 4
  %219 = call i32 @ERR_print_errors(i32 %218)
  br label %220

220:                                              ; preds = %217, %202
  %221 = load i32, i32* %13, align 4
  ret i32 %221
}

declare dso_local i32* @BN_GENCB_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_GENCB_set(i32*, i32, i32) #1

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_int(i8*, i32*) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @app_passwd(i32*, i8*, i32*, i8**) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32* @RSA_new_method(i32*) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i64) #1

declare dso_local i32 @RSA_generate_multi_prime_key(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @RSA_get0_key(i32*, i32*, i32**, i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i8* @BN_bn2dec(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEM_write_bio_RSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_GENCB_free(i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
