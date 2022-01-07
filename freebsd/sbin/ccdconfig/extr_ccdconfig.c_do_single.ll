; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_do_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_do_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@CCD_UNCONFIG = common dso_local global i32 0, align 4
@CCD_UNCONFIGALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid ccd name: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"destroy geom\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CCD\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ccd%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"%s unconfigured\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"%s\0Aor possibly kernel and ccdconfig out of sync\00", align 1
@CCD_CONFIGALL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"%s: bad line: %d\00", align 1
@ccdconf = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"invalid interleave factor: %s\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"invalid flags argument: %s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"create geom\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ileave\00", align 1
@CCDF_UNIFORM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CCDF_MIRROR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@CCDF_NO_OFFSET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"no_offset\00", align 1
@CCDF_LINUX = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"nprovider\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"provider%d\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @do_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_single(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gctl_req*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @BUFSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CCD_UNCONFIG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CCD_UNCONFIGALL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %28, %3
  store i32 0, i32* %19, align 4
  br label %33

33:                                               ; preds = %71, %68, %45, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %6, align 8
  %39 = load i8*, i8** %37, align 8
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @resolve_ccdname(i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %33

48:                                               ; preds = %36
  %49 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %49, %struct.gctl_req** %15, align 8
  %50 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %51 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %53 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %57 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 -1, i8* %24)
  %58 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %59 = call i8* @gctl_issue(%struct.gctl_req* %58)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %48
  %63 = load i64, i64* @verbose, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %70 = call i32 @gctl_free(%struct.gctl_req* %69)
  br label %33

71:                                               ; preds = %48
  %72 = load i8*, i8** %16, align 8
  %73 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  store i32 1, i32* %19, align 4
  br label %33

74:                                               ; preds = %33
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

76:                                               ; preds = %28
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %11, align 4
  br label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CCD_CONFIGALL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @ccdconf, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i32, i32* @lineno, align 4
  %92 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %90, i32 %91)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

93:                                               ; preds = %83
  %94 = call i32 (...) @usage()
  br label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %76
  %98 = load i8**, i8*** %6, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %6, align 8
  %100 = load i8*, i8** %98, align 8
  store i8* %100, i8** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %5, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @resolve_ccdname(i8* %103)
  store i32 %104, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %107)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

109:                                              ; preds = %97
  %110 = load i8**, i8*** %6, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %6, align 8
  %112 = load i8*, i8** %110, align 8
  store i8* %112, i8** %8, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %5, align 4
  store i64 0, i64* @errno, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @strtol(i8* %115, i8** %9, i32 10)
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @ERANGE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %9, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124, %121, %109
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %130)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

132:                                              ; preds = %124
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i8**, i8*** %6, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %6, align 8
  %138 = load i8*, i8** %136, align 8
  store i8* %138, i8** %8, align 8
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %5, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @flags_to_val(i8* %141)
  store i32 %142, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %145)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %132
  %149 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %149, %struct.gctl_req** %15, align 8
  %150 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %151 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %152 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %153 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %154 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %155 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4, i32* %10)
  %156 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %157 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 4, i32* %13)
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @CCDF_UNIFORM, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %148
  %163 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %164 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %148
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @CCDF_MIRROR, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %172 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @CCDF_NO_OFFSET, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %180 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %173
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @CCDF_LINUX, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %188 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %181
  %190 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %191 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 4, i32* %5)
  store i32 0, i32* %12, align 4
  br label %192

192:                                              ; preds = %220, %189
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %192
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %197)
  %199 = load i8**, i8*** %6, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %8, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = load i32, i32* @_PATH_DEV, align 4
  %206 = load i32, i32* @_PATH_DEV, align 4
  %207 = call i32 @strlen(i32 %206)
  %208 = call i32 @strncmp(i8* %204, i32 %205, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %196
  %211 = load i32, i32* @_PATH_DEV, align 4
  %212 = call i32 @strlen(i32 %211)
  %213 = load i8*, i8** %8, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %8, align 8
  br label %216

216:                                              ; preds = %210, %196
  %217 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %217, i8* %24, i32 -1, i8* %218)
  br label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %192

223:                                              ; preds = %192
  %224 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %225 = trunc i64 %22 to i32
  %226 = call i32 @gctl_rw_param(%struct.gctl_req* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %225, i8* %24)
  %227 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %228 = call i8* @gctl_issue(%struct.gctl_req* %227)
  store i8* %228, i8** %16, align 8
  %229 = load i8*, i8** %16, align 8
  %230 = icmp eq i8* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %223
  %232 = load i64, i64* @verbose, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %24)
  br label %236

236:                                              ; preds = %234, %231
  %237 = load %struct.gctl_req*, %struct.gctl_req** %15, align 8
  %238 = call i32 @gctl_free(%struct.gctl_req* %237)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

239:                                              ; preds = %223
  %240 = load i8*, i8** %16, align 8
  %241 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %240)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %242

242:                                              ; preds = %239, %236, %144, %129, %106, %87, %74
  %243 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %243)
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @resolve_ccdname(i8*) #2

declare dso_local i32 @warnx(i8*, i8*, ...) #2

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @gctl_free(%struct.gctl_req*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @flags_to_val(i8*) #2

declare dso_local i32 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @gctl_rw_param(%struct.gctl_req*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
