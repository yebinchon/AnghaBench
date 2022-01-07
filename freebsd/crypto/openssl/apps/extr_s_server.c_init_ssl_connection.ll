; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_init_ssl_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_init_ssl_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@dtlslisten = common dso_local global i64 0, align 8
@stateless = common dso_local global i64 0, align 8
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ERROR - memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ERROR - unable to connect\0A\00", align 1
@SSL_ERROR_WANT_X509_LOOKUP = common dso_local global i64 0, align 8
@bio_s_out = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LOOKUP during accept %s\0A\00", align 1
@srp_callback_parm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"LOOKUP done %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"LOOKUP not successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DELAY\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@X509_V_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"verify error:%s\0A\00", align 1
@TLS_ST_SR_CLNT_HELLO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @init_ssl_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ssl_connection(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* @dtlslisten, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @stateless, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %12, %1
  store i32* null, i32** %7, align 8
  %16 = load i64, i64* @dtlslisten, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = call i32* (...) @BIO_ADDR_new()
  store i32* %19, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @bio_err, align 4
  %23 = call i32 (i32, i8*, ...) @BIO_printf(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %178

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @DTLSv1_listen(i32* %25, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %15
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @SSL_stateless(i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %31
  store i32 -1, i32* %9, align 4
  %35 = load i64, i64* @dtlslisten, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = call i32* @SSL_get_wbio(i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @BIO_get_fd(i32* %43, i32* %9)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @BIO_connect(i32 %49, i32* %50, i32 0)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @bio_err, align 4
  %55 = call i32 (i32, i8*, ...) @BIO_printf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @BIO_ADDR_free(i32* %56)
  store i32 0, i32* %2, align 4
  br label %178

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @BIO_ctrl_set_connected(i32* %59, i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @BIO_ADDR_free(i32* %62)
  store i64 0, i64* @dtlslisten, align 8
  br label %65

64:                                               ; preds = %34
  store i64 0, i64* @stateless, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @SSL_accept(i32* %66)
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %31
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @BIO_ADDR_free(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %135

72:                                               ; preds = %12
  br label %73

73:                                               ; preds = %132, %72
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @SSL_accept(i32* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @is_retryable(i32* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %73
  br label %83

83:                                               ; preds = %123, %82
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @SSL_get_error(i32* %87, i32 %88)
  %90 = load i64, i64* @SSL_ERROR_WANT_X509_LOOKUP, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %86, %83
  %93 = phi i1 [ false, %83 ], [ %91, %86 ]
  br i1 %93, label %94, label %124

94:                                               ; preds = %92
  %95 = load i32, i32* @bio_s_out, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 1), align 8
  %97 = call i32 (i32, i8*, ...) @BIO_printf(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 0), align 8
  %99 = call i32 @SRP_user_pwd_free(%struct.TYPE_5__* %98)
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 2), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 1), align 8
  %102 = call %struct.TYPE_5__* @SRP_VBASE_get1_by_user(i32 %100, i32 %101)
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 0), align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 0), align 8
  %104 = icmp ne %struct.TYPE_5__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load i32, i32* @bio_s_out, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srp_callback_parm, i32 0, i32 0), align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @BIO_printf(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %114

111:                                              ; preds = %94
  %112 = load i32, i32* @bio_s_out, align 4
  %113 = call i32 (i32, i8*, ...) @BIO_printf(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @SSL_accept(i32* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @is_retryable(i32* %120, i32 %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %114
  br label %83

124:                                              ; preds = %92
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** %3, align 8
  %130 = call i64 @SSL_waiting_for_async(i32* %129)
  %131 = icmp ne i64 %130, 0
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi i1 [ false, %125 ], [ %131, %128 ]
  br i1 %133, label %73, label %134

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %71
  %136 = load i32, i32* %4, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %135
  %139 = load i64, i64* @dtlslisten, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* @stateless, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %4, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %144, %141
  %148 = load i64, i64* @dtlslisten, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %147
  %151 = load i64, i64* @stateless, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153, %144
  %157 = load i32, i32* @bio_s_out, align 4
  %158 = call i32 (i32, i8*, ...) @BIO_printf(i32 %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %178

159:                                              ; preds = %153, %150, %147
  %160 = load i32, i32* @bio_err, align 4
  %161 = call i32 (i32, i8*, ...) @BIO_printf(i32 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32*, i32** %3, align 8
  %163 = call i64 @SSL_get_verify_result(i32* %162)
  store i64 %163, i64* %5, align 8
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* @X509_V_OK, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load i32, i32* @bio_err, align 4
  %169 = load i64, i64* %5, align 8
  %170 = call i32 @X509_verify_cert_error_string(i64 %169)
  %171 = call i32 (i32, i8*, ...) @BIO_printf(i32 %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %167, %159
  %173 = load i32, i32* @bio_err, align 4
  %174 = call i32 @ERR_print_errors(i32 %173)
  store i32 0, i32* %2, align 4
  br label %178

175:                                              ; preds = %135
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @print_connection_info(i32* %176)
  store i32 1, i32* %2, align 4
  br label %178

178:                                              ; preds = %175, %172, %156, %53, %21
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32* @BIO_ADDR_new(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @DTLSv1_listen(i32*, i32*) #1

declare dso_local i32 @SSL_stateless(i32*) #1

declare dso_local i32* @SSL_get_wbio(i32*) #1

declare dso_local i32 @BIO_get_fd(i32*, i32*) #1

declare dso_local i64 @BIO_connect(i32, i32*, i32) #1

declare dso_local i32 @BIO_ADDR_free(i32*) #1

declare dso_local i32 @BIO_ctrl_set_connected(i32*, i32*) #1

declare dso_local i32 @SSL_accept(i32*) #1

declare dso_local i32 @is_retryable(i32*, i32) #1

declare dso_local i64 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @SRP_user_pwd_free(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @SRP_VBASE_get1_by_user(i32, i32) #1

declare dso_local i64 @SSL_waiting_for_async(i32*) #1

declare dso_local i64 @SSL_get_verify_result(i32*) #1

declare dso_local i32 @X509_verify_cert_error_string(i64) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @print_connection_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
