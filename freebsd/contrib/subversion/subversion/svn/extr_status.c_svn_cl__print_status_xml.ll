; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_svn_cl__print_status_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_svn_cl__print_status_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_xml_normal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"wc-locked\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"copied\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"switched\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"file-external\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"tree-conflicted\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"moved-from\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"moved-to\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"wc-status\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"repos-status\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__print_status_xml(i8* %0, i8* %1, i8* %2, %struct.TYPE_15__* %3, %struct.TYPE_16__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call %struct.TYPE_14__* @svn_stringbuf_create_empty(i32* %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %14, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %16, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %17, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @svn_wc_status_none, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %6
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_wc_status_none, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %7, align 8
  br label %271

38:                                               ; preds = %30, %6
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 18
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %16, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @svn_wc_conflicted_p3(i32* null, i32* null, i64* %17, i32 %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %51

51:                                               ; preds = %43, %38
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @svn_xml_normal, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i8* @svn_dirent_local_style(i8* %54, i32* %55)
  %57 = load i32, i32* @SVN_VA_NULL, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (%struct.TYPE_14__**, i32*, i32, i8*, i8*, i8*, i8*, ...) @svn_xml_make_open_tag(%struct.TYPE_14__** %14, i32* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %59)
  %61 = load i32*, i32** %13, align 8
  %62 = call i32* @apr_hash_make(i32* %61)
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %65 = call i64 @combined_status(%struct.TYPE_15__* %64)
  %66 = call i8* @generate_status_desc(i64 %65)
  %67 = call i32 @svn_hash_sets(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %15, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @svn_wc_status_deleted, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %51
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  br label %80

78:                                               ; preds = %51
  %79 = load i64, i64* @svn_wc_status_none, align 8
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i64 [ %77, %74 ], [ %79, %78 ]
  %82 = call i8* @generate_status_desc(i64 %81)
  %83 = call i32 @svn_hash_sets(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 17
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @svn_hash_sets(i32* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %80
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 13
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @svn_hash_sets(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 16
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @svn_hash_sets(i32* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %99
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 15
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @svn_hash_sets(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %107
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 14
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 13
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %15, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @apr_psprintf(i32* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  %132 = call i32 @svn_hash_sets(i32* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %125, %120, %115
  %134 = load i64, i64* %17, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @svn_hash_sets(i32* %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 11
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 10
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %190

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 11
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 11
  %159 = load i64, i64* %158, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = load i32*, i32** %13, align 8
  %162 = call i8* @make_relpath(i8* %155, i8* %156, i64 %159, i32* %160, i32* %161)
  store i8* %162, i8** %18, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = call i8* @svn_dirent_local_style(i8* %163, i32* %164)
  store i8* %165, i8** %18, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = load i8*, i8** %18, align 8
  %168 = call i32 @svn_hash_sets(i32* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %154, %149
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 10
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load i8*, i8** %8, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 10
  %179 = load i64, i64* %178, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i8* @make_relpath(i8* %175, i8* %176, i64 %179, i32* %180, i32* %181)
  store i8* %182, i8** %18, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = load i32*, i32** %13, align 8
  %185 = call i8* @svn_dirent_local_style(i8* %183, i32* %184)
  store i8* %185, i8** %18, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = load i8*, i8** %18, align 8
  %188 = call i32 @svn_hash_sets(i32* %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %174, %169
  br label %190

190:                                              ; preds = %189, %144
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* @svn_xml_normal, align 4
  %193 = load i32*, i32** %15, align 8
  %194 = call i32 @svn_xml_make_open_tag_hash(%struct.TYPE_14__** %14, i32* %191, i32 %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* %193)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @SVN_IS_VALID_REVNUM(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %190
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = load i32*, i32** %13, align 8
  %211 = call i32 @svn_time_to_cstring(i32 %209, i32* %210)
  %212 = load i32*, i32** %13, align 8
  %213 = call i32 @svn_cl__print_xml_commit(%struct.TYPE_14__** %14, i32 %203, i32 %206, i32 %211, i32* %212)
  br label %214

214:                                              ; preds = %200, %190
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %13, align 8
  %224 = call i32 @svn_cl__print_xml_lock(%struct.TYPE_14__** %14, i32 %222, i32* %223)
  br label %225

225:                                              ; preds = %219, %214
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @svn_xml_make_close_tag(%struct.TYPE_14__** %14, i32* %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @svn_wc_status_none, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %238, label %233

233:                                              ; preds = %225
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %263

238:                                              ; preds = %233, %225
  %239 = load i32*, i32** %13, align 8
  %240 = load i32, i32* @svn_xml_normal, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %242 = call i64 @combined_repos_status(%struct.TYPE_15__* %241)
  %243 = call i8* @generate_status_desc(i64 %242)
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = call i8* @generate_status_desc(i64 %246)
  %248 = load i32, i32* @SVN_VA_NULL, align 4
  %249 = call i32 (%struct.TYPE_14__**, i32*, i32, i8*, i8*, i8*, i8*, ...) @svn_xml_make_open_tag(%struct.TYPE_14__** %14, i32* %239, i32 %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %247, i32 %248)
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %238
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = load i32*, i32** %13, align 8
  %259 = call i32 @svn_cl__print_xml_lock(%struct.TYPE_14__** %14, i32 %257, i32* %258)
  br label %260

260:                                              ; preds = %254, %238
  %261 = load i32*, i32** %13, align 8
  %262 = call i32 @svn_xml_make_close_tag(%struct.TYPE_14__** %14, i32* %261, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %233
  %264 = load i32*, i32** %13, align 8
  %265 = call i32 @svn_xml_make_close_tag(%struct.TYPE_14__** %14, i32* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @stdout, align 4
  %270 = call i32* @svn_cl__error_checked_fputs(i32 %268, i32 %269)
  store i32* %270, i32** %7, align 8
  br label %271

271:                                              ; preds = %263, %36
  %272 = load i32*, i32** %7, align 8
  ret i32* %272
}

declare dso_local %struct.TYPE_14__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_conflicted_p3(i32*, i32*, i64*, i32, i8*, i32*) #1

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_14__**, i32*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i8* @generate_status_desc(i64) #1

declare dso_local i64 @combined_status(%struct.TYPE_15__*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i8* @make_relpath(i8*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_xml_make_open_tag_hash(%struct.TYPE_14__**, i32*, i32, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_cl__print_xml_commit(%struct.TYPE_14__**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @svn_cl__print_xml_lock(%struct.TYPE_14__**, i32, i32*) #1

declare dso_local i32 @svn_xml_make_close_tag(%struct.TYPE_14__**, i32*, i8*) #1

declare dso_local i64 @combined_repos_status(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_cl__error_checked_fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
