; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_server_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdigest.c_digest_server_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.digest_server_request_options = type { i32, i32*, i32*, i32, i32*, i32, i32*, i32* }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"server nonce missing\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"type missing\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"opaque missing\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"client response missing\00", align 1
@context = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"digest_alloc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"server identifier missing\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"krb5_digest_set_type\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"krb5_digest_set_username\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"krb5_digest_set_server_nonce\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"krb5_digest_set_client_nonce\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"krb5_digest_set_opaque\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"krb5_digest_set_responseData\00", align 1
@id = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"krb5_digest_request\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"status=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"rsp=%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"tickets=no\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"krb5_digest_get_session_key\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"hex_encode\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"session-key=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digest_server_request(%struct.digest_server_request_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.digest_server_request_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i8*, align 8
  store %struct.digest_server_request_options* %0, %struct.digest_server_request_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %13 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %14 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %21 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %28 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %35 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* @context, align 4
  %42 = call i64 @krb5_digest_alloc(i32 %41, i32* %8)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @context, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @krb5_err(i32 %46, i32 1, i64 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %51 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @strcasecmp(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %57 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* @context, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %66 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @krb5_digest_set_identifier(i32 %63, i32 %64, i32* %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @context, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @krb5_err(i32 %72, i32 1, i64 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %62
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i32, i32* @context, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %80 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @krb5_digest_set_type(i32 %77, i32 %78, i32* %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32, i32* @context, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @krb5_err(i32 %86, i32 1, i64 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %76
  %90 = load i32, i32* @context, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %93 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @krb5_digest_set_username(i32 %90, i32 %91, i32 %94)
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32, i32* @context, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @krb5_err(i32 %99, i32 1, i64 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i32, i32* @context, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %106 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @krb5_digest_set_server_nonce(i32 %103, i32 %104, i32* %107)
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i32, i32* @context, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @krb5_err(i32 %112, i32 1, i64 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %102
  %116 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %117 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load i32, i32* @context, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %124 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @krb5_digest_set_client_nonce(i32 %121, i32 %122, i32 %125)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @context, align 4
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @krb5_err(i32 %130, i32 1, i64 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %120
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i32, i32* @context, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %138 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @krb5_digest_set_opaque(i32 %135, i32 %136, i32* %139)
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load i32, i32* @context, align 4
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @krb5_err(i32 %144, i32 1, i64 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %134
  %148 = load i32, i32* @context, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %151 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @krb5_digest_set_responseData(i32 %148, i32 %149, i32* %152)
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %7, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i32, i32* @context, align 4
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @krb5_err(i32 %157, i32 1, i64 %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %147
  %161 = load i32, i32* @context, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.digest_server_request_options*, %struct.digest_server_request_options** %4, align 8
  %164 = getelementptr inbounds %struct.digest_server_request_options, %struct.digest_server_request_options* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @id, align 4
  %167 = call i64 @krb5_digest_request(i32 %161, i32 %162, i32 %165, i32 %166)
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = load i32, i32* @context, align 4
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @krb5_err(i32 %171, i32 1, i64 %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %174

174:                                              ; preds = %170, %160
  %175 = load i32, i32* @context, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i64 @krb5_digest_rep_get_status(i32 %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  store i8* %180, i8** %9, align 8
  %181 = load i32, i32* @context, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i8* @krb5_digest_get_rsp(i32 %181, i32 %182)
  store i8* %183, i8** %10, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %184)
  %186 = load i8*, i8** %10, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %174
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %188, %174
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %193 = load i32, i32* @context, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i64 @krb5_digest_get_session_key(i32 %193, i32 %194, %struct.TYPE_4__* %11)
  store i64 %195, i64* %7, align 8
  %196 = load i64, i64* %7, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = load i32, i32* @context, align 4
  %200 = load i64, i64* %7, align 8
  %201 = call i32 @krb5_err(i32 %199, i32 1, i64 %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %202

202:                                              ; preds = %198, %191
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @hex_encode(i32 %208, i64 %210, i8** %12)
  %212 = load i8*, i8** %12, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i32, i32* @context, align 4
  %216 = call i32 @krb5_errx(i32 %215, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %206
  %218 = call i32 @krb5_data_free(%struct.TYPE_4__* %11)
  %219 = load i8*, i8** %12, align 8
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %219)
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 @free(i8* %221)
  br label %223

223:                                              ; preds = %217, %202
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @krb5_digest_free(i32 %224)
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_digest_alloc(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i64 @krb5_digest_set_identifier(i32, i32, i32*) #1

declare dso_local i64 @krb5_digest_set_type(i32, i32, i32*) #1

declare dso_local i64 @krb5_digest_set_username(i32, i32, i32) #1

declare dso_local i64 @krb5_digest_set_server_nonce(i32, i32, i32*) #1

declare dso_local i64 @krb5_digest_set_client_nonce(i32, i32, i32) #1

declare dso_local i64 @krb5_digest_set_opaque(i32, i32, i32*) #1

declare dso_local i64 @krb5_digest_set_responseData(i32, i32, i32*) #1

declare dso_local i64 @krb5_digest_request(i32, i32, i32, i32) #1

declare dso_local i64 @krb5_digest_rep_get_status(i32, i32) #1

declare dso_local i8* @krb5_digest_get_rsp(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @krb5_digest_get_session_key(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @hex_encode(i32, i64, i8**) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_digest_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
