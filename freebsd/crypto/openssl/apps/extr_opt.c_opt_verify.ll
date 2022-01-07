; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_opt.c_opt_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: Invalid Policy %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Invalid purpose %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: Internal error setting purpose %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: Invalid verify name %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: epoch time out of range %s\0A\00", align 1
@X509_V_FLAG_IGNORE_CRITICAL = common dso_local global i32 0, align 4
@X509_V_FLAG_CRL_CHECK = common dso_local global i32 0, align 4
@X509_V_FLAG_CRL_CHECK_ALL = common dso_local global i32 0, align 4
@X509_V_FLAG_POLICY_CHECK = common dso_local global i32 0, align 4
@X509_V_FLAG_EXPLICIT_POLICY = common dso_local global i32 0, align 4
@X509_V_FLAG_INHIBIT_ANY = common dso_local global i32 0, align 4
@X509_V_FLAG_INHIBIT_MAP = common dso_local global i32 0, align 4
@X509_V_FLAG_X509_STRICT = common dso_local global i32 0, align 4
@X509_V_FLAG_EXTENDED_CRL_SUPPORT = common dso_local global i32 0, align 4
@X509_V_FLAG_USE_DELTAS = common dso_local global i32 0, align 4
@X509_V_FLAG_NOTIFY_POLICY = common dso_local global i32 0, align 4
@X509_V_FLAG_CHECK_SS_SIGNATURE = common dso_local global i32 0, align 4
@X509_V_FLAG_TRUSTED_FIRST = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_128_LOS_ONLY = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_128_LOS = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_192_LOS = common dso_local global i32 0, align 4
@X509_V_FLAG_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@X509_V_FLAG_NO_ALT_CHAINS = common dso_local global i32 0, align 4
@X509_V_FLAG_NO_CHECK_TIME = common dso_local global i32 0, align 4
@X509_V_FLAG_ALLOW_PROXY_CERTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_verify(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 129
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 128
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %220 [
    i32 129, label %24
    i32 128, label %24
    i32 145, label %25
    i32 142, label %39
    i32 131, label %64
    i32 135, label %78
    i32 136, label %88
    i32 158, label %98
    i32 133, label %116
    i32 134, label %123
    i32 132, label %130
    i32 152, label %137
    i32 149, label %141
    i32 156, label %142
    i32 155, label %146
    i32 144, label %152
    i32 154, label %156
    i32 151, label %160
    i32 150, label %164
    i32 130, label %168
    i32 153, label %172
    i32 137, label %176
    i32 143, label %180
    i32 157, label %184
    i32 138, label %188
    i32 140, label %192
    i32 141, label %196
    i32 139, label %200
    i32 146, label %204
    i32 148, label %208
    i32 147, label %212
    i32 159, label %216
  ]

24:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %221

25:                                               ; preds = %2
  %26 = call i32 (...) @opt_arg()
  %27 = call i32* @OBJ_txt2obj(i32 %26, i32 0)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @bio_err, align 4
  %32 = load i32, i32* @prog, align 4
  %33 = call i32 (...) @opt_arg()
  %34 = call i32 @BIO_printf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %221

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @X509_VERIFY_PARAM_add0_policy(i32* %36, i32* %37)
  br label %220

39:                                               ; preds = %2
  %40 = call i32 (...) @opt_arg()
  %41 = call i32 @X509_PURPOSE_get_by_sname(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @bio_err, align 4
  %46 = load i32, i32* @prog, align 4
  %47 = call i32 (...) @opt_arg()
  %48 = call i32 @BIO_printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %221

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32* @X509_PURPOSE_get0(i32 %50)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @X509_PURPOSE_get_id(i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @X509_VERIFY_PARAM_set_purpose(i32* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @bio_err, align 4
  %60 = load i32, i32* @prog, align 4
  %61 = call i32 (...) @opt_arg()
  %62 = call i32 @BIO_printf(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %221

63:                                               ; preds = %49
  br label %220

64:                                               ; preds = %2
  %65 = call i32 (...) @opt_arg()
  %66 = call i32* @X509_VERIFY_PARAM_lookup(i32 %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @bio_err, align 4
  %71 = load i32, i32* @prog, align 4
  %72 = call i32 (...) @opt_arg()
  %73 = call i32 @BIO_printf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %221

74:                                               ; preds = %64
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @X509_VERIFY_PARAM_set1(i32* %75, i32* %76)
  br label %220

78:                                               ; preds = %2
  %79 = call i32 (...) @opt_arg()
  %80 = call i32 @atoi(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @X509_VERIFY_PARAM_set_depth(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  br label %220

88:                                               ; preds = %2
  %89 = call i32 (...) @opt_arg()
  %90 = call i32 @atoi(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @X509_VERIFY_PARAM_set_auth_level(i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %220

98:                                               ; preds = %2
  %99 = call i32 (...) @opt_arg()
  %100 = call i32 @opt_imax(i32 %99, i32* %7)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %221

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* @bio_err, align 4
  %109 = load i32, i32* @prog, align 4
  %110 = call i32 (...) @opt_arg()
  %111 = call i32 @BIO_printf(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %110)
  store i32 0, i32* %3, align 4
  br label %221

112:                                              ; preds = %103
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @X509_VERIFY_PARAM_set_time(i32* %113, i32 %114)
  br label %220

116:                                              ; preds = %2
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 (...) @opt_arg()
  %119 = call i32 @X509_VERIFY_PARAM_set1_host(i32* %117, i32 %118, i32 0)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %221

122:                                              ; preds = %116
  br label %220

123:                                              ; preds = %2
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 (...) @opt_arg()
  %126 = call i32 @X509_VERIFY_PARAM_set1_email(i32* %124, i32 %125, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %221

129:                                              ; preds = %123
  br label %220

130:                                              ; preds = %2
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 (...) @opt_arg()
  %133 = call i32 @X509_VERIFY_PARAM_set1_ip_asc(i32* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %221

136:                                              ; preds = %130
  br label %220

137:                                              ; preds = %2
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* @X509_V_FLAG_IGNORE_CRITICAL, align 4
  %140 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %138, i32 %139)
  br label %220

141:                                              ; preds = %2
  br label %220

142:                                              ; preds = %2
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %145 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %143, i32 %144)
  br label %220

146:                                              ; preds = %2
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %149 = load i32, i32* @X509_V_FLAG_CRL_CHECK_ALL, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %147, i32 %150)
  br label %220

152:                                              ; preds = %2
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* @X509_V_FLAG_POLICY_CHECK, align 4
  %155 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %153, i32 %154)
  br label %220

156:                                              ; preds = %2
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* @X509_V_FLAG_EXPLICIT_POLICY, align 4
  %159 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %157, i32 %158)
  br label %220

160:                                              ; preds = %2
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @X509_V_FLAG_INHIBIT_ANY, align 4
  %163 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %161, i32 %162)
  br label %220

164:                                              ; preds = %2
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* @X509_V_FLAG_INHIBIT_MAP, align 4
  %167 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %165, i32 %166)
  br label %220

168:                                              ; preds = %2
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* @X509_V_FLAG_X509_STRICT, align 4
  %171 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %169, i32 %170)
  br label %220

172:                                              ; preds = %2
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* @X509_V_FLAG_EXTENDED_CRL_SUPPORT, align 4
  %175 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %173, i32 %174)
  br label %220

176:                                              ; preds = %2
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* @X509_V_FLAG_USE_DELTAS, align 4
  %179 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %177, i32 %178)
  br label %220

180:                                              ; preds = %2
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* @X509_V_FLAG_NOTIFY_POLICY, align 4
  %183 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %181, i32 %182)
  br label %220

184:                                              ; preds = %2
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* @X509_V_FLAG_CHECK_SS_SIGNATURE, align 4
  %187 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %185, i32 %186)
  br label %220

188:                                              ; preds = %2
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @X509_V_FLAG_TRUSTED_FIRST, align 4
  %191 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %189, i32 %190)
  br label %220

192:                                              ; preds = %2
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* @X509_V_FLAG_SUITEB_128_LOS_ONLY, align 4
  %195 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %193, i32 %194)
  br label %220

196:                                              ; preds = %2
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* @X509_V_FLAG_SUITEB_128_LOS, align 4
  %199 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %197, i32 %198)
  br label %220

200:                                              ; preds = %2
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* @X509_V_FLAG_SUITEB_192_LOS, align 4
  %203 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %201, i32 %202)
  br label %220

204:                                              ; preds = %2
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* @X509_V_FLAG_PARTIAL_CHAIN, align 4
  %207 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %205, i32 %206)
  br label %220

208:                                              ; preds = %2
  %209 = load i32*, i32** %5, align 8
  %210 = load i32, i32* @X509_V_FLAG_NO_ALT_CHAINS, align 4
  %211 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %209, i32 %210)
  br label %220

212:                                              ; preds = %2
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* @X509_V_FLAG_NO_CHECK_TIME, align 4
  %215 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %213, i32 %214)
  br label %220

216:                                              ; preds = %2
  %217 = load i32*, i32** %5, align 8
  %218 = load i32, i32* @X509_V_FLAG_ALLOW_PROXY_CERTS, align 4
  %219 = call i32 @X509_VERIFY_PARAM_set_flags(i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %2, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %168, %164, %160, %156, %152, %146, %142, %141, %137, %136, %129, %122, %112, %97, %87, %74, %63, %35
  store i32 1, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %135, %128, %121, %107, %102, %69, %58, %44, %30, %24
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @OBJ_txt2obj(i32, i32) #1

declare dso_local i32 @opt_arg(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_add0_policy(i32*, i32*) #1

declare dso_local i32 @X509_PURPOSE_get_by_sname(i32) #1

declare dso_local i32* @X509_PURPOSE_get0(i32) #1

declare dso_local i32 @X509_PURPOSE_get_id(i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_purpose(i32*, i32) #1

declare dso_local i32* @X509_VERIFY_PARAM_lookup(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1(i32*, i32*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_depth(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_auth_level(i32*, i32) #1

declare dso_local i32 @opt_imax(i32, i32*) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_time(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_host(i32*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_email(i32*, i32, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set1_ip_asc(i32*, i32) #1

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
