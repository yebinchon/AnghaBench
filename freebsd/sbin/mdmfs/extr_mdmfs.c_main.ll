; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdmfs/extr_mdmfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpt_info = type { i32, i32, i32 }

@MD_SWAP = common dso_local global i32 0, align 4
@MD_NAME = common dso_local global i8* null, align 8
@mdname = common dso_local global i8* null, align 8
@mdnamelen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mount_mfs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mfs\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"a:b:Cc:Dd:E:e:F:f:hi:k:LlMm:NnO:o:Pp:Ss:tT:Uv:w:X\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-a %s\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"-b %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-c %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-d %s\00", align 1
@path_mdconfig = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"-e %s\00", align 1
@MD_VNODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"-f %s\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-i %s\00", align 1
@loudsubs = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@MD_MALLOC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"-o reserve\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-m %s\00", align 1
@norun = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"-o %s\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"-t %s\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"-O %s\00", align 1
@debug = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [18 x i8] c"invalid size '%s'\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"invalid size suffix on '%s'\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"-o size=%jd\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"-s %jdB\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@unit = common dso_local global i32 0, align 4
@mdsuffix = common dso_local global i8* null, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [20 x i8] c"bad device unit: %s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"-P requires a vnode-backed disk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mtpt_info, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %27 = call i32 @memset(%struct.mtpt_info* %6, i8 signext 0, i32 12)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %20, align 8
  %28 = load i32, i32* @MD_SWAP, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** @MD_NAME, align 8
  store i8* %29, i8** @mdname, align 8
  %30 = load i8*, i8** @mdname, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* @mdnamelen, align 4
  store i64 0, i64* %7, align 8
  %32 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %8, align 8
  %33 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %9, align 8
  %34 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %10, align 8
  store i8* null, i8** %19, align 8
  %35 = call i8* (...) @getprogname()
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = call i8* (...) @getprogname()
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %2
  %43 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 0
  store i32 1023, i32* %43, align 4
  %44 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %153, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32 @getopt(i32 %47, i8** %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 %49, i32* %23, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %154

51:                                               ; preds = %46
  %52 = load i32, i32* %23, align 4
  switch i32 %52, label %151 [
    i32 97, label %53
    i32 98, label %56
    i32 67, label %59
    i32 99, label %60
    i32 68, label %63
    i32 100, label %64
    i32 69, label %67
    i32 101, label %69
    i32 70, label %72
    i32 102, label %81
    i32 104, label %84
    i32 105, label %86
    i32 107, label %89
    i32 76, label %91
    i32 108, label %92
    i32 77, label %94
    i32 109, label %102
    i32 78, label %105
    i32 110, label %106
    i32 79, label %108
    i32 111, label %111
    i32 80, label %114
    i32 112, label %115
    i32 83, label %134
    i32 115, label %135
    i32 116, label %137
    i32 84, label %139
    i32 85, label %142
    i32 118, label %143
    i32 119, label %146
    i32 88, label %150
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %153

56:                                               ; preds = %51
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  br label %153

59:                                               ; preds = %51
  br label %153

60:                                               ; preds = %51
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  br label %153

63:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %153

64:                                               ; preds = %51
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %65)
  br label %153

67:                                               ; preds = %51
  %68 = load i8*, i8** @optarg, align 8
  store i8* %68, i8** @path_mdconfig, align 8
  br label %153

69:                                               ; preds = %51
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %70)
  br label %153

72:                                               ; preds = %51
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32, i32* @MD_VNODE, align 4
  store i32 %78, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 (i8**, i8*, ...) @argappend(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %79)
  br label %153

81:                                               ; preds = %51
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %82)
  br label %153

84:                                               ; preds = %51
  %85 = call i32 (...) @usage()
  br label %153

86:                                               ; preds = %51
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %87)
  br label %153

89:                                               ; preds = %51
  %90 = load i8*, i8** @optarg, align 8
  store i8* %90, i8** %20, align 8
  br label %153

91:                                               ; preds = %51
  store i32 1, i32* @loudsubs, align 4
  br label %153

92:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  %93 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %153

94:                                               ; preds = %51
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (...) @usage()
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i32, i32* @MD_MALLOC, align 4
  store i32 %100, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %101 = call i32 (i8**, i8*, ...) @argappend(i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %153

102:                                              ; preds = %51
  %103 = load i8*, i8** @optarg, align 8
  %104 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %103)
  br label %153

105:                                              ; preds = %51
  store i32 1, i32* @norun, align 4
  br label %153

106:                                              ; preds = %51
  %107 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %153

108:                                              ; preds = %51
  %109 = load i8*, i8** @optarg, align 8
  %110 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %109)
  br label %153

111:                                              ; preds = %51
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i32 (i8**, i8*, ...) @argappend(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %112)
  br label %153

114:                                              ; preds = %51
  store i32 0, i32* %17, align 4
  br label %153

115:                                              ; preds = %51
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i8* @setmode(i8* %116)
  store i8* %117, i8** %25, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (...) @usage()
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i8*, i8** %25, align 8
  %123 = load i32, i32* @S_IRWXU, align 4
  %124 = load i32, i32* @S_IRWXG, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @S_IRWXO, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @getmode(i8* %122, i32 %127)
  %129 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 2
  store i32 1, i32* %131, align 4
  %132 = load i8*, i8** %25, align 8
  %133 = call i32 @free(i8* %132)
  br label %153

134:                                              ; preds = %51
  store i32 0, i32* %15, align 4
  br label %153

135:                                              ; preds = %51
  %136 = load i8*, i8** @optarg, align 8
  store i8* %136, i8** %19, align 8
  br label %153

137:                                              ; preds = %51
  %138 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %153

139:                                              ; preds = %51
  %140 = load i8*, i8** @optarg, align 8
  %141 = call i32 (i8**, i8*, ...) @argappend(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %140)
  br label %153

142:                                              ; preds = %51
  store i32 1, i32* %15, align 4
  br label %153

143:                                              ; preds = %51
  %144 = load i8*, i8** @optarg, align 8
  %145 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %144)
  br label %153

146:                                              ; preds = %51
  %147 = load i8*, i8** @optarg, align 8
  %148 = call i32 @extract_ugid(i8* %147, %struct.mtpt_info* %6)
  %149 = getelementptr inbounds %struct.mtpt_info, %struct.mtpt_info* %6, i32 0, i32 2
  store i32 1, i32* %149, align 4
  br label %153

150:                                              ; preds = %51
  store i32 1, i32* @debug, align 4
  br label %153

151:                                              ; preds = %51
  %152 = call i32 (...) @usage()
  br label %153

153:                                              ; preds = %151, %150, %146, %143, %142, %139, %137, %135, %134, %121, %114, %111, %108, %106, %105, %102, %99, %92, %91, %89, %86, %84, %81, %77, %69, %67, %64, %63, %60, %59, %56, %53
  br label %46

154:                                              ; preds = %46
  %155 = load i64, i64* @optind, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %4, align 4
  %160 = load i64, i64* @optind, align 8
  %161 = load i8**, i8*** %5, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 %160
  store i8** %162, i8*** %5, align 8
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = call i32 (...) @usage()
  br label %167

167:                                              ; preds = %165, %154
  %168 = load i8*, i8** %19, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %221

170:                                              ; preds = %167
  %171 = load i8*, i8** %19, align 8
  %172 = call i64 @strtoumax(i8* %171, i8** %22, i32 0)
  store i64 %172, i64* %7, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = load i8*, i8** %19, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %191, label %176

176:                                              ; preds = %170
  %177 = load i8*, i8** %22, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i8*, i8** %22, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %182, %176
  %189 = load i64, i64* %7, align 8
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188, %182, %170
  %192 = load i8*, i8** %19, align 8
  %193 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i8*, i8** %22, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  switch i32 %197, label %217 [
    i32 112, label %198
    i32 80, label %198
    i32 116, label %201
    i32 84, label %201
    i32 103, label %204
    i32 71, label %204
    i32 109, label %207
    i32 77, label %207
    i32 107, label %210
    i32 75, label %210
    i32 98, label %213
    i32 66, label %213
    i32 0, label %214
  ]

198:                                              ; preds = %194, %194
  %199 = load i64, i64* %7, align 8
  %200 = mul nsw i64 %199, 1024
  store i64 %200, i64* %7, align 8
  br label %201

201:                                              ; preds = %194, %194, %198
  %202 = load i64, i64* %7, align 8
  %203 = mul nsw i64 %202, 1024
  store i64 %203, i64* %7, align 8
  br label %204

204:                                              ; preds = %194, %194, %201
  %205 = load i64, i64* %7, align 8
  %206 = mul nsw i64 %205, 1024
  store i64 %206, i64* %7, align 8
  br label %207

207:                                              ; preds = %194, %194, %204
  %208 = load i64, i64* %7, align 8
  %209 = mul nsw i64 %208, 1024
  store i64 %209, i64* %7, align 8
  br label %210

210:                                              ; preds = %194, %194, %207
  %211 = load i64, i64* %7, align 8
  %212 = mul nsw i64 %211, 1024
  store i64 %212, i64* %7, align 8
  br label %213

213:                                              ; preds = %194, %194, %210
  br label %220

214:                                              ; preds = %194
  %215 = load i64, i64* %7, align 8
  %216 = mul nsw i64 %215, 512
  store i64 %216, i64* %7, align 8
  br label %220

217:                                              ; preds = %194
  %218 = load i8*, i8** %19, align 8
  %219 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %217, %214, %213
  br label %221

221:                                              ; preds = %220, %167
  %222 = load i8**, i8*** %5, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 0
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %21, align 8
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 1
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %18, align 8
  %228 = load i8*, i8** %21, align 8
  %229 = call i64 @strcmp(i8* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %221
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 -1, i32* %24, align 4
  br label %241

235:                                              ; preds = %231
  %236 = call i32 @modfind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i32 %236, i32* %24, align 4
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = call i32 @kldload(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  store i32 %239, i32* %24, align 4
  br label %240

240:                                              ; preds = %238, %235
  br label %241

241:                                              ; preds = %240, %234
  %242 = load i32, i32* %24, align 4
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %21, align 8
  br label %246

245:                                              ; preds = %241
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %21, align 8
  br label %246

246:                                              ; preds = %245, %244
  br label %247

247:                                              ; preds = %246, %221
  %248 = load i8*, i8** %21, align 8
  %249 = call i64 @strcmp(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %247
  %252 = load i8*, i8** %19, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i64, i64* %7, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i64, i64* %7, align 8
  %259 = call i32 (i8**, i8*, ...) @argappend(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i64 %258)
  br label %260

260:                                              ; preds = %257, %254, %251
  %261 = load i8*, i8** %10, align 8
  %262 = load i8*, i8** %18, align 8
  %263 = call i32 @do_mount_tmpfs(i8* %261, i8* %262)
  br label %356

264:                                              ; preds = %247
  %265 = load i8*, i8** %19, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i64, i64* %7, align 8
  %269 = call i32 (i8**, i8*, ...) @argappend(i8** %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i64 %268)
  br label %270

270:                                              ; preds = %267, %264
  %271 = load i8*, i8** %21, align 8
  %272 = call i64 @strncmp(i8* %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 5)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i8*, i8** %21, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 5
  store i8* %276, i8** %21, align 8
  br label %277

277:                                              ; preds = %274, %270
  %278 = load i8*, i8** %21, align 8
  %279 = load i8*, i8** @mdname, align 8
  %280 = load i32, i32* @mdnamelen, align 4
  %281 = call i64 @strncmp(i8* %278, i8* %279, i32 %280)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %277
  %284 = load i32, i32* @mdnamelen, align 4
  %285 = load i8*, i8** %21, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8* %287, i8** %21, align 8
  br label %288

288:                                              ; preds = %283, %277
  %289 = load i8*, i8** %21, align 8
  %290 = load i8, i8* %289, align 1
  %291 = call i32 @isdigit(i8 signext %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %288
  store i32 1, i32* %16, align 4
  store i32 -1, i32* @unit, align 4
  %294 = load i8*, i8** %21, align 8
  store i8* %294, i8** @mdsuffix, align 8
  br label %308

295:                                              ; preds = %288
  %296 = load i8*, i8** %21, align 8
  %297 = call i64 @strtoul(i8* %296, i8** %22, i32 10)
  store i64 %297, i64* %26, align 8
  %298 = load i64, i64* %26, align 8
  %299 = load i64, i64* @ULONG_MAX, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = load i8*, i8** %21, align 8
  %303 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8* %302)
  br label %304

304:                                              ; preds = %301, %295
  %305 = load i64, i64* %26, align 8
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* @unit, align 4
  %307 = load i8*, i8** %22, align 8
  store i8* %307, i8** @mdsuffix, align 8
  br label %308

308:                                              ; preds = %304, %293
  %309 = load i32, i32* %12, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* @MD_SWAP, align 4
  store i32 %312, i32* %11, align 4
  br label %313

313:                                              ; preds = %311, %308
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = call i32 (i8**, i8*, ...) @argappend(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %313
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* @MD_VNODE, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %318
  %323 = load i32, i32* %17, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %322
  %326 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  br label %327

327:                                              ; preds = %325, %322, %318
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %327
  %331 = load i32, i32* %16, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = call i32 (...) @do_mdconfig_detach()
  br label %335

335:                                              ; preds = %333, %330, %327
  %336 = load i32, i32* %16, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load i8*, i8** %8, align 8
  %340 = load i32, i32* %11, align 4
  %341 = call i32 @do_mdconfig_attach_au(i8* %339, i32 %340)
  br label %346

342:                                              ; preds = %335
  %343 = load i8*, i8** %8, align 8
  %344 = load i32, i32* %11, align 4
  %345 = call i32 @do_mdconfig_attach(i8* %343, i32 %344)
  br label %346

346:                                              ; preds = %342, %338
  %347 = load i32, i32* %17, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i8*, i8** %9, align 8
  %351 = call i32 @do_newfs(i8* %350)
  br label %352

352:                                              ; preds = %349, %346
  %353 = load i8*, i8** %10, align 8
  %354 = load i8*, i8** %18, align 8
  %355 = call i32 @do_mount_md(i8* %353, i8* %354)
  br label %356

356:                                              ; preds = %352, %260
  %357 = load i8*, i8** %18, align 8
  %358 = call i32 @do_mtptsetup(i8* %357, %struct.mtpt_info* %6)
  %359 = load i8*, i8** %20, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %356
  %362 = load i8*, i8** %18, align 8
  %363 = load i8*, i8** %20, align 8
  %364 = call i32 @do_copy(i8* %362, i8* %363)
  br label %365

365:                                              ; preds = %361, %356
  ret i32 0
}

declare dso_local i32 @memset(%struct.mtpt_info*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @argappend(i8**, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @setmode(i8*) #1

declare dso_local i32 @getmode(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @extract_ugid(i8*, %struct.mtpt_info*) #1

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @modfind(i8*) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @do_mount_tmpfs(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @do_mdconfig_detach(...) #1

declare dso_local i32 @do_mdconfig_attach_au(i8*, i32) #1

declare dso_local i32 @do_mdconfig_attach(i8*, i32) #1

declare dso_local i32 @do_newfs(i8*) #1

declare dso_local i32 @do_mount_md(i8*, i8*) #1

declare dso_local i32 @do_mtptsetup(i8*, %struct.mtpt_info*) #1

declare dso_local i32 @do_copy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
