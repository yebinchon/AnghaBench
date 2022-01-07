; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_uu_client.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_uu_client.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_23__, i8* }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"getsockname(%s)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"getpeername(%s)\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"krb5_cc_default\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"krb5_auth_con_init\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"krb5_auth_con_setaddr\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"krbtgt\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"krb5_make_principal\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"krb5_cc_retrieve_cred\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"krb5_unparse_name\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"krb5_write_message\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"krb5_auth_con_setuserkey\00", align 1
@VERSION = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"krb5_recvauth\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Authorization data:\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"\09type %d, length %lu\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"hej\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"krb5_mk_safe\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"hemligt\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"krb5_mk_priv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__, align 8
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__, align 8
  %18 = alloca %struct.TYPE_28__, align 8
  %19 = alloca %struct.TYPE_29__, align 8
  %20 = alloca %struct.TYPE_29__, align 8
  %21 = alloca %struct.TYPE_27__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_28__, align 8
  %24 = alloca %struct.TYPE_31__*, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 4, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  %27 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %28 = call i64 @getsockname(i32 %26, %struct.sockaddr* %27, i32* %9)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %3
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %30
  store i32 4, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  %39 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %40 = call i64 @getpeername(i32 %38, %struct.sockaddr* %39, i32* %9)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %37
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = call i64 @krb5_init_context(i32* %12)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @krb5_cc_default(i32 %57, i32* %13)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @krb5_err(i32 %62, i32 1, i64 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @krb5_auth_con_init(i32 %66, i32* %14)
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %15, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @krb5_err(i32 %71, i32 1, i64 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i8*, i8** @AF_INET, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  store i32 4, i32* %78, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load i8*, i8** @AF_INET, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i32 4, i32* %85, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @krb5_auth_con_setaddrs(i32 %89, i32 %90, %struct.TYPE_30__* %11, %struct.TYPE_30__* %10)
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %74
  %95 = load i32, i32* %12, align 4
  %96 = load i64, i64* %15, align 8
  %97 = call i32 @krb5_err(i32 %95, i32 1, i64 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %74
  %99 = call i32 @krb5_cc_clear_mcred(%struct.TYPE_29__* %19)
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @krb5_cc_get_principal(i32 %100, i32 %101, i32* %16)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @krb5_err(i32 %106, i32 1, i64 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i32, i32* %12, align 4
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @krb5_principal_get_realm(i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @krb5_principal_get_realm(i32 %115, i32 %116)
  %118 = call i64 @krb5_make_principal(i32 %110, i32* %111, i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32* null)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @krb5_err(i32 %122, i32 1, i64 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %109
  %126 = load i32, i32* %16, align 4
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @krb5_cc_retrieve_cred(i32 %128, i32 %129, i32 0, %struct.TYPE_29__* %19, %struct.TYPE_29__* %20)
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = load i64, i64* %15, align 8
  %136 = call i32 @krb5_err(i32 %134, i32 1, i64 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133, %125
  %138 = load i32, i32* %12, align 4
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @krb5_unparse_name(i32 %138, i32 %140, i8** %22)
  store i64 %141, i64* %15, align 8
  %142 = load i64, i64* %15, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* %12, align 4
  %146 = load i64, i64* %15, align 8
  %147 = call i32 @krb5_err(i32 %145, i32 1, i64 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %137
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = load i8*, i8** %22, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = add nsw i32 %152, 1
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 1
  store i32 %153, i32* %154, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i64 @krb5_write_message(i32 %155, i32* %4, %struct.TYPE_28__* %23)
  store i64 %156, i64* %15, align 8
  %157 = load i64, i64* %15, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %148
  %160 = load i32, i32* %12, align 4
  %161 = load i64, i64* %15, align 8
  %162 = call i32 @krb5_err(i32 %160, i32 1, i64 %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %148
  %164 = load i8*, i8** %22, align 8
  %165 = call i32 @free(i8* %164)
  %166 = load i32, i32* %12, align 4
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %168 = call i64 @krb5_write_message(i32 %166, i32* %4, %struct.TYPE_28__* %167)
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load i32, i32* %12, align 4
  %173 = load i64, i64* %15, align 8
  %174 = call i32 @krb5_err(i32 %172, i32 1, i64 %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %175

175:                                              ; preds = %171, %163
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %14, align 4
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 0
  %179 = call i64 @krb5_auth_con_setuserkey(i32 %176, i32 %177, i32* %178)
  store i64 %179, i64* %15, align 8
  %180 = load i64, i64* %15, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i32, i32* %12, align 4
  %184 = load i64, i64* %15, align 8
  %185 = call i32 @krb5_err(i32 %183, i32 1, i64 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %175
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @VERSION, align 4
  %189 = load i32, i32* %16, align 4
  %190 = call i64 @krb5_recvauth(i32 %187, i32* %14, i32* %4, i32 %188, i32 %189, i32 0, i32* null, %struct.TYPE_27__** %21)
  store i64 %190, i64* %15, align 8
  %191 = load i64, i64* %15, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i32, i32* %12, align 4
  %195 = load i64, i64* %15, align 8
  %196 = call i32 @krb5_err(i32 %194, i32 1, i64 %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %197

197:                                              ; preds = %193, %186
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %200, align 8
  %202 = icmp ne %struct.TYPE_31__* %201, null
  br i1 %202, label %203, label %238

203:                                              ; preds = %197
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %207, align 8
  store %struct.TYPE_31__* %208, %struct.TYPE_31__** %24, align 8
  store i32 0, i32* %25, align 4
  br label %209

209:                                              ; preds = %234, %203
  %210 = load i32, i32* %25, align 4
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %237

215:                                              ; preds = %209
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %217, align 8
  %219 = load i32, i32* %25, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  %227 = load i32, i32* %25, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %223, i64 %232)
  br label %234

234:                                              ; preds = %215
  %235 = load i32, i32* %25, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %25, align 4
  br label %209

237:                                              ; preds = %209
  br label %238

238:                                              ; preds = %237, %197
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  store i32 3, i32* %240, align 8
  %241 = call i32 @krb5_data_zero(%struct.TYPE_28__* %18)
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %14, align 4
  %244 = call i64 @krb5_mk_safe(i32 %242, i32 %243, %struct.TYPE_28__* %17, %struct.TYPE_28__* %18, i32* null)
  store i64 %244, i64* %15, align 8
  %245 = load i64, i64* %15, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %238
  %248 = load i32, i32* %12, align 4
  %249 = load i64, i64* %15, align 8
  %250 = call i32 @krb5_err(i32 %248, i32 1, i64 %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %251

251:                                              ; preds = %247, %238
  %252 = load i32, i32* %12, align 4
  %253 = call i64 @krb5_write_message(i32 %252, i32* %4, %struct.TYPE_28__* %18)
  store i64 %253, i64* %15, align 8
  %254 = load i64, i64* %15, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = load i32, i32* %12, align 4
  %258 = load i64, i64* %15, align 8
  %259 = call i32 @krb5_err(i32 %257, i32 1, i64 %258, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %260

260:                                              ; preds = %256, %251
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  store i32 7, i32* %262, align 8
  %263 = call i32 @krb5_data_free(%struct.TYPE_28__* %18)
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %14, align 4
  %266 = call i64 @krb5_mk_priv(i32 %264, i32 %265, %struct.TYPE_28__* %17, %struct.TYPE_28__* %18, i32* null)
  store i64 %266, i64* %15, align 8
  %267 = load i64, i64* %15, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %260
  %270 = load i32, i32* %12, align 4
  %271 = load i64, i64* %15, align 8
  %272 = call i32 @krb5_err(i32 %270, i32 1, i64 %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  br label %273

273:                                              ; preds = %269, %260
  %274 = load i32, i32* %12, align 4
  %275 = call i64 @krb5_write_message(i32 %274, i32* %4, %struct.TYPE_28__* %18)
  store i64 %275, i64* %15, align 8
  %276 = load i64, i64* %15, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = load i32, i32* %12, align 4
  %280 = load i64, i64* %15, align 8
  %281 = call i32 @krb5_err(i32 %279, i32 1, i64 %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %282

282:                                              ; preds = %278, %273
  ret i32 0
}

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i64 @krb5_cc_default(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_auth_con_init(i32, i32*) #1

declare dso_local i64 @krb5_auth_con_setaddrs(i32, i32, %struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @krb5_cc_clear_mcred(%struct.TYPE_29__*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, i32*) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @krb5_cc_retrieve_cred(i32, i32, i32, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @krb5_write_message(i32, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_auth_con_setuserkey(i32, i32, i32*) #1

declare dso_local i64 @krb5_recvauth(i32, i32*, i32*, i32, i32, i32, i32*, %struct.TYPE_27__**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_28__*) #1

declare dso_local i64 @krb5_mk_safe(i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_28__*) #1

declare dso_local i64 @krb5_mk_priv(i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
