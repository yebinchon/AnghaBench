; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_file_fingerprints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_pfctl_file_fingerprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_osfp_ioctl = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@classes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PF_OPT_NOACTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"window size\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"don't fragment frag\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"overall packet size\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"TCP Options\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"OS class\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"OS version\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"OS subtype\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"OS description\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"%s:%d excess field\0A\00", align 1
@PF_OSFP_DF = common dso_local global i32 0, align 4
@PF_OSFP_WSIZE_DC = common dso_local global i32 0, align 4
@PF_OSFP_WSIZE_MSS = common dso_local global i32 0, align 4
@PF_OSFP_WSIZE_MTU = common dso_local global i32 0, align 4
@PF_OSFP_WSIZE_MOD = common dso_local global i32 0, align 4
@PF_OSFP_PSIZE_DC = common dso_local global i32 0, align 4
@PF_OSFP_PSIZE_MOD = common dso_local global i32 0, align 4
@PF_OSFP_WSCALE_DC = common dso_local global i32 0, align 4
@PF_OSFP_WSCALE_MOD = common dso_local global i32 0, align 4
@PF_OSFP_MSS_DC = common dso_local global i32 0, align 4
@PF_OSFP_MSS_MOD = common dso_local global i32 0, align 4
@PF_OSFP_TS0 = common dso_local global i32 0, align 4
@PF_OSFP_GENERIC = common dso_local global i32 0, align 4
@PF_OSFP_NODETAIL = common dso_local global i32 0, align 4
@PF_OSFP_INET6 = common dso_local global i32 0, align 4
@PF_OPT_VERBOSE2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"Loaded %d passive OS fingerprints\0A\00", align 1
@fingerprint_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_file_fingerprints(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.pf_osfp_ioctl, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %32 = call i32 @pfctl_flush_my_fingerprints(i32* @classes)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32* @pfctl_fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %34, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 1, i32* %4, align 4
  br label %413

39:                                               ; preds = %3
  store i8* null, i8** %30, align 8
  store i8* null, i8** %29, align 8
  store i8* null, i8** %28, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %26, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PF_OPT_NOACTION, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pfctl_clear_fingerprints(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %344, %201, %197, %190, %144, %48
  %50 = load i32*, i32** %8, align 8
  %51 = call i8* @fgetln(i32* %50, i64* %10)
  store i8* %51, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %372

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  %56 = load i8*, i8** %26, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %26, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i8*, i8** %27, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %27, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %28, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i8*, i8** %28, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i8*, i8** %29, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %29, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i8*, i8** %30, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %30, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  store i8* null, i8** %30, align 8
  store i8* null, i8** %29, align 8
  store i8* null, i8** %28, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %26, align 8
  %86 = call i32 @memset(%struct.pf_osfp_ioctl* %31, i32 0, i32 48)
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %104, %85
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %10, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 35
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %10, align 8
  br label %107

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %87

107:                                              ; preds = %100, %87
  br label %108

108:                                              ; preds = %121, %107
  %109 = load i64, i64* %10, align 8
  %110 = icmp ugt i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i64 @isspace(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %111, %108
  %120 = phi i1 [ false, %108 ], [ %118, %111 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %10, align 8
  br label %108

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %136, %124
  %126 = load i64, i64* %10, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @isspace(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i1 [ false, %125 ], [ %133, %128 ]
  br i1 %135, label %136, label %141

136:                                              ; preds = %134
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %10, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %9, align 8
  br label %125

141:                                              ; preds = %134
  %142 = load i64, i64* %10, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %49

145:                                              ; preds = %141
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 (i8**, i64*, i32*, i32*, i8*, i32, i32, i8*, i32, ...) bitcast (i32 (...)* @get_int to i32 (i8**, i64*, i32*, i32*, i8*, i32, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i32* %13, i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 15, i32 65535, i8* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %190, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (i8**, i64*, i32*, i8*, i8*, i32, i32, i8*, i32, ...) bitcast (i32 (...)* @get_int to i32 (i8**, i64*, i32*, i8*, i8*, i32, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i32* %15, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 255, i8* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %190, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 (i8**, i64*, i32*, i8*, i8*, i32, i32, i8*, i32, ...) bitcast (i32 (...)* @get_int to i32 (i8**, i64*, i32*, i8*, i8*, i32, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i32* %16, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 1, i8* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %190, label %160

160:                                              ; preds = %155
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 (i8**, i64*, i32*, i32*, i8*, i32, i32, i8*, i32, ...) bitcast (i32 (...)* @get_int to i32 (i8**, i64*, i32*, i32*, i8*, i32, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i32* %17, i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 9, i32 8192, i8* %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %190, label %165

165:                                              ; preds = %160
  %166 = load i8*, i8** %7, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @get_str to i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i8** %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 1, i8* %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @get_str to i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i8** %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 1, i8* %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %190, label %175

175:                                              ; preds = %170
  %176 = load i8*, i8** %7, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @get_str to i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i8** %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 0, i8* %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @get_str to i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i8** %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 0, i8* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load i8*, i8** %7, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @get_str to i32 (i8**, i64*, i8**, i8*, i32, i8*, i32, ...)*)(i8** %9, i64* %10, i8** %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 2, i8* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185, %180, %175, %170, %165, %160, %155, %150, %145
  br label %49

191:                                              ; preds = %185
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i8*, i8** %30, align 8
  %195 = call i64 @get_tcpopts(i8* %192, i32 %193, i8* %194, i32* %25, i32* %23, i32* %19, i32* %20, i32* %21, i32* %22, i32* %24)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %49

198:                                              ; preds = %191
  %199 = load i64, i64* %10, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* @stderr, align 4
  %203 = load i8*, i8** %7, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @fprintf(i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %203, i32 %204)
  br label %49

206:                                              ; preds = %198
  %207 = load i32, i32* %15, align 4
  %208 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 0
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load i32, i32* @PF_OSFP_DF, align 4
  %213 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %211, %206
  %217 = load i32, i32* %14, align 4
  switch i32 %217, label %239 [
    i32 0, label %218
    i32 1, label %219
    i32 2, label %224
    i32 4, label %229
    i32 8, label %234
  ]

218:                                              ; preds = %216
  br label %239

219:                                              ; preds = %216
  %220 = load i32, i32* @PF_OSFP_WSIZE_DC, align 4
  %221 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %220
  store i32 %223, i32* %221, align 4
  br label %239

224:                                              ; preds = %216
  %225 = load i32, i32* @PF_OSFP_WSIZE_MSS, align 4
  %226 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %225
  store i32 %228, i32* %226, align 4
  br label %239

229:                                              ; preds = %216
  %230 = load i32, i32* @PF_OSFP_WSIZE_MTU, align 4
  %231 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %230
  store i32 %233, i32* %231, align 4
  br label %239

234:                                              ; preds = %216
  %235 = load i32, i32* @PF_OSFP_WSIZE_MOD, align 4
  %236 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %235
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %216, %234, %229, %224, %219, %218
  %240 = load i32, i32* %13, align 4
  %241 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 2
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* %18, align 4
  switch i32 %242, label %253 [
    i32 1, label %243
    i32 8, label %248
  ]

243:                                              ; preds = %239
  %244 = load i32, i32* @PF_OSFP_PSIZE_DC, align 4
  %245 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %244
  store i32 %247, i32* %245, align 4
  br label %253

248:                                              ; preds = %239
  %249 = load i32, i32* @PF_OSFP_PSIZE_MOD, align 4
  %250 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %249
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %248, %239, %243
  %254 = load i32, i32* %17, align 4
  %255 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 3
  store i32 %254, i32* %255, align 4
  %256 = load i32, i32* %22, align 4
  switch i32 %256, label %267 [
    i32 1, label %257
    i32 8, label %262
  ]

257:                                              ; preds = %253
  %258 = load i32, i32* @PF_OSFP_WSCALE_DC, align 4
  %259 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %258
  store i32 %261, i32* %259, align 4
  br label %267

262:                                              ; preds = %253
  %263 = load i32, i32* @PF_OSFP_WSCALE_MOD, align 4
  %264 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %263
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %262, %253, %257
  %268 = load i32, i32* %21, align 4
  %269 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 4
  store i32 %268, i32* %269, align 4
  %270 = load i32, i32* %20, align 4
  switch i32 %270, label %281 [
    i32 1, label %271
    i32 8, label %276
  ]

271:                                              ; preds = %267
  %272 = load i32, i32* @PF_OSFP_MSS_DC, align 4
  %273 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 4
  br label %281

276:                                              ; preds = %267
  %277 = load i32, i32* @PF_OSFP_MSS_MOD, align 4
  %278 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %277
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %267, %276, %271
  %282 = load i32, i32* %19, align 4
  %283 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 5
  store i32 %282, i32* %283, align 4
  %284 = load i32, i32* %25, align 4
  %285 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 8
  store i32 %284, i32* %285, align 4
  %286 = load i32, i32* %23, align 4
  %287 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 6
  store i32 %286, i32* %287, align 4
  %288 = load i32, i32* %24, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %281
  %291 = load i32, i32* @PF_OSFP_TS0, align 4
  %292 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %291
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %290, %281
  %296 = load i8*, i8** %26, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 0
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 64
  br i1 %300, label %301, label %307

301:                                              ; preds = %295
  %302 = load i32, i32* @PF_OSFP_GENERIC, align 4
  %303 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 7
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %301, %295
  %308 = load i8*, i8** %26, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 0
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 42
  br i1 %312, label %313, label %319

313:                                              ; preds = %307
  %314 = load i32, i32* @PF_OSFP_NODETAIL, align 4
  %315 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 7
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %313, %307
  %320 = load i8*, i8** %26, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 0
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 64
  br i1 %324, label %331, label %325

325:                                              ; preds = %319
  %326 = load i8*, i8** %26, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 0
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 42
  br i1 %330, label %331, label %338

331:                                              ; preds = %325, %319
  %332 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i8*, i8** %26, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 1
  %337 = call i32 @strlcpy(i32 %334, i8* %336, i32 4)
  br label %344

338:                                              ; preds = %325
  %339 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 7
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load i8*, i8** %26, align 8
  %343 = call i32 @strlcpy(i32 %341, i8* %342, i32 4)
  br label %344

344:                                              ; preds = %338, %331
  %345 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 7
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load i8*, i8** %27, align 8
  %349 = call i32 @strlcpy(i32 %347, i8* %348, i32 4)
  %350 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 7
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i8*, i8** %28, align 8
  %354 = call i32 @strlcpy(i32 %352, i8* %353, i32 4)
  %355 = load i32, i32* %5, align 4
  %356 = load i32, i32* %6, align 4
  %357 = call i32 @add_fingerprint(i32 %355, i32 %356, %struct.pf_osfp_ioctl* %31)
  %358 = load i32, i32* @PF_OSFP_DF, align 4
  %359 = load i32, i32* @PF_OSFP_INET6, align 4
  %360 = or i32 %358, %359
  %361 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %360
  store i32 %363, i32* %361, align 4
  %364 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %31, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = add i64 %366, 0
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %364, align 4
  %369 = load i32, i32* %5, align 4
  %370 = load i32, i32* %6, align 4
  %371 = call i32 @add_fingerprint(i32 %369, i32 %370, %struct.pf_osfp_ioctl* %31)
  br label %49

372:                                              ; preds = %49
  %373 = load i8*, i8** %26, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %372
  %376 = load i8*, i8** %26, align 8
  %377 = call i32 @free(i8* %376)
  br label %378

378:                                              ; preds = %375, %372
  %379 = load i8*, i8** %27, align 8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load i8*, i8** %27, align 8
  %383 = call i32 @free(i8* %382)
  br label %384

384:                                              ; preds = %381, %378
  %385 = load i8*, i8** %28, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i8*, i8** %28, align 8
  %389 = call i32 @free(i8* %388)
  br label %390

390:                                              ; preds = %387, %384
  %391 = load i8*, i8** %29, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load i8*, i8** %29, align 8
  %395 = call i32 @free(i8* %394)
  br label %396

396:                                              ; preds = %393, %390
  %397 = load i8*, i8** %30, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i8*, i8** %30, align 8
  %401 = call i32 @free(i8* %400)
  br label %402

402:                                              ; preds = %399, %396
  %403 = load i32*, i32** %8, align 8
  %404 = call i32 @fclose(i32* %403)
  %405 = load i32, i32* %6, align 4
  %406 = load i32, i32* @PF_OPT_VERBOSE2, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %402
  %410 = load i32, i32* @fingerprint_count, align 4
  %411 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %410)
  br label %412

412:                                              ; preds = %409, %402
  store i32 0, i32* %4, align 4
  br label %413

413:                                              ; preds = %412, %36
  %414 = load i32, i32* %4, align 4
  ret i32 %414
}

declare dso_local i32 @pfctl_flush_my_fingerprints(i32*) #1

declare dso_local i32* @pfctl_fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @pfctl_clear_fingerprints(i32, i32) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(%struct.pf_osfp_ioctl*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @get_int(...) #1

declare dso_local i32 @get_str(...) #1

declare dso_local i64 @get_tcpopts(i8*, i32, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @add_fingerprint(i32, i32, %struct.pf_osfp_ioctl*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
