; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gssapi_server.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_gssapi_server.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.sockaddr_in = type { i16, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.gss_channel_bindings_struct = type { %struct.TYPE_23__, %struct.TYPE_22__, i8*, %struct.TYPE_20__, i8* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.sockaddr = type { i32 }

@GSS_C_NO_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"getsockname)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@GSS_C_AF_INET = common dso_local global i8* null, align 8
@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"gss_accept_sec_context\00", align 1
@GSS_C_NO_BUFFER = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@GSS_KRB5_MECHANISM = common dso_local global %struct.TYPE_19__* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"Kerberos 5\00", align 1
@GSS_SPNEGO_MECHANISM = common dso_local global %struct.TYPE_18__* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"SPNEGO\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Using mech: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Delegated cred found\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"FILE:/tmp/krb5cc_test\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Delegated user is: `%s'\0A\00", align 1
@fork_flag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"gss_export_sec_context\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"gss_import_sec_context\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.gss_channel_bindings_struct, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca [2 x i32], align 4
  %30 = alloca %struct.TYPE_24__, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_24__, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %33 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  store i64 %33, i64* %9, align 8
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %11, %struct.TYPE_24__** %13, align 8
  store i64 0, i64* %18, align 8
  store i32 8, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %36 = call i64 @getsockname(i32 %34, %struct.sockaddr* %35, i32* %8)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 8
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %2
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  store i32 8, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %47 = call i64 @getpeername(i32 %45, %struct.sockaddr* %46, i32* %8)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 8
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %44
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i8*, i8** @GSS_C_AF_INET, align 8
  %57 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 4
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 24
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 0
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %85 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = load i8*, i8** @GSS_C_AF_INET, align 8
  %88 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 2
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 24
  %95 = and i32 %94, 255
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %95, i32* %96, align 16
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 0
  %113 = and i32 %112, 255
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %116 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = call i32* @emalloc(i32 4)
  %119 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  store i32* %118, i32** %120, align 8
  %121 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.gss_channel_bindings_struct, %struct.gss_channel_bindings_struct* %17, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  store i64 %125, i64* %18, align 8
  br label %126

126:                                              ; preds = %162, %55
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %129 = call i32 @read_token(i32 %127, %struct.TYPE_24__* %128)
  %130 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %133 = call i32 @gss_accept_sec_context(i32* %15, i64* %9, i64 %130, %struct.TYPE_24__* %131, %struct.gss_channel_bindings_struct* %17, i32* %16, %struct.TYPE_25__** %22, %struct.TYPE_24__* %132, i32* null, i32* null, i64* %18)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @GSS_ERROR(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @gss_err(i32 1, i32 %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %126
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %148 = call i32 @write_token(i32 %146, %struct.TYPE_24__* %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32, i32* %14, align 4
  %151 = call i64 @GSS_ERROR(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @GSS_C_NO_CONTEXT, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* @GSS_C_NO_BUFFER, align 4
  %159 = call i32 @gss_delete_sec_context(i32* %15, i64* %9, i32 %158)
  br label %160

160:                                              ; preds = %157, %153
  br label %167

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %126, label %167

167:                                              ; preds = %162, %160
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  store i8* %171, i8** %24, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** @GSS_KRB5_MECHANISM, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %167
  %180 = load i8*, i8** %24, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** @GSS_KRB5_MECHANISM, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @memcmp(i8* %180, i32 %183, i64 %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  br label %211

190:                                              ; preds = %179, %167
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** @GSS_SPNEGO_MECHANISM, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %190
  %199 = load i8*, i8** %24, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** @GSS_SPNEGO_MECHANISM, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @memcmp(i8* %199, i32 %202, i64 %205)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  br label %210

209:                                              ; preds = %198, %190
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  br label %210

210:                                              ; preds = %209, %208
  br label %211

211:                                              ; preds = %210, %189
  %212 = load i8*, i8** %23, align 8
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %212)
  %214 = load i64, i64* %18, align 8
  %215 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %254

217:                                              ; preds = %211
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %219 = call i32 @krb5_init_context(i32* %25)
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %25, align 4
  %221 = call i32 @krb5_cc_resolve(i32 %220, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %19)
  store i32 %221, i32* %14, align 4
  %222 = load i64, i64* %18, align 8
  %223 = load i32, i32* %19, align 4
  %224 = call i32 @gss_krb5_copy_ccache(i32* %15, i64 %222, i32 %223)
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %14, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %249

227:                                              ; preds = %217
  %228 = load i32, i32* %25, align 4
  %229 = load i32, i32* %19, align 4
  %230 = call i32 @krb5_cc_get_principal(i32 %228, i32 %229, i32* %26)
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %227
  %234 = load i32, i32* %25, align 4
  %235 = load i32, i32* %26, align 4
  %236 = call i32 @krb5_unparse_name(i32 %234, i32 %235, i8** %27)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load i8*, i8** %27, align 8
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %240)
  %242 = load i8*, i8** %27, align 8
  %243 = call i32 @free(i8* %242)
  br label %244

244:                                              ; preds = %239, %233
  %245 = load i32, i32* %25, align 4
  %246 = load i32, i32* %26, align 4
  %247 = call i32 @krb5_free_principal(i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %227
  br label %249

249:                                              ; preds = %248, %217
  %250 = load i32, i32* %25, align 4
  %251 = load i32, i32* %19, align 4
  %252 = call i32 @krb5_cc_close(i32 %250, i32 %251)
  %253 = call i32 @gss_release_cred(i32* %15, i64* %18)
  br label %254

254:                                              ; preds = %249, %211
  %255 = load i64, i64* @fork_flag, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %308

257:                                              ; preds = %254
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %259 = call i64 @pipe(i32* %258)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %257
  %264 = call i64 (...) @fork()
  store i64 %264, i64* %28, align 8
  %265 = load i64, i64* %28, align 8
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %263
  %270 = load i64, i64* %28, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %269
  %273 = call i32 @gss_export_sec_context(i32* %15, i64* %9, %struct.TYPE_24__* %30)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* %14, align 4
  %275 = call i64 @GSS_ERROR(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i32, i32* %15, align 4
  %279 = call i32 @gss_err(i32 1, i32 %278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %272
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @write_token(i32 %282, %struct.TYPE_24__* %30)
  %284 = call i32 @exit(i32 0) #3
  unreachable

285:                                              ; preds = %269
  %286 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @close(i32 %287)
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @read_token(i32 %290, %struct.TYPE_24__* %32)
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @close(i32 %293)
  %295 = call i32 @gss_import_sec_context(i32* %15, %struct.TYPE_24__* %32, i64* %31)
  store i32 %295, i32* %14, align 4
  %296 = load i32, i32* %14, align 4
  %297 = call i64 @GSS_ERROR(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %285
  %300 = load i32, i32* %15, align 4
  %301 = call i32 @gss_err(i32 1, i32 %300, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %285
  %303 = call i32 @gss_release_buffer(i32* %15, %struct.TYPE_24__* %32)
  %304 = load i32, i32* %4, align 4
  %305 = load i64, i64* %31, align 8
  %306 = load i32, i32* %16, align 4
  %307 = call i32 @process_it(i32 %304, i64 %305, i32 %306)
  store i32 %307, i32* %3, align 4
  br label %313

308:                                              ; preds = %254
  %309 = load i32, i32* %4, align 4
  %310 = load i64, i64* %9, align 8
  %311 = load i32, i32* %16, align 4
  %312 = call i32 @process_it(i32 %309, i64 %310, i32 %311)
  store i32 %312, i32* %3, align 4
  br label %313

313:                                              ; preds = %308, %302
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32* @emalloc(i32) #1

declare dso_local i32 @read_token(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @gss_accept_sec_context(i32*, i64*, i64, %struct.TYPE_24__*, %struct.gss_channel_bindings_struct*, i32*, %struct.TYPE_25__**, %struct.TYPE_24__*, i32*, i32*, i64*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @gss_err(i32, i32, i8*) #1

declare dso_local i32 @write_token(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @gss_delete_sec_context(i32*, i64*, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @krb5_cc_resolve(i32, i8*, i32*) #1

declare dso_local i32 @gss_krb5_copy_ccache(i32*, i64, i32) #1

declare dso_local i32 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i32 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @gss_release_cred(i32*, i64*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @gss_export_sec_context(i32*, i64*, %struct.TYPE_24__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @gss_import_sec_context(i32*, %struct.TYPE_24__*, i64*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @process_it(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
