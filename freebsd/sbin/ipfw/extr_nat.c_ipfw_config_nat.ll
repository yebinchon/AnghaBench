; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_ipfw_config_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_ipfw_config_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nat44_cfg_nat = type { i32, i32, i32, i32 }

@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"missing nat id\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"illegal nat id: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"missing option\00", align 1
@nat_params = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"redirect_addr: not enough arguments\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"redirect_port: not enough arguments\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"redirect_proto: not enough arguments\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unrecognised option ``%s''\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"bad ip address ``%s''\00", align 1
@PKT_ALIAS_LOG = common dso_local global i32 0, align 4
@PKT_ALIAS_DENY_INCOMING = common dso_local global i32 0, align 4
@PKT_ALIAS_SAME_PORTS = common dso_local global i32 0, align 4
@PKT_ALIAS_UNREGISTERED_ONLY = common dso_local global i32 0, align 4
@PKT_ALIAS_SKIP_GLOBAL = common dso_local global i32 0, align 4
@PKT_ALIAS_RESET_ON_ADDR_CHANGE = common dso_local global i32 0, align 4
@PKT_ALIAS_REVERSE = common dso_local global i32 0, align 4
@PKT_ALIAS_PROXY_ONLY = common dso_local global i32 0, align 4
@IP_FW_NAT44_XCONFIG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"setsockopt(%s)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"IP_FW_NAT44_XCONFIG\00", align 1
@co = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_config_nat(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.nat44_cfg_nat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EX_DATAERR, align 4
  %26 = call i32 (i32, i8*, ...) @errx(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @strtol(i8* %30, i8** %14, i32 0)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %14, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %27
  %41 = load i32, i32* @EX_DATAERR, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 (i32, i8*, ...) @errx(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EX_DATAERR, align 4
  %53 = call i32 (i32, i8*, ...) @errx(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %44
  store i64 28, i64* %15, align 8
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i8**, i8*** %4, align 8
  store i8** %56, i8*** %13, align 8
  br label %57

57:                                               ; preds = %169, %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %170

60:                                               ; preds = %57
  %61 = load i32, i32* @nat_params, align 4
  %62 = load i8**, i8*** %13, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @match_token(i32 %61, i8* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %10, align 4
  %67 = load i8**, i8*** %13, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %13, align 8
  %69 = load i32, i32* %9, align 4
  switch i32 %69, label %163 [
    i32 136, label %70
    i32 137, label %70
    i32 139, label %75
    i32 138, label %75
    i32 130, label %75
    i32 129, label %75
    i32 128, label %75
    i32 131, label %75
    i32 140, label %75
    i32 135, label %75
    i32 134, label %76
    i32 133, label %90
    i32 132, label %122
  ]

70:                                               ; preds = %60, %60
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  %73 = load i8**, i8*** %13, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %13, align 8
  br label %169

75:                                               ; preds = %60, %60, %60, %60, %60, %60, %60, %60
  br label %169

76:                                               ; preds = %60
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EX_DATAERR, align 4
  %81 = call i32 (i32, i8*, ...) @errx(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = call i64 @estimate_redir_addr(i32* %10, i8*** %13)
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %15, align 8
  %86 = load i8**, i8*** %13, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  store i8** %87, i8*** %13, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %88, 2
  store i32 %89, i32* %10, align 4
  br label %169

90:                                               ; preds = %60
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EX_DATAERR, align 4
  %95 = call i32 (i32, i8*, ...) @errx(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i8**, i8*** %13, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %13, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %10, align 4
  %101 = call i64 @estimate_redir_port(i32* %10, i8*** %13)
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %15, align 8
  %104 = load i8**, i8*** %13, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  store i8** %105, i8*** %13, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, 2
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %96
  %111 = load i8**, i8*** %13, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @isdigit(i8 signext %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i8**, i8*** %13, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %13, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %116, %110, %96
  br label %169

122:                                              ; preds = %60
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @EX_DATAERR, align 4
  %127 = call i32 (i32, i8*, ...) @errx(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %15, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %15, align 8
  %131 = load i8**, i8*** %13, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 2
  store i8** %132, i8*** %13, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, 2
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %128
  %138 = load i8**, i8*** %13, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @isdigit(i8 signext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i8**, i8*** %13, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i32 1
  store i8** %145, i8*** %13, align 8
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %143, %137, %128
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i8**, i8*** %13, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @isdigit(i8 signext %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i8**, i8*** %13, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %13, align 8
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %157, %151, %148
  br label %169

163:                                              ; preds = %60
  %164 = load i32, i32* @EX_DATAERR, align 4
  %165 = load i8**, i8*** %13, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 -1
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i8*, ...) @errx(i32 %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %163, %162, %121, %82, %75, %70
  br label %57

170:                                              ; preds = %57
  %171 = load i64, i64* %15, align 8
  %172 = call i8* @malloc(i64 %171)
  store i8* %172, i8** %12, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* @EX_OSERR, align 4
  %176 = call i32 (i32, i8*, ...) @errx(i32 %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %170
  store i32 28, i32* %8, align 4
  %178 = load i8*, i8** %12, align 8
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @memset(i8* %178, i32 0, i64 %179)
  %181 = load i8*, i8** %12, align 8
  %182 = bitcast i8* %181 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %182, %struct.TYPE_7__** %5, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 1
  %185 = bitcast %struct.TYPE_7__* %184 to %struct.nat44_cfg_nat*
  store %struct.nat44_cfg_nat* %185, %struct.nat44_cfg_nat** %6, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 8, i32* %189, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @snprintf(i32 %193, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  %196 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %197 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @snprintf(i32 %198, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %331, %177
  %202 = load i32, i32* %3, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %332

204:                                              ; preds = %201
  %205 = load i32, i32* @nat_params, align 4
  %206 = load i8**, i8*** %4, align 8
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @match_token(i32 %205, i8* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %3, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %3, align 4
  %211 = load i8**, i8*** %4, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i32 1
  store i8** %212, i8*** %4, align 8
  %213 = load i32, i32* %9, align 4
  switch i32 %213, label %331 [
    i32 136, label %214
    i32 137, label %239
    i32 139, label %255
    i32 138, label %261
    i32 130, label %267
    i32 128, label %273
    i32 129, label %279
    i32 131, label %285
    i32 140, label %291
    i32 135, label %297
    i32 134, label %303
    i32 133, label %303
    i32 132, label %303
  ]

214:                                              ; preds = %204
  %215 = load i32, i32* %3, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* @EX_DATAERR, align 4
  %219 = call i32 (i32, i8*, ...) @errx(i32 %218, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i8**, i8*** %4, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 0
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %225 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %224, i32 0, i32 2
  %226 = call i32 @inet_aton(i8* %223, i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %220
  %229 = load i32, i32* @EX_DATAERR, align 4
  %230 = load i8**, i8*** %4, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 (i32, i8*, ...) @errx(i32 %229, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %228, %220
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %3, align 4
  %237 = load i8**, i8*** %4, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i32 1
  store i8** %238, i8*** %4, align 8
  br label %331

239:                                              ; preds = %204
  %240 = load i32, i32* %3, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* @EX_DATAERR, align 4
  %244 = call i32 (i32, i8*, ...) @errx(i32 %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i8**, i8*** %4, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 0
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %250 = call i32 @set_addr_dynamic(i8* %248, %struct.nat44_cfg_nat* %249)
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %3, align 4
  %253 = load i8**, i8*** %4, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i32 1
  store i8** %254, i8*** %4, align 8
  br label %331

255:                                              ; preds = %204
  %256 = load i32, i32* @PKT_ALIAS_LOG, align 4
  %257 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %258 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %331

261:                                              ; preds = %204
  %262 = load i32, i32* @PKT_ALIAS_DENY_INCOMING, align 4
  %263 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %264 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  br label %331

267:                                              ; preds = %204
  %268 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %269 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %270 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %331

273:                                              ; preds = %204
  %274 = load i32, i32* @PKT_ALIAS_UNREGISTERED_ONLY, align 4
  %275 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %276 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  br label %331

279:                                              ; preds = %204
  %280 = load i32, i32* @PKT_ALIAS_SKIP_GLOBAL, align 4
  %281 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %282 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  br label %331

285:                                              ; preds = %204
  %286 = load i32, i32* @PKT_ALIAS_RESET_ON_ADDR_CHANGE, align 4
  %287 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %288 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %331

291:                                              ; preds = %204
  %292 = load i32, i32* @PKT_ALIAS_REVERSE, align 4
  %293 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %294 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  br label %331

297:                                              ; preds = %204
  %298 = load i32, i32* @PKT_ALIAS_PROXY_ONLY, align 4
  %299 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %300 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 4
  br label %331

303:                                              ; preds = %204, %204, %204
  %304 = load i32, i32* %9, align 4
  switch i32 %304, label %323 [
    i32 134, label %305
    i32 133, label %311
    i32 132, label %317
  ]

305:                                              ; preds = %303
  %306 = load i8*, i8** %12, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = call i32 @setup_redir_addr(i8* %309, i32* %3, i8*** %4)
  store i32 %310, i32* %7, align 4
  br label %323

311:                                              ; preds = %303
  %312 = load i8*, i8** %12, align 8
  %313 = load i32, i32* %8, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %312, i64 %314
  %316 = call i32 @setup_redir_port(i8* %315, i32* %3, i8*** %4)
  store i32 %316, i32* %7, align 4
  br label %323

317:                                              ; preds = %303
  %318 = load i8*, i8** %12, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  %322 = call i32 @setup_redir_proto(i8* %321, i32* %3, i8*** %4)
  store i32 %322, i32* %7, align 4
  br label %323

323:                                              ; preds = %303, %317, %311, %305
  %324 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %6, align 8
  %325 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %8, align 4
  br label %331

331:                                              ; preds = %204, %323, %297, %291, %285, %279, %273, %267, %261, %255, %245, %234
  br label %201

332:                                              ; preds = %201
  %333 = load i32, i32* @IP_FW_NAT44_XCONFIG, align 4
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 0
  %336 = load i64, i64* %15, align 8
  %337 = call i32 @do_set3(i32 %333, i32* %335, i64 %336)
  store i32 %337, i32* %7, align 4
  %338 = load i32, i32* %7, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %332
  %341 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %332
  %343 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @co, i32 0, i32 0), align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %355, label %345

345:                                              ; preds = %342
  store i32 3, i32* %16, align 4
  %346 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %346, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %347, align 8
  %348 = getelementptr inbounds i8*, i8** %347, i64 1
  %349 = load i8*, i8** %11, align 8
  store i8* %349, i8** %348, align 8
  %350 = load i32, i32* %16, align 4
  %351 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  %352 = bitcast i8** %351 to i8*
  %353 = bitcast i8* %352 to i8**
  %354 = call i32 @ipfw_show_nat(i32 %350, i8** %353)
  br label %355

355:                                              ; preds = %345, %342
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @match_token(i32, i8*) #1

declare dso_local i64 @estimate_redir_addr(i32*, i8***) #1

declare dso_local i64 @estimate_redir_port(i32*, i8***) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @inet_aton(i8*, i32*) #1

declare dso_local i32 @set_addr_dynamic(i8*, %struct.nat44_cfg_nat*) #1

declare dso_local i32 @setup_redir_addr(i8*, i32*, i8***) #1

declare dso_local i32 @setup_redir_port(i8*, i32*, i8***) #1

declare dso_local i32 @setup_redir_proto(i8*, i32*, i8***) #1

declare dso_local i32 @do_set3(i32, i32*, i64) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @ipfw_show_nat(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
