; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_receive_everything.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_receive_everything.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i8*, i64 }
%struct.TYPE_30__ = type { i32 (i32, %struct.TYPE_30__*, i32, i32)*, i32 (i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_30__*, i32)*, i32 (i32, %struct.TYPE_30__*)*, i32 (i32, %struct.TYPE_30__*)* }
%struct.TYPE_29__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"receive complete database\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-NEW\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"hdb_create\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"hdb_set_master_keyfile\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"db->open\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"krb5_read_priv_message\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"krb5_storage_from_data\00", align 1
@ONE_PRINC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"hdb_value2entry\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"hdb_store\00", align 1
@NOW_YOU_HAVE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"strange opcode %d\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"receive_everything: strange %d\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"kadm5_log_reinit\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"kadm5_log_set_version\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"kadm5_log_nop\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"db->rename\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"db->close\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"db->destroy\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"receive complete database, version %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_28__*, i32)* @receive_everything to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_everything(i32 %0, i32 %1, %struct.TYPE_28__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca %struct.TYPE_29__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @hdb_create(i32 %26, %struct.TYPE_30__** %15, i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @krb5_err(i32 %32, i32 1, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %4
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hdb_set_master_keyfile(i32 %38, %struct.TYPE_30__* %39, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @krb5_err(i32 %48, i32 1, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %35
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.TYPE_30__*, i32, i32)*, i32 (i32, %struct.TYPE_30__*, i32, i32)** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %57 = load i32, i32* @O_RDWR, align 4
  %58 = load i32, i32* @O_CREAT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @O_TRUNC, align 4
  %61 = or i32 %59, %60
  %62 = call i32 %54(i32 %55, %struct.TYPE_30__* %56, i32 %61, i32 384)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @krb5_err(i32 %66, i32 1, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %51
  store i32* null, i32** %13, align 8
  br label %70

70:                                               ; preds = %144, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @krb5_read_priv_message(i32 %71, i32 %72, i32* %6, %struct.TYPE_27__* %10)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @krb5_warn(i32 %77, i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %208

80:                                               ; preds = %70
  %81 = call i32* @krb5_storage_from_data(%struct.TYPE_27__* %10)
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %85, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @krb5_ret_int32(i32* %88, i64* %12)
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @ONE_PRINC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %133

93:                                               ; preds = %87
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @krb5_storage_free(i32* %94)
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 4
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  %104 = call i32 @memset(%struct.TYPE_29__* %17, i32 0, i32 4)
  %105 = load i32, i32* %5, align 4
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  %107 = call i32 @hdb_value2entry(i32 %105, %struct.TYPE_27__* %16, i32* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %93
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @krb5_err(i32 %111, i32 1, i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %93
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  %117 = load i32 (i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_30__*, i32, %struct.TYPE_29__*)** %116, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %122 = call i32 %117(i32 %120, %struct.TYPE_30__* %121, i32 0, %struct.TYPE_29__* %17)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @krb5_err(i32 %126, i32 1, i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %114
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @hdb_free_entry(i32 %130, %struct.TYPE_29__* %17)
  %132 = call i32 @krb5_data_free(%struct.TYPE_27__* %10)
  br label %143

133:                                              ; preds = %87
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @NOW_YOU_HAVE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133
  %139 = load i32, i32* %5, align 4
  %140 = load i64, i64* %12, align 8
  %141 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %139, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %138, %137
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @ONE_PRINC, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %70, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @NOW_YOU_HAVE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = load i64, i64* %12, align 8
  %155 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %153, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i64 %154)
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32*, i32** %13, align 8
  %158 = call i32 @krb5_ret_int32(i32* %157, i64* %11)
  %159 = load i32*, i32** %13, align 8
  %160 = call i32 @krb5_storage_free(i32* %159)
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %162 = call i32 @kadm5_log_reinit(%struct.TYPE_28__* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %156
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @krb5_err(i32 %166, i32 1, i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %169

169:                                              ; preds = %165, %156
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %171 = load i64, i64* %11, align 8
  %172 = sub nsw i64 %171, 1
  %173 = call i32 @kadm5_log_set_version(%struct.TYPE_28__* %170, i64 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @krb5_err(i32 %177, i32 1, i32 %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %180

180:                                              ; preds = %176, %169
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %182 = call i32 @kadm5_log_nop(%struct.TYPE_28__* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @krb5_err(i32 %186, i32 1, i32 %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %180
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 2
  %192 = load i32 (i32, %struct.TYPE_30__*, i32)*, i32 (i32, %struct.TYPE_30__*, i32)** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 %192(i32 %193, %struct.TYPE_30__* %194, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %189
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @krb5_err(i32 %204, i32 1, i32 %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %207

207:                                              ; preds = %203, %189
  br label %208

208:                                              ; preds = %207, %76
  %209 = call i32 @krb5_data_free(%struct.TYPE_27__* %10)
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 3
  %212 = load i32 (i32, %struct.TYPE_30__*)*, i32 (i32, %struct.TYPE_30__*)** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %215 = call i32 %212(i32 %213, %struct.TYPE_30__* %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %208
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @krb5_err(i32 %219, i32 1, i32 %220, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %222

222:                                              ; preds = %218, %208
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 4
  %225 = load i32 (i32, %struct.TYPE_30__*)*, i32 (i32, %struct.TYPE_30__*)** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %228 = call i32 %225(i32 %226, %struct.TYPE_30__* %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @krb5_err(i32 %232, i32 1, i32 %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  br label %235

235:                                              ; preds = %231, %222
  %236 = load i32, i32* %5, align 4
  %237 = load i64, i64* %11, align 8
  %238 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %236, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i64 %237)
  %239 = load i32, i32* %9, align 4
  ret i32 %239
}

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @hdb_create(i32, %struct.TYPE_30__**, i8*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hdb_set_master_keyfile(i32, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @krb5_read_priv_message(i32, i32, i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32* @krb5_storage_from_data(%struct.TYPE_27__*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @krb5_ret_int32(i32*, i64*) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @hdb_value2entry(i32, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_27__*) #1

declare dso_local i32 @kadm5_log_reinit(%struct.TYPE_28__*) #1

declare dso_local i32 @kadm5_log_set_version(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @kadm5_log_nop(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
