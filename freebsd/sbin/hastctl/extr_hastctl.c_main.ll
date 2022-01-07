; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastctl/extr_hastctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nv = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"c:de:k:m:h\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"c:dh\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@optarg = common dso_local global i32 0, align 4
@cfgpath = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Invalid extentsize\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Invalid keepdirty\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Invalid mediasize\00", align 1
@optind = common dso_local global i64 0, align 8
@PJDLOG_MODE_STD = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_3__* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"What are we doing here?!\00", align 1
@HASTCTL_CMD_SETROLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@HAST_ROLE_INIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@HAST_ROLE_PRIMARY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@HAST_ROLE_SECONDARY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"resource%d\00", align 1
@HASTCTL_CMD_STATUS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Impossible command!\00", align 1
@controlconn = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [41 x i8] c"Unable to setup control connection to %s\00", align 1
@HAST_TIMEOUT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [34 x i8] c"Unable to connect to hastd via %s\00", align 1
@EX_CONFIG = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [39 x i8] c"Unable to send command to hastd via %s\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"cannot receive reply from hastd via %s\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [30 x i8] c"Error %d received from hastd.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 132, i32* %10, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %61

27:                                               ; preds = %20
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 129, i32* %10, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %60

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 130, i32* %10, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %59

41:                                               ; preds = %34
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 128, i32* %10, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %58

48:                                               ; preds = %41
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 131, i32* %10, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %33
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %5, align 8
  br label %66

66:                                               ; preds = %108, %61
  %67 = load i32, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @getopt(i32 %67, i8** %68, i8* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %109

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  switch i32 %75, label %106 [
    i32 99, label %76
    i32 100, label %78
    i32 101, label %81
    i32 107, label %89
    i32 109, label %97
    i32 104, label %105
  ]

76:                                               ; preds = %74
  %77 = load i32, i32* @optarg, align 4
  store i32 %77, i32* @cfgpath, align 4
  br label %108

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %108

81:                                               ; preds = %74
  %82 = load i32, i32* @optarg, align 4
  %83 = call i32 @expand_number(i32 %82, i64* %8)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EX_USAGE, align 4
  %87 = call i32 @errx(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %81
  br label %108

89:                                               ; preds = %74
  %90 = load i32, i32* @optarg, align 4
  %91 = call i32 @expand_number(i32 %90, i64* %9)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EX_USAGE, align 4
  %95 = call i32 @errx(i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %89
  br label %108

97:                                               ; preds = %74
  %98 = load i32, i32* @optarg, align 4
  %99 = call i32 @expand_number(i32 %98, i64* %7)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @EX_USAGE, align 4
  %103 = call i32 @errx(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %97
  br label %108

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %74, %105
  %107 = call i32 (...) @usage()
  br label %108

108:                                              ; preds = %106, %104, %96, %88, %78, %76
  br label %66

109:                                              ; preds = %73
  %110 = load i64, i64* @optind, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load i64, i64* @optind, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 %115
  store i8** %117, i8*** %5, align 8
  %118 = load i32, i32* %10, align 4
  switch i32 %118, label %125 [
    i32 132, label %119
    i32 129, label %119
  ]

119:                                              ; preds = %109, %109
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 (...) @usage()
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %109, %124
  %126 = load i32, i32* @PJDLOG_MODE_STD, align 4
  %127 = call i32 @pjdlog_init(i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @pjdlog_debug_set(i32 %128)
  %130 = load i32, i32* @cfgpath, align 4
  %131 = call %struct.TYPE_3__* @yy_config_parse(i32 %130, i32 1)
  store %struct.TYPE_3__* %131, %struct.TYPE_3__** @cfg, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg, align 8
  %133 = icmp ne %struct.TYPE_3__* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @PJDLOG_ASSERT(i32 %134)
  %136 = load i32, i32* %10, align 4
  switch i32 %136, label %242 [
    i32 132, label %137
    i32 131, label %145
    i32 129, label %150
    i32 130, label %213
    i32 128, label %213
  ]

137:                                              ; preds = %125
  %138 = load i32, i32* %4, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @control_create(i32 %138, i8** %139, i64 %140, i64 %141, i64 %142)
  %144 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %244

145:                                              ; preds = %125
  %146 = load i32, i32* %4, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = call i32 @control_dump(i32 %146, i8** %147)
  %149 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %244

150:                                              ; preds = %125
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (...) @usage()
  br label %155

155:                                              ; preds = %153, %150
  %156 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %156, %struct.nv** %6, align 8
  %157 = load %struct.nv*, %struct.nv** %6, align 8
  %158 = load i32, i32* @HASTCTL_CMD_SETROLE, align 4
  %159 = call i32 @nv_add_uint8(%struct.nv* %157, i32 %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %155
  %166 = load %struct.nv*, %struct.nv** %6, align 8
  %167 = load i32, i32* @HAST_ROLE_INIT, align 4
  %168 = call i32 @nv_add_uint8(%struct.nv* %166, i32 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %193

169:                                              ; preds = %155
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.nv*, %struct.nv** %6, align 8
  %177 = load i32, i32* @HAST_ROLE_PRIMARY, align 4
  %178 = call i32 @nv_add_uint8(%struct.nv* %176, i32 %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %192

179:                                              ; preds = %169
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load %struct.nv*, %struct.nv** %6, align 8
  %187 = load i32, i32* @HAST_ROLE_SECONDARY, align 4
  %188 = call i32 @nv_add_uint8(%struct.nv* %186, i32 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %191

189:                                              ; preds = %179
  %190 = call i32 (...) @usage()
  br label %191

191:                                              ; preds = %189, %185
  br label %192

192:                                              ; preds = %191, %175
  br label %193

193:                                              ; preds = %192, %165
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %209, %193
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %4, align 4
  %197 = sub nsw i32 %196, 1
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %194
  %200 = load %struct.nv*, %struct.nv** %6, align 8
  %201 = load i8**, i8*** %5, align 8
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %201, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @nv_add_string(%struct.nv* %200, i8* %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %199
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %194

212:                                              ; preds = %194
  br label %244

213:                                              ; preds = %125, %125
  %214 = call %struct.nv* (...) @nv_alloc()
  store %struct.nv* %214, %struct.nv** %6, align 8
  %215 = load %struct.nv*, %struct.nv** %6, align 8
  %216 = load i32, i32* @HASTCTL_CMD_STATUS, align 4
  %217 = call i32 @nv_add_uint8(%struct.nv* %215, i32 %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load %struct.nv*, %struct.nv** %6, align 8
  %222 = call i32 @nv_add_string(%struct.nv* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 0)
  br label %241

223:                                              ; preds = %213
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %237, %223
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %4, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %224
  %229 = load %struct.nv*, %struct.nv** %6, align 8
  %230 = load i8**, i8*** %5, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @nv_add_string(%struct.nv* %229, i8* %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %228
  %238 = load i32, i32* %13, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %13, align 4
  br label %224

240:                                              ; preds = %224
  br label %241

241:                                              ; preds = %240, %220
  br label %244

242:                                              ; preds = %125
  %243 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %241, %212, %145, %137
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @proto_client(i32* null, i32 %247, i32* @controlconn)
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load i32, i32* @EX_OSERR, align 4
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @pjdlog_exit(i32 %251, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 %254)
  br label %256

256:                                              ; preds = %250, %244
  %257 = load i32, i32* @controlconn, align 4
  %258 = load i32, i32* @HAST_TIMEOUT, align 4
  %259 = call i32 @proto_connect(i32 %257, i32 %258)
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = load i32, i32* @EX_OSERR, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @pjdlog_exit(i32 %262, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %261, %256
  %268 = call i64 @drop_privs(i32* null)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* @EX_CONFIG, align 4
  %272 = call i32 @exit(i32 %271) #3
  unreachable

273:                                              ; preds = %267
  %274 = load i32, i32* @controlconn, align 4
  %275 = load %struct.nv*, %struct.nv** %6, align 8
  %276 = call i32 @hast_proto_send(i32* null, i32 %274, %struct.nv* %275, i32* null, i32 0)
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %284

278:                                              ; preds = %273
  %279 = load i32, i32* @EX_UNAVAILABLE, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @pjdlog_exit(i32 %279, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %278, %273
  %285 = load %struct.nv*, %struct.nv** %6, align 8
  %286 = call i32 @nv_free(%struct.nv* %285)
  %287 = load i32, i32* @controlconn, align 4
  %288 = call i32 @hast_proto_recv_hdr(i32 %287, %struct.nv** %6)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %296

290:                                              ; preds = %284
  %291 = load i32, i32* @EX_UNAVAILABLE, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cfg, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @pjdlog_exit(i32 %291, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %290, %284
  %297 = load %struct.nv*, %struct.nv** %6, align 8
  %298 = call i32 @nv_get_int16(%struct.nv* %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %12, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i32, i32* @EX_SOFTWARE, align 4
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @pjdlog_exitx(i32 %302, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 %303)
  br label %305

305:                                              ; preds = %301, %296
  %306 = load %struct.nv*, %struct.nv** %6, align 8
  %307 = call i32 @nv_set_error(%struct.nv* %306, i32 0)
  %308 = load i32, i32* %10, align 4
  switch i32 %308, label %321 [
    i32 129, label %309
    i32 130, label %315
    i32 128, label %318
  ]

309:                                              ; preds = %305
  %310 = load %struct.nv*, %struct.nv** %6, align 8
  %311 = load i8**, i8*** %5, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i64 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @control_set_role(%struct.nv* %310, i8* %313)
  store i32 %314, i32* %12, align 4
  br label %323

315:                                              ; preds = %305
  %316 = load %struct.nv*, %struct.nv** %6, align 8
  %317 = call i32 @control_list(%struct.nv* %316)
  store i32 %317, i32* %12, align 4
  br label %323

318:                                              ; preds = %305
  %319 = load %struct.nv*, %struct.nv** %6, align 8
  %320 = call i32 @control_status(%struct.nv* %319)
  store i32 %320, i32* %12, align 4
  br label %323

321:                                              ; preds = %305
  %322 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %323

323:                                              ; preds = %321, %318, %315, %309
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @exit(i32 %324) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @expand_number(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @pjdlog_init(i32) #1

declare dso_local i32 @pjdlog_debug_set(i32) #1

declare dso_local %struct.TYPE_3__* @yy_config_parse(i32, i32) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @control_create(i32, i8**, i64, i64, i64) #1

declare dso_local i32 @PJDLOG_ABORT(i8*) #1

declare dso_local i32 @control_dump(i32, i8**) #1

declare dso_local %struct.nv* @nv_alloc(...) #1

declare dso_local i32 @nv_add_uint8(%struct.nv*, i32, i8*) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i8*, i8*, i32) #1

declare dso_local i32 @proto_client(i32*, i32, i32*) #1

declare dso_local i32 @pjdlog_exit(i32, i8*, i32) #1

declare dso_local i32 @proto_connect(i32, i32) #1

declare dso_local i64 @drop_privs(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @hast_proto_send(i32*, i32, %struct.nv*, i32*, i32) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i32 @hast_proto_recv_hdr(i32, %struct.nv**) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i32) #1

declare dso_local i32 @nv_set_error(%struct.nv*, i32) #1

declare dso_local i32 @control_set_role(%struct.nv*, i8*) #1

declare dso_local i32 @control_list(%struct.nv*) #1

declare dso_local i32 @control_status(%struct.nv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
