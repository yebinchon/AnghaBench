; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_close_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_close_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { i64, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i8*, i32)*, i32 (i8*, i32)*, i32 (i8*, i64, i32, i8**)* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_5__* }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"* Loaded revision 0.\0A\00", align 1
@commit_callback = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_revision(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.revision_baton*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.revision_baton*
  store %struct.revision_baton* %10, %struct.revision_baton** %3, align 8
  %11 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %12 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %17 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %23 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %28 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %35 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @svn_cmdline_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %33, %26
  br label %157

40:                                               ; preds = %1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %102

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %58, %43
  %45 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %46 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %45, i32 0, i32 7
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %51 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %50, i32 0, i32 7
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br label %56

56:                                               ; preds = %49, %44
  %57 = phi i1 [ false, %44 ], [ %55, %49 ]
  br i1 %57, label %58, label %79

58:                                               ; preds = %56
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32 (i8*, i32)*, i32 (i8*, i32)** %60, align 8
  %62 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %63 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %62, i32 0, i32 7
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %68 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %61(i8* %66, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %73 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %72, i32 0, i32 7
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %78 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %77, i32 0, i32 7
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %78, align 8
  br label %44

79:                                               ; preds = %56
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32 (i8*, i32)*, i32 (i8*, i32)** %81, align 8
  %83 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %84 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %83, i32 0, i32 7
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %89 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 %82(i8* %87, i32 %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (i8*, i32)*, i32 (i8*, i32)** %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %98 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %95(i8* %96, i32 %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %156

102:                                              ; preds = %40
  %103 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %104 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %107 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %105, %109
  %111 = sub nsw i64 %110, 1
  store i64 %111, i64* %7, align 8
  %112 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %113 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %118 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @commit_callback, align 4
  %121 = load i8*, i8** %2, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %124 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @svn_ra_get_commit_editor3(i32 %116, %struct.TYPE_7__** %4, i8** %5, i32 %119, i32 %120, i8* %121, i32* null, i32 %122, i32 %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32 (i8*, i64, i32, i8**)*, i32 (i8*, i64, i32, i8**)** %129, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %134 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %130(i8* %131, i64 %132, i32 %135, i8** %8)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32 (i8*, i32)*, i32 (i8*, i32)** %139, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %143 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 %140(i8* %141, i32 %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32 (i8*, i32)*, i32 (i8*, i32)** %148, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %152 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 %149(i8* %150, i32 %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  br label %156

156:                                              ; preds = %102, %79
  br label %157

157:                                              ; preds = %156, %39
  %158 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %159 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %164 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %169 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @get_revision_mapping(i32 %167, i64 %170)
  store i64 %171, i64* %6, align 8
  br label %179

172:                                              ; preds = %157
  %173 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %174 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i64 0, i64* %6, align 8
  br label %178

178:                                              ; preds = %177, %172
  br label %179

179:                                              ; preds = %178, %162
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @SVN_IS_VALID_REVNUM(i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %252

183:                                              ; preds = %179
  %184 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %185 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %184, i32 0, i32 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %190 = call i32 @svn_hash_gets(i32 %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %217, label %192

192:                                              ; preds = %183
  %193 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %194 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %195 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %198 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @svn_repos__validate_prop(i32 %193, i32 %196, i32 %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %203 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %202, i32 0, i32 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i64, i64* %6, align 8
  %208 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %209 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %210 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %213 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @svn_ra_change_rev_prop2(i32 %206, i64 %207, i32 %208, i32* null, i32 %211, i32 %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  br label %217

217:                                              ; preds = %192, %183
  %218 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %219 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %218, i32 0, i32 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %224 = call i32 @svn_hash_gets(i32 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %251, label %226

226:                                              ; preds = %217
  %227 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %228 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %229 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %232 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @svn_repos__validate_prop(i32 %227, i32 %230, i32 %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %237 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %236, i32 0, i32 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i64, i64* %6, align 8
  %242 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %243 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %244 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %247 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @svn_ra_change_rev_prop2(i32 %240, i64 %241, i32 %242, i32* null, i32 %245, i32 %248)
  %250 = call i32 @SVN_ERR(i32 %249)
  br label %251

251:                                              ; preds = %226, %217
  br label %252

252:                                              ; preds = %251, %179
  %253 = load %struct.revision_baton*, %struct.revision_baton** %3, align 8
  %254 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @svn_pool_destroy(i32 %255)
  %257 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %257
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32, i8*) #1

declare dso_local i32 @svn_ra_get_commit_editor3(i32, %struct.TYPE_7__**, i8**, i32, i32, i8*, i32*, i32, i32) #1

declare dso_local i64 @get_revision_mapping(i32, i64) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_hash_gets(i32, i32) #1

declare dso_local i32 @svn_repos__validate_prop(i32, i32, i32) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
