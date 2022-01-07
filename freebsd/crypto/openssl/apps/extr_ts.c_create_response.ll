; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_create_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_create_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@serial_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*)* @create_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_response(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i32* @BIO_new_file(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %23, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  br label %168

29:                                               ; preds = %10
  %30 = load i32*, i32** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i8* @TS_CONF_get_tsa_section(i32* %30, i8* %31)
  store i8* %32, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %168

35:                                               ; preds = %29
  %36 = call i32* (...) @TS_RESP_CTX_new()
  store i32* %36, i32** %24, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %168

39:                                               ; preds = %35
  %40 = load i32*, i32** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* @serial_cb, align 4
  %43 = load i32*, i32** %24, align 8
  %44 = call i32 @TS_CONF_set_serial(i32* %40, i8* %41, i32 %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %168

47:                                               ; preds = %39
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @TS_CONF_set_crypto_device(i32* %48, i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %168

54:                                               ; preds = %47
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = call i32 @TS_CONF_set_signer_cert(i32* %55, i8* %56, i8* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %168

62:                                               ; preds = %54
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = load i32*, i32** %24, align 8
  %67 = call i32 @TS_CONF_set_certs(i32* %63, i8* %64, i8* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %168

70:                                               ; preds = %62
  %71 = load i32*, i32** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i32*, i32** %24, align 8
  %76 = call i32 @TS_CONF_set_signer_key(i32* %71, i8* %72, i8* %73, i8* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %168

79:                                               ; preds = %70
  %80 = load i32*, i32** %17, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** %24, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @TS_RESP_CTX_set_signer_digest(i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %168

88:                                               ; preds = %82
  br label %97

89:                                               ; preds = %79
  %90 = load i32*, i32** %11, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i32*, i32** %24, align 8
  %93 = call i32 @TS_CONF_set_signer_digest(i32* %90, i8* %91, i32* null, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %168

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i32*, i32** %11, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i32*, i32** %24, align 8
  %101 = call i32 @TS_CONF_set_ess_cert_id_digest(i32* %98, i8* %99, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %168

104:                                              ; preds = %97
  %105 = load i32*, i32** %11, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %20, align 8
  %108 = load i32*, i32** %24, align 8
  %109 = call i32 @TS_CONF_set_def_policy(i32* %105, i8* %106, i8* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  br label %168

112:                                              ; preds = %104
  %113 = load i32*, i32** %11, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32*, i32** %24, align 8
  %116 = call i32 @TS_CONF_set_policies(i32* %113, i8* %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %168

119:                                              ; preds = %112
  %120 = load i32*, i32** %11, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32*, i32** %24, align 8
  %123 = call i32 @TS_CONF_set_digests(i32* %120, i8* %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %168

126:                                              ; preds = %119
  %127 = load i32*, i32** %11, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i32*, i32** %24, align 8
  %130 = call i32 @TS_CONF_set_accuracy(i32* %127, i8* %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %168

133:                                              ; preds = %126
  %134 = load i32*, i32** %11, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i32*, i32** %24, align 8
  %137 = call i32 @TS_CONF_set_clock_precision_digits(i32* %134, i8* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  br label %168

140:                                              ; preds = %133
  %141 = load i32*, i32** %11, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i32*, i32** %24, align 8
  %144 = call i32 @TS_CONF_set_ordering(i32* %141, i8* %142, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  br label %168

147:                                              ; preds = %140
  %148 = load i32*, i32** %11, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i32*, i32** %24, align 8
  %151 = call i32 @TS_CONF_set_tsa_name(i32* %148, i8* %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %168

154:                                              ; preds = %147
  %155 = load i32*, i32** %11, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = load i32*, i32** %24, align 8
  %158 = call i32 @TS_CONF_set_ess_cert_id_chain(i32* %155, i8* %156, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  br label %168

161:                                              ; preds = %154
  %162 = load i32*, i32** %24, align 8
  %163 = load i32*, i32** %23, align 8
  %164 = call i32* @TS_RESP_create_response(i32* %162, i32* %163)
  store i32* %164, i32** %22, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %168

167:                                              ; preds = %161
  store i32 1, i32* %21, align 4
  br label %168

168:                                              ; preds = %167, %166, %160, %153, %146, %139, %132, %125, %118, %111, %103, %95, %87, %78, %69, %61, %53, %46, %38, %34, %28
  %169 = load i32, i32* %21, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32*, i32** %22, align 8
  %173 = call i32 @TS_RESP_free(i32* %172)
  store i32* null, i32** %22, align 8
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32*, i32** %24, align 8
  %176 = call i32 @TS_RESP_CTX_free(i32* %175)
  %177 = load i32*, i32** %23, align 8
  %178 = call i32 @BIO_free_all(i32* %177)
  %179 = load i32*, i32** %22, align 8
  ret i32* %179
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i8* @TS_CONF_get_tsa_section(i32*, i8*) #1

declare dso_local i32* @TS_RESP_CTX_new(...) #1

declare dso_local i32 @TS_CONF_set_serial(i32*, i8*, i32, i32*) #1

declare dso_local i32 @TS_CONF_set_crypto_device(i32*, i8*, i8*) #1

declare dso_local i32 @TS_CONF_set_signer_cert(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_certs(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_signer_key(i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @TS_RESP_CTX_set_signer_digest(i32*, i32*) #1

declare dso_local i32 @TS_CONF_set_signer_digest(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @TS_CONF_set_ess_cert_id_digest(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_def_policy(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_policies(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_digests(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_accuracy(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_clock_precision_digits(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_ordering(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_tsa_name(i32*, i8*, i32*) #1

declare dso_local i32 @TS_CONF_set_ess_cert_id_chain(i32*, i8*, i32*) #1

declare dso_local i32* @TS_RESP_create_response(i32*, i32*) #1

declare dso_local i32 @TS_RESP_free(i32*) #1

declare dso_local i32 @TS_RESP_CTX_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
