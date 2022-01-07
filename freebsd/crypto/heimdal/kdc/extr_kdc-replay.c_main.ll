; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kdc-replay.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kdc-replay.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32*, i64 }
%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32* }
%struct.sockaddr = type { i32 }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"krb5_init_context failed to parse configuration file\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"krb5_kdc_default_config\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"kdc-replay\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"krb5_kdc_set_dbinfo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"argc != 2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"kdc replay\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"krb5_storage_from_fd\00", align 1
@HEIM_ERR_EOF = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"krb5_ret_uint32(version)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"version not 1\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"krb5_ret_uint32(time)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"krb5_ret_address\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"krb5_ret_data\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"krb5_ret_uint32(class|type)\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"krb5_ret_uint32(tag)\00", align 1
@KRB5_PROG_ATYPE_NOSUPP = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"krb5_addr2sockaddr\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"krb5_print_address\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"processing request from %s, %lu bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"krb5_kdc_process_request\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"class|type mismatch: %d != %d\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"tag mismatch\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"clty not invalid\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"tag not invalid\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [80 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @setprogname(i8* %27)
  %29 = load i32, i32* @args, align 4
  %30 = load i32, i32* @num_args, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i64 @getarg(i32 %29, i32 %30, i32 %31, i8** %32, i32* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @usage(i32 1)
  br label %37

37:                                               ; preds = %35, %2
  %38 = load i64, i64* @help_flag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @usage(i32 0)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* @version_flag, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @print_version(i32* null)
  %47 = call i32 @exit(i32 0) #3
  unreachable

48:                                               ; preds = %42
  %49 = call i64 @krb5_init_context(i32* %7)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @krb5_kdc_get_config(i32 %55, %struct.TYPE_11__** %8)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @krb5_err(i32 %60, i32 1, i64 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = call i32 @kdc_openlog(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = call i64 @krb5_kdc_set_dbinfo(i32 %67, %struct.TYPE_11__* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @krb5_err(i32 %73, i32 1, i64 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @O_RDONLY, align 4
  %87 = call i32 @open(i8* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %81
  %96 = load i32, i32* %10, align 4
  %97 = call i32* @krb5_storage_from_fd(i32 %96)
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %101, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %264
  store i32 4, i32* %13, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = call i64 @krb5_ret_uint32(i32* %105, i32* %18)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @HEIM_ERR_EOF, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %268

111:                                              ; preds = %104
  %112 = load i64, i64* %6, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %115, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %122, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %9, align 8
  %126 = call i64 @krb5_ret_uint32(i32* %125, i32* %18)
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %130, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32*, i32** %9, align 8
  %134 = call i64 @krb5_ret_address(i32* %133, i32* %15)
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %138, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32*, i32** %9, align 8
  %142 = call i64 @krb5_ret_data(i32* %141, %struct.TYPE_12__* %16)
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %146, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32*, i32** %9, align 8
  %150 = call i64 @krb5_ret_uint32(i32* %149, i32* %19)
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %154, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32*, i32** %9, align 8
  %158 = call i64 @krb5_ret_uint32(i32* %157, i32* %20)
  store i64 %158, i64* %6, align 8
  %159 = load i64, i64* %6, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %162, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32, i32* %7, align 4
  %166 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %167 = call i64 @krb5_addr2sockaddr(i32 %165, i32* %15, %struct.sockaddr* %166, i32* %13, i32 88)
  store i64 %167, i64* %6, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @KRB5_PROG_ATYPE_NOSUPP, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %264

172:                                              ; preds = %164
  %173 = load i64, i64* %6, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @krb5_err(i32 %176, i32 1, i64 %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %179

179:                                              ; preds = %175, %172
  br label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %182 = call i64 @krb5_print_address(i32* %15, i8* %181, i32 80, i32* null)
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* %7, align 4
  %187 = load i64, i64* %6, align 8
  %188 = call i32 @krb5_err(i32 %186, i32 1, i64 %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %180
  %190 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i8* %190, i64 %192)
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i64 0, i64* %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32* null, i32** %195, align 8
  %196 = load i32, i32* %18, align 4
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  %198 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 0, i64* %198, align 8
  %199 = call i32 @krb5_kdc_update_time(%struct.timeval* %14)
  %200 = load i32, i32* %7, align 4
  %201 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @krb5_set_real_time(i32 %200, i32 %202, i32 0)
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds [80 x i8], [80 x i8]* %21, i64 0, i64 0
  %211 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %212 = call i64 @krb5_kdc_process_request(i32 %204, %struct.TYPE_11__* %205, i32* %207, i64 %209, %struct.TYPE_12__* %17, i32* null, i8* %210, %struct.sockaddr* %211, i32 0)
  store i64 %212, i64* %6, align 8
  %213 = load i64, i64* %6, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %189
  %216 = load i32, i32* %7, align 4
  %217 = load i64, i64* %6, align 8
  %218 = call i32 @krb5_err(i32 %216, i32 1, i64 %217, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  br label %219

219:                                              ; preds = %215, %189
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %250

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @der_get_tag(i32* %225, i64 %227, i32* %22, i32* %23, i32* %24, i32* null)
  store i64 %228, i64* %6, align 8
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %23, align 4
  %231 = call i32 @MAKE_TAG(i32 %229, i32 %230, i32 0)
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %223
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* %23, align 4
  %238 = call i32 @MAKE_TAG(i32 %236, i32 %237, i32 0)
  %239 = load i32, i32* %19, align 4
  %240 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %235, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %234, %223
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %24, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load i32, i32* %7, align 4
  %247 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %246, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %241
  %249 = call i32 @krb5_data_free(%struct.TYPE_12__* %17)
  br label %263

250:                                              ; preds = %219
  %251 = load i32, i32* %19, align 4
  %252 = icmp ne i32 %251, -1
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32, i32* %7, align 4
  %255 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %254, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32, i32* %20, align 4
  %258 = icmp ne i32 %257, -1
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* %7, align 4
  %261 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %260, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %248
  br label %264

264:                                              ; preds = %263, %171
  %265 = call i32 @krb5_data_free(%struct.TYPE_12__* %16)
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @krb5_free_address(i32 %266, i32* %15)
  br label %104

268:                                              ; preds = %110
  %269 = load i32*, i32** %9, align 8
  %270 = call i32 @krb5_storage_free(i32* %269)
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @krb5_free_context(i32 %271)
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @krb5_kdc_get_config(i32, %struct.TYPE_11__**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @kdc_openlog(i32, i8*, %struct.TYPE_11__*) #1

declare dso_local i64 @krb5_kdc_set_dbinfo(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i64 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i64 @krb5_ret_address(i32*, i32*) #1

declare dso_local i64 @krb5_ret_data(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @krb5_addr2sockaddr(i32, i32*, %struct.sockaddr*, i32*, i32) #1

declare dso_local i64 @krb5_print_address(i32*, i8*, i32, i32*) #1

declare dso_local i32 @krb5_kdc_update_time(%struct.timeval*) #1

declare dso_local i32 @krb5_set_real_time(i32, i32, i32) #1

declare dso_local i64 @krb5_kdc_process_request(i32, %struct.TYPE_11__*, i32*, i64, %struct.TYPE_12__*, i32*, i8*, %struct.sockaddr*, i32) #1

declare dso_local i64 @der_get_tag(i32*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MAKE_TAG(i32, i32, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_12__*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
