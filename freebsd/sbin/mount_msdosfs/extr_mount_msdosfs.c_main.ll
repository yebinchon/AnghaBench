; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_msdosfs/extr_mount_msdosfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_msdosfs/extr_mount_msdosfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.stat = type { i64, i64, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@__const.main.fstype = private unnamed_addr constant [8 x i8] c"msdosfs\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"sl9u:g:m:M:o:L:D:W:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"shortnames\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"longnames\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nowin95\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optarg = common dso_local global i8* null, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KICONV_VENDOR_MICSFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"cs_local\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cs_dos\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"iso22dos\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ISO8859-2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"CP852\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"iso72dos\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ISO8859-7\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"CP737\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"koi2dos\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"KOI8-R\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"CP866\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"koi8u2dos\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"KOI8-U\00", align 1
@EX_NOINPUT = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"msdosfs_iconv\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"kiconv\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"ISO8859-1\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@S_IRWXU = common dso_local global i64 0, align 8
@S_IRWXG = common dso_local global i64 0, align 8
@S_IRWXO = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"dirmask\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [8 x i8], align 1
  %20 = alloca [255 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.iovec* null, %struct.iovec** %6, align 8
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* @MAXPATHLEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %16, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %34 = bitcast [8 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.fstype, i32 0, i32 0), i64 8, i1 false)
  %35 = bitcast [255 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 255, i1 false)
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %152, %2
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @getopt(i32 %37, i8** %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %9, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %153

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %150 [
    i32 115, label %43
    i32 108, label %45
    i32 57, label %47
    i32 117, label %49
    i32 103, label %52
    i32 109, label %55
    i32 77, label %58
    i32 76, label %61
    i32 68, label %88
    i32 111, label %93
    i32 87, label %109
    i32 63, label %149
  ]

43:                                               ; preds = %41
  %44 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 -1)
  br label %152

45:                                               ; preds = %41
  %46 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* null, i32 -1)
  br label %152

47:                                               ; preds = %41
  %48 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 -1)
  br label %152

49:                                               ; preds = %41
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i64 @a_uid(i8* %50)
  store i64 %51, i64* %25, align 8
  store i32 1, i32* %11, align 4
  br label %152

52:                                               ; preds = %41
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i64 @a_gid(i8* %53)
  store i64 %54, i64* %26, align 8
  store i32 1, i32* %10, align 4
  br label %152

55:                                               ; preds = %41
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i64 @a_mask(i8* %56)
  store i64 %57, i64* %23, align 8
  store i32 1, i32* %12, align 4
  br label %152

58:                                               ; preds = %41
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i64 @a_mask(i8* %59)
  store i64 %60, i64* %24, align 8
  store i32 1, i32* %13, align 4
  br label %152

61:                                               ; preds = %41
  store i8* null, i8** %27, align 8
  %62 = load i32, i32* @LC_CTYPE, align 4
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32* @setlocale(i32 %62, i8* %63)
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @EX_CONFIG, align 4
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32 (i32, i8*, ...) @err(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 46)
  store i8* %72, i8** %18, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @EX_CONFIG, align 4
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i32 (i32, i8*, ...) @err(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i32, i32* @KICONV_VENDOR_MICSFT, align 4
  %83 = call i8* @kiconv_quirkcs(i8* %81, i32 %82)
  store i8* %83, i8** %27, align 8
  %84 = load i8*, i8** %27, align 8
  %85 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %27, align 8
  %87 = call i8* @strdup(i8* %86)
  store i8* %87, i8** %22, align 8
  br label %152

88:                                               ; preds = %41
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i8* @strdup(i8* %89)
  store i8* %90, i8** %21, align 8
  %91 = load i8*, i8** %21, align 8
  %92 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %91, i64 -1)
  br label %152

93:                                               ; preds = %41
  store i8* null, i8** %28, align 8
  %94 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i8* %94, i8** %29, align 8
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 61)
  store i8* %96, i8** %28, align 8
  %97 = load i8*, i8** %28, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i8*, i8** %29, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i8*, i8** %28, align 8
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %28, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %29, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i8*, i8** @optarg, align 8
  %107 = load i8*, i8** %29, align 8
  %108 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* %106, i8* %107, i32 -1)
  br label %152

109:                                              ; preds = %41
  %110 = load i8*, i8** @optarg, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %114, i8** %22, align 8
  %115 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i8* %115, i8** %21, align 8
  br label %144

116:                                              ; preds = %109
  %117 = load i8*, i8** @optarg, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  store i8* %121, i8** %22, align 8
  %122 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store i8* %122, i8** %21, align 8
  br label %143

123:                                              ; preds = %116
  %124 = load i8*, i8** @optarg, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i8* %128, i8** %22, align 8
  %129 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  store i8* %129, i8** %21, align 8
  br label %142

130:                                              ; preds = %123
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = call i8* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  store i8* %135, i8** %22, align 8
  %136 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  store i8* %136, i8** %21, align 8
  br label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @EX_NOINPUT, align 4
  %139 = load i8*, i8** @optarg, align 8
  %140 = call i32 (i32, i8*, ...) @err(i32 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %127
  br label %143

143:                                              ; preds = %142, %120
  br label %144

144:                                              ; preds = %143, %113
  %145 = load i8*, i8** %22, align 8
  %146 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %145, i32 -1)
  %147 = load i8*, i8** %21, align 8
  %148 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %147, i32 -1)
  br label %152

149:                                              ; preds = %41
  br label %150

150:                                              ; preds = %41, %149
  %151 = call i32 (...) @usage()
  br label %152

152:                                              ; preds = %150, %144, %105, %88, %79, %58, %55, %52, %49, %47, %45, %43
  br label %36

153:                                              ; preds = %36
  %154 = load i32, i32* @optind, align 4
  %155 = add nsw i32 %154, 2
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (...) @usage()
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = load i64, i64* %23, align 8
  store i64 %167, i64* %24, align 8
  store i32 1, i32* %13, align 4
  br label %177

168:                                              ; preds = %163, %160
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = load i64, i64* %24, align 8
  store i64 %175, i64* %23, align 8
  store i32 1, i32* %12, align 4
  br label %176

176:                                              ; preds = %174, %171, %168
  br label %177

177:                                              ; preds = %176, %166
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* @optind, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %14, align 8
  %183 = load i8**, i8*** %5, align 8
  %184 = load i32, i32* @optind, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %183, i64 %186
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %15, align 8
  %189 = load i8*, i8** %22, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %177
  %192 = load i8*, i8** %22, align 8
  %193 = load i8*, i8** %21, align 8
  %194 = call i32 @set_charset(%struct.iovec** %6, i32* %7, i8* %192, i8* %193)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* @EX_OSERR, align 4
  %198 = call i32 (i32, i8*, ...) @err(i32 %197, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %191
  %200 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %215

201:                                              ; preds = %177
  %202 = load i8*, i8** %21, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %201
  %205 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %206 = load i8*, i8** %21, align 8
  %207 = call i32 @set_charset(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %206)
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* @EX_OSERR, align 4
  %211 = call i32 (i32, i8*, ...) @err(i32 %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %204
  %213 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %201
  br label %215

215:                                              ; preds = %214, %199
  %216 = load i8*, i8** %15, align 8
  %217 = call i64 @checkpath(i8* %216, i8* %33)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* @EX_USAGE, align 4
  %221 = call i32 (i32, i8*, ...) @err(i32 %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  br label %222

222:                                              ; preds = %219, %215
  %223 = load i8*, i8** %14, align 8
  %224 = load i8*, i8** %14, align 8
  %225 = call i32 @rmslashes(i8* %223, i8* %224)
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %265, label %234

234:                                              ; preds = %231, %228, %222
  %235 = call i32 @stat(i8* %33, %struct.stat* %8)
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* @EX_OSERR, align 4
  %239 = call i32 (i32, i8*, ...) @err(i32 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %33)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %25, align 8
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %26, align 8
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @S_IRWXU, align 8
  %259 = load i64, i64* @S_IRWXG, align 8
  %260 = or i64 %258, %259
  %261 = load i64, i64* @S_IRWXO, align 8
  %262 = or i64 %260, %261
  %263 = and i64 %257, %262
  store i64 %263, i64* %24, align 8
  store i64 %263, i64* %23, align 8
  br label %264

264:                                              ; preds = %255, %252
  br label %265

265:                                              ; preds = %264, %231
  %266 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %267 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %266, i32 -1)
  %268 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %33, i32 -1)
  %269 = load i8*, i8** %14, align 8
  %270 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %269, i32 -1)
  %271 = getelementptr inbounds [255 x i8], [255 x i8]* %20, i64 0, i64 0
  %272 = call i32 @build_iovec(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* %271, i32 255)
  %273 = load i64, i64* %25, align 8
  %274 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i64 %273)
  %275 = load i64, i64* %26, align 8
  %276 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 %275)
  %277 = load i64, i64* %23, align 8
  %278 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 %277)
  %279 = load i64, i64* %24, align 8
  %280 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %6, i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 %279)
  %281 = load %struct.iovec*, %struct.iovec** %6, align 8
  %282 = load i32, i32* %7, align 4
  %283 = call i64 @nmount(%struct.iovec* %281, i32 %282, i32 0)
  %284 = icmp slt i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %265
  %286 = getelementptr inbounds [255 x i8], [255 x i8]* %20, i64 0, i64 0
  %287 = load i8, i8* %286, align 16
  %288 = icmp ne i8 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load i8*, i8** %14, align 8
  %291 = getelementptr inbounds [255 x i8], [255 x i8]* %20, i64 0, i64 0
  %292 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %290, i8* %291)
  br label %296

293:                                              ; preds = %285
  %294 = load i8*, i8** %14, align 8
  %295 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %294)
  br label %296

296:                                              ; preds = %293, %289
  br label %297

297:                                              ; preds = %296, %265
  %298 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #3

declare dso_local i32 @build_iovec_argf(%struct.iovec**, i32*, i8*, i8*, ...) #3

declare dso_local i64 @a_uid(i8*) #3

declare dso_local i64 @a_gid(i8*) #3

declare dso_local i64 @a_mask(i8*) #3

declare dso_local i32* @setlocale(i32, i8*) #3

declare dso_local i32 @err(i32, i8*, ...) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i8* @kiconv_quirkcs(i8*, i32) #3

declare dso_local i8* @strdup(i8*) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @usage(...) #3

declare dso_local i32 @set_charset(%struct.iovec**, i32*, i8*, i8*) #3

declare dso_local i64 @checkpath(i8*, i8*) #3

declare dso_local i32 @rmslashes(i8*, i8*) #3

declare dso_local i32 @stat(i8*, %struct.stat*) #3

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
