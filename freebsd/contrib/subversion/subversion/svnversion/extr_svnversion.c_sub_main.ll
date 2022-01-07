; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnversion/extr_svnversion.c_sub_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnversion/extr_svnversion.c_sub_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i8*, i8*, i64, i64, i64 }
%struct.TYPE_29__ = type { i32, i32, i8** }
%struct.TYPE_30__ = type { i8*, i8, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no-newline\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"do not output the trailing newline\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"committed\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"last changed rather than current revisions\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"display this help\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"show program version information\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"no progress (only errors) to stderr\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_28__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Unversioned symlink%s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"Unversioned directory%s\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"Unversioned file%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"'%s' doesn't exist\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"'%s' is of unknown type\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Uncommitted local addition, copy or move%s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c":%ld\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (i32*, i32, i8**, i32*)* @sub_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @sub_main(i32* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [6 x %struct.TYPE_30__], align 16
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %19, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %20, align 8
  %31 = getelementptr inbounds [6 x %struct.TYPE_30__], [6 x %struct.TYPE_30__]* %21, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 1
  store i8 110, i8* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 3
  %36 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i64 1
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 1
  store i8 99, i8* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 3
  %42 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i64 1
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  store i8 104, i8* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 3
  %48 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i64 1
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 1
  store i8 -128, i8* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 3
  %54 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i64 1
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 1
  store i8 113, i8* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 3
  %60 = call i32 @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i64 1
  %62 = bitcast %struct.TYPE_30__* %61 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %62, i8 0, i64 24, i1 false)
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 1
  store i8 0, i8* %63, align 8
  %64 = call %struct.TYPE_28__* (...) @check_lib_versions()
  %65 = call i32 @SVN_ERR(%struct.TYPE_28__* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i8**, i8*** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call %struct.TYPE_28__* @svn_cmdline__getopt_init(%struct.TYPE_29__** %17, i32 %66, i8** %67, i32* %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_28__* %69)
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %4, %112
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %75 = getelementptr inbounds [6 x %struct.TYPE_30__], [6 x %struct.TYPE_30__]* %21, i64 0, i64 0
  %76 = call i64 @apr_getopt_long(%struct.TYPE_29__* %74, %struct.TYPE_30__* %75, i32* %22, i8** %23)
  store i64 %76, i64* %24, align 8
  %77 = load i64, i64* %24, align 8
  %78 = call i64 @APR_STATUS_IS_EOF(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %113

81:                                               ; preds = %73
  %82 = load i64, i64* %24, align 8
  %83 = load i64, i64* @APR_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @usage(i32* %88)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %90, %struct.TYPE_28__** %5, align 8
  br label %365

91:                                               ; preds = %81
  %92 = load i32, i32* %22, align 4
  switch i32 %92, label %106 [
    i32 110, label %93
    i32 99, label %95
    i32 113, label %97
    i32 104, label %99
    i32 128, label %104
  ]

93:                                               ; preds = %91
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %14, align 8
  br label %112

95:                                               ; preds = %91
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %15, align 8
  br label %112

97:                                               ; preds = %91
  %98 = load i64, i64* @TRUE, align 8
  store i64 %98, i64* %19, align 8
  br label %112

99:                                               ; preds = %91
  %100 = getelementptr inbounds [6 x %struct.TYPE_30__], [6 x %struct.TYPE_30__]* %21, i64 0, i64 0
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @help(%struct.TYPE_30__* %100, i32* %101)
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %103, %struct.TYPE_28__** %5, align 8
  br label %365

104:                                              ; preds = %91
  %105 = load i64, i64* @TRUE, align 8
  store i64 %105, i64* %20, align 8
  br label %112

106:                                              ; preds = %91
  %107 = load i32, i32* @EXIT_FAILURE, align 4
  %108 = load i32*, i32** %6, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @usage(i32* %109)
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %111, %struct.TYPE_28__** %5, align 8
  br label %365

112:                                              ; preds = %104, %97, %95, %93
  br label %73

113:                                              ; preds = %80
  %114 = load i64, i64* %20, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i64, i64* %19, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = call %struct.TYPE_28__* @version(i64 %117, i32* %118)
  %120 = call i32 @SVN_ERR(%struct.TYPE_28__* %119)
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %121, %struct.TYPE_28__** %5, align 8
  br label %365

122:                                              ; preds = %113
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %7, align 4
  %133 = sub nsw i32 %132, 2
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %128, %122
  %136 = load i32, i32* @EXIT_FAILURE, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = call i32 @usage(i32* %138)
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %140, %struct.TYPE_28__** %5, align 8
  br label %365

141:                                              ; preds = %128
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 2
  %150 = load i8**, i8*** %149, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %150, i64 %154
  %156 = load i8*, i8** %155, align 8
  br label %158

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %157, %147
  %159 = phi i8* [ %156, %147 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %157 ]
  %160 = load i32*, i32** %9, align 8
  %161 = call %struct.TYPE_28__* @svn_utf_cstring_to_utf8(i8** %10, i8* %159, i32* %160)
  %162 = call i32 @SVN_ERR(%struct.TYPE_28__* %161)
  %163 = load i8*, i8** %10, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = call %struct.TYPE_28__* @svn_opt__arg_canonicalize_path(i8** %10, i8* %163, i32* %164)
  %166 = call i32 @SVN_ERR(%struct.TYPE_28__* %165)
  %167 = load i8*, i8** %10, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = call %struct.TYPE_28__* @svn_dirent_get_absolute(i8** %12, i8* %167, i32* %168)
  %170 = call i32 @SVN_ERR(%struct.TYPE_28__* %169)
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call %struct.TYPE_28__* @svn_wc_context_create(i32** %18, i32* null, i32* %171, i32* %172)
  %174 = call i32 @SVN_ERR(%struct.TYPE_28__* %173)
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %158
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 2
  %184 = load i8**, i8*** %183, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %184, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = call %struct.TYPE_28__* @svn_utf_cstring_to_utf8(i8** %11, i8* %191, i32* %192)
  %194 = call i32 @SVN_ERR(%struct.TYPE_28__* %193)
  br label %196

195:                                              ; preds = %158
  store i8* null, i8** %11, align 8
  br label %196

196:                                              ; preds = %195, %181
  %197 = load i32*, i32** %18, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = load i8*, i8** %11, align 8
  %200 = load i64, i64* %15, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call %struct.TYPE_28__* @svn_wc_revision_status2(%struct.TYPE_27__** %13, i32* %197, i8* %198, i8* %199, i64 %200, i32* null, i32* null, i32* %201, i32* %202)
  store %struct.TYPE_28__* %203, %struct.TYPE_28__** %16, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %205 = icmp ne %struct.TYPE_28__* %204, null
  br i1 %205, label %206, label %286

206:                                              ; preds = %196
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %286

218:                                              ; preds = %212, %206
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %220 = call i32 @svn_error_clear(%struct.TYPE_28__* %219)
  %221 = load i8*, i8** %12, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = call %struct.TYPE_28__* @svn_io_check_special_path(i8* %221, i64* %25, i64* %26, i32* %222)
  %224 = call i32 @SVN_ERR(%struct.TYPE_28__* %223)
  %225 = load i64, i64* %26, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %218
  %228 = load i32*, i32** %9, align 8
  %229 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %230 = load i64, i64* %14, align 8
  %231 = icmp ne i64 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %234 = call %struct.TYPE_28__* @svn_cmdline_printf(i32* %228, i8* %229, i8* %233)
  %235 = call i32 @SVN_ERR(%struct.TYPE_28__* %234)
  br label %284

236:                                              ; preds = %218
  %237 = load i64, i64* %25, align 8
  %238 = load i64, i64* @svn_node_dir, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %236
  %241 = load i32*, i32** %9, align 8
  %242 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %243 = load i64, i64* %14, align 8
  %244 = icmp ne i64 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %247 = call %struct.TYPE_28__* @svn_cmdline_printf(i32* %241, i8* %242, i8* %246)
  %248 = call i32 @SVN_ERR(%struct.TYPE_28__* %247)
  br label %283

249:                                              ; preds = %236
  %250 = load i64, i64* %25, align 8
  %251 = load i64, i64* @svn_node_file, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load i32*, i32** %9, align 8
  %255 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %256 = load i64, i64* %14, align 8
  %257 = icmp ne i64 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %260 = call %struct.TYPE_28__* @svn_cmdline_printf(i32* %254, i8* %255, i8* %259)
  %261 = call i32 @SVN_ERR(%struct.TYPE_28__* %260)
  br label %282

262:                                              ; preds = %249
  %263 = load i32, i32* @stderr, align 4
  %264 = load i32*, i32** %9, align 8
  %265 = load i64, i64* %25, align 8
  %266 = load i64, i64* @svn_node_none, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %272

270:                                              ; preds = %262
  %271 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i8* [ %269, %268 ], [ %271, %270 ]
  %274 = load i8*, i8** %12, align 8
  %275 = load i32*, i32** %9, align 8
  %276 = call i32 @svn_dirent_local_style(i8* %274, i32* %275)
  %277 = call %struct.TYPE_28__* @svn_cmdline_fprintf(i32 %263, i32* %264, i8* %273, i32 %276)
  %278 = call i32 @SVN_ERR(%struct.TYPE_28__* %277)
  %279 = load i32, i32* @EXIT_FAILURE, align 4
  %280 = load i32*, i32** %6, align 8
  store i32 %279, i32* %280, align 4
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %281, %struct.TYPE_28__** %5, align 8
  br label %365

282:                                              ; preds = %253
  br label %283

283:                                              ; preds = %282, %240
  br label %284

284:                                              ; preds = %283, %227
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %285, %struct.TYPE_28__** %5, align 8
  br label %365

286:                                              ; preds = %212, %196
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %288 = call i32 @SVN_ERR(%struct.TYPE_28__* %287)
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @SVN_IS_VALID_REVNUM(i8* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %304, label %294

294:                                              ; preds = %286
  %295 = load i32*, i32** %9, align 8
  %296 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %297 = load i64, i64* %14, align 8
  %298 = icmp ne i64 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %301 = call %struct.TYPE_28__* @svn_cmdline_printf(i32* %295, i8* %296, i8* %300)
  %302 = call i32 @SVN_ERR(%struct.TYPE_28__* %301)
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %303, %struct.TYPE_28__** %5, align 8
  br label %365

304:                                              ; preds = %286
  %305 = load i32*, i32** %9, align 8
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = call %struct.TYPE_28__* @svn_cmdline_printf(i32* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %308)
  %310 = call i32 @SVN_ERR(%struct.TYPE_28__* %309)
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %313, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %304
  %319 = load i32*, i32** %9, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = call %struct.TYPE_28__* @svn_cmdline_printf(i32* %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %322)
  %324 = call i32 @SVN_ERR(%struct.TYPE_28__* %323)
  br label %325

325:                                              ; preds = %318, %304
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %325
  %331 = load i32, i32* @stdout, align 4
  %332 = load i32*, i32** %9, align 8
  %333 = call %struct.TYPE_28__* @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %331, i32* %332)
  %334 = call i32 @SVN_ERR(%struct.TYPE_28__* %333)
  br label %335

335:                                              ; preds = %330, %325
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  %341 = load i32, i32* @stdout, align 4
  %342 = load i32*, i32** %9, align 8
  %343 = call %struct.TYPE_28__* @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 %341, i32* %342)
  %344 = call i32 @SVN_ERR(%struct.TYPE_28__* %343)
  br label %345

345:                                              ; preds = %340, %335
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %345
  %351 = load i32, i32* @stdout, align 4
  %352 = load i32*, i32** %9, align 8
  %353 = call %struct.TYPE_28__* @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 %351, i32* %352)
  %354 = call i32 @SVN_ERR(%struct.TYPE_28__* %353)
  br label %355

355:                                              ; preds = %350, %345
  %356 = load i64, i64* %14, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* @stdout, align 4
  %360 = load i32*, i32** %9, align 8
  %361 = call %struct.TYPE_28__* @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %359, i32* %360)
  %362 = call i32 @SVN_ERR(%struct.TYPE_28__* %361)
  br label %363

363:                                              ; preds = %358, %355
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_28__* %364, %struct.TYPE_28__** %5, align 8
  br label %365

365:                                              ; preds = %363, %294, %284, %272, %135, %116, %106, %99, %85
  %366 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  ret %struct.TYPE_28__* %366
}

declare dso_local i32 @N_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @check_lib_versions(...) #1

declare dso_local %struct.TYPE_28__* @svn_cmdline__getopt_init(%struct.TYPE_29__**, i32, i8**, i32*) #1

declare dso_local i64 @apr_getopt_long(%struct.TYPE_29__*, %struct.TYPE_30__*, i32*, i8**) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32 @usage(i32*) #1

declare dso_local i32 @help(%struct.TYPE_30__*, i32*) #1

declare dso_local %struct.TYPE_28__* @version(i64, i32*) #1

declare dso_local %struct.TYPE_28__* @svn_utf_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_28__* @svn_opt__arg_canonicalize_path(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_28__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_28__* @svn_wc_context_create(i32**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_28__* @svn_wc_revision_status2(%struct.TYPE_27__**, i32*, i8*, i8*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @svn_io_check_special_path(i8*, i64*, i64*, i32*) #1

declare dso_local %struct.TYPE_28__* @svn_cmdline_printf(i32*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_28__* @svn_cmdline_fprintf(i32, i32*, i8*, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i8*) #1

declare dso_local %struct.TYPE_28__* @svn_cmdline_fputs(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
