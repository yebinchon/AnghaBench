; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@keysdir = common dso_local global i64 0, align 8
@default_keysdir = common dso_local global i64 0, align 8
@ntp_signd_socket = common dso_local global i64 0, align 8
@default_ntp_signd_socket = common dso_local global i64 0, align 8
@T_Integer = common dso_local global i64 0, align 8
@NTP_MAXKEY = common dso_local global i32 0, align 4
@T_Intrange = common dso_local global i64 0, align 8
@ctl_auth_keyid = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"set info_auth_keyid to %08lx\0A\00", align 1
@info_auth_keyid = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Ignoring invalid trustedkey %d, min 1 max %d.\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Ignoring invalid trustedkey range %d ... %d, min 1 max %d.\00", align 1
@CRYPTO_CONF_IDENT = common dso_local global i32 0, align 4
@CRYPTO_CONF_NID = common dso_local global i32 0, align 4
@CRYPTO_CONF_PRIV = common dso_local global i32 0, align 4
@CRYPTO_CONF_PW = common dso_local global i32 0, align 4
@CRYPTO_CONF_RAND = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@cryptosw = common dso_local global i32 0, align 4
@sys_revoke = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @config_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_auth(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i64, i64* @keysdir, align 8
  %15 = load i64, i64* @default_keysdir, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* @keysdir, align 8
  %19 = call i32 @free(i64 %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @estrdup(i64 %24)
  store i64 %25, i64* @keysdir, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i64, i64* @ntp_signd_socket, align 8
  %34 = load i64, i64* @default_ntp_signd_socket, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* @ntp_signd_socket, align 8
  %38 = call i32 @free(i64 %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @estrdup(i64 %43)
  store i64 %44, i64* @ntp_signd_socket, align 8
  br label %45

45:                                               ; preds = %39, %26
  store i32 0, i32* %7, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_12__* @HEAD_PFIFO(i32 %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %3, align 8
  br label %51

51:                                               ; preds = %112, %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %116

54:                                               ; preds = %51
  %55 = load i64, i64* @T_Integer, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @NTP_MAXKEY, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %67, %60
  br label %111

75:                                               ; preds = %54
  %76 = load i64, i64* @T_Intrange, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @REQUIRE(i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %4, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %75
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %110, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @NTP_MAXKEY, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 1, %104
  %106 = load i32, i32* %4, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %99, %96, %75
  br label %111

111:                                              ; preds = %110, %74
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %3, align 8
  br label %51

116:                                              ; preds = %51
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @auth_prealloc_symkeys(i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @getauthkeys(i64 %128)
  br label %130

130:                                              ; preds = %124, %116
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  store i8* %141, i8** @ctl_auth_keyid, align 8
  br label %142

142:                                              ; preds = %136, %130
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %142
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @DPRINTF(i32 4, i8* %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i8*
  store i8* %161, i8** @info_auth_keyid, align 8
  br label %162

162:                                              ; preds = %148, %142
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.TYPE_12__* @HEAD_PFIFO(i32 %166)
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %3, align 8
  br label %168

168:                                              ; preds = %241, %162
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = icmp ne %struct.TYPE_12__* %169, null
  br i1 %170, label %171, label %245

171:                                              ; preds = %168
  %172 = load i64, i64* @T_Integer, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %172, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %171
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp sge i32 %182, 1
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @NTP_MAXKEY, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @authtrust(i32 %189, i32 %190)
  br label %197

192:                                              ; preds = %184, %177
  %193 = load i32, i32* @LOG_NOTICE, align 4
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @NTP_MAXKEY, align 4
  %196 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %193, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %192, %188
  br label %240

198:                                              ; preds = %171
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %4, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %5, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %219, label %212

212:                                              ; preds = %198
  %213 = load i32, i32* %4, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @NTP_MAXKEY, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %215, %212, %198
  %220 = load i32, i32* @LOG_NOTICE, align 4
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @NTP_MAXKEY, align 4
  %224 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %220, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %221, i32 %222, i32 %223)
  br label %239

225:                                              ; preds = %215
  %226 = load i32, i32* %4, align 4
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %235, %225
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp sle i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i32 @authtrust(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %227

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %219
  br label %240

240:                                              ; preds = %239, %197
  br label %241

241:                                              ; preds = %240
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  store %struct.TYPE_12__* %244, %struct.TYPE_12__** %3, align 8
  br label %168

245:                                              ; preds = %168
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @estrdup(i64) #1

declare dso_local %struct.TYPE_12__* @HEAD_PFIFO(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @auth_prealloc_symkeys(i32) #1

declare dso_local i32 @getauthkeys(i64) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @authtrust(i32, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
