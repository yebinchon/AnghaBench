; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nptv6.c_nptv6_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nptv6.c_nptv6_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@nptv6newcmds = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"IPv6 prefix required\00", align 1
@NPTV6_HAS_INTPREFIX = common dso_local global i32 0, align 4
@NPTV6_HAS_EXTPREFIX = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Only one ext_prefix or ext_if allowed\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Interface name required\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid interface name\00", align 1
@NPTV6_DYNAMIC_PREFIX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"IPv6 prefix length required\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"wrong prefix length: %s\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Prefix length mismatch (%d vs %d).  It was extended up to %d\00", align 1
@NPTV6_HAS_PREFIXLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"int_prefix required\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ext_prefix or ext_if required\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"prefixlen required\00", align 1
@IP_FW_NPTV6_CREATE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"nptv6 instance creation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8**)* @nptv6_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nptv6_create(i8* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca [44 x i8], align 16
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i32 0, i32* %15, align 4
  %17 = getelementptr inbounds [44 x i8], [44 x i8]* %9, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 44)
  %19 = getelementptr inbounds [44 x i8], [44 x i8]* %9, i64 0, i64 0
  %20 = bitcast i8* %19 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %12, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 1
  %23 = bitcast %struct.TYPE_3__* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %11, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %180, %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %181

30:                                               ; preds = %27
  %31 = load i32, i32* @nptv6newcmds, align 4
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @get_token(i32 %31, i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %8, align 8
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %180 [
    i32 129, label %40
    i32 130, label %58
    i32 131, label %84
    i32 128, label %121
  ]

40:                                               ; preds = %30
  %41 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = call i32 @nptv6_parse_prefix(i8* %43, i32* %45, i32* %15)
  %47 = load i32, i32* @NPTV6_HAS_INTPREFIX, align 4
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %126

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = load i8**, i8*** %8, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %8, align 8
  br label %180

58:                                               ; preds = %30
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @NPTV6_HAS_EXTPREFIX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EX_USAGE, align 4
  %65 = call i32 (i32, i8*, ...) @errx(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8**, i8*** %8, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = call i32 @nptv6_parse_prefix(i8* %69, i32* %71, i32* %15)
  %73 = load i32, i32* @NPTV6_HAS_EXTPREFIX, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %126

79:                                               ; preds = %66
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = load i8**, i8*** %8, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %8, align 8
  br label %180

84:                                               ; preds = %30
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @NPTV6_HAS_EXTPREFIX, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EX_USAGE, align 4
  %91 = call i32 (i32, i8*, ...) @errx(i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = call i32 @NEED1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i8**, i8*** %8, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sext i32 %96 to i64
  %98 = icmp uge i64 %97, 4
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @EX_USAGE, align 4
  %101 = call i32 (i32, i8*, ...) @errx(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92
  %103 = load i32, i32* @NPTV6_HAS_EXTPREFIX, align 4
  %104 = load i32, i32* %14, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* @NPTV6_DYNAMIC_PREFIX, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load i8**, i8*** %8, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strncpy(i32 %113, i8* %115, i32 4)
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %7, align 4
  %119 = load i8**, i8*** %8, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %8, align 8
  br label %180

121:                                              ; preds = %30
  %122 = call i32 @NEED1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i8**, i8*** %8, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strtol(i8* %124, i8** %16, i32 10)
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %121, %78, %52
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %15, align 4
  %136 = icmp sgt i32 %135, 64
  br i1 %136, label %137, label %142

137:                                              ; preds = %134, %131, %126
  %138 = load i32, i32* @EX_USAGE, align 4
  %139 = load i8**, i8*** %8, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @errx(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %137, %134
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %147
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @MAX(i32 %158, i32 %161)
  %163 = call i32 @warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i32 %156, i32 %157, i32 %162)
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @MAX(i32 %164, i32 %167)
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %153, %147, %142
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @NPTV6_HAS_PREFIXLEN, align 4
  %174 = load i32, i32* %14, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %7, align 4
  %178 = load i8**, i8*** %8, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i32 1
  store i8** %179, i8*** %8, align 8
  br label %180

180:                                              ; preds = %30, %169, %102, %79, %53
  br label %27

181:                                              ; preds = %27
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @NPTV6_HAS_INTPREFIX, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* @NPTV6_HAS_INTPREFIX, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @EX_USAGE, align 4
  %189 = call i32 (i32, i8*, ...) @errx(i32 %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %181
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @NPTV6_HAS_EXTPREFIX, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @NPTV6_HAS_EXTPREFIX, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32, i32* @EX_USAGE, align 4
  %198 = call i32 (i32, i8*, ...) @errx(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %190
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @NPTV6_HAS_PREFIXLEN, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @NPTV6_HAS_PREFIXLEN, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load i32, i32* @EX_USAGE, align 4
  %207 = call i32 (i32, i8*, ...) @errx(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %199
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @n2mask(%struct.in6_addr* %10, i32 %211)
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  %215 = call i32 @APPLY_MASK(i32* %214, %struct.in6_addr* %10)
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @NPTV6_DYNAMIC_PREFIX, align 4
  %220 = and i32 %218, %219
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %208
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = call i32 @APPLY_MASK(i32* %224, %struct.in6_addr* %10)
  br label %226

226:                                              ; preds = %222, %208
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  store i32 1, i32* %228, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  store i32 28, i32* %230, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  store i32 44, i32* %232, align 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @strlcpy(i32 %235, i8* %236, i32 4)
  %238 = load i32, i32* @IP_FW_NPTV6_CREATE, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 3
  %241 = call i64 @do_set3(i32 %238, i32* %240, i32 44)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %226
  %244 = load i32, i32* @EX_OSERR, align 4
  %245 = call i32 @err(i32 %244, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %226
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i32 @nptv6_parse_prefix(i8*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @n2mask(%struct.in6_addr*, i32) #1

declare dso_local i32 @APPLY_MASK(i32*, %struct.in6_addr*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @do_set3(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
