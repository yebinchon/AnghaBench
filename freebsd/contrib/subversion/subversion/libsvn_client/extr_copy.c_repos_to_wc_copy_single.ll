; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_repos_to_wc_copy_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy.c_repos_to_wc_copy_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.notification_adjust_baton*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32, i32* (i32)*, i32 }
%struct.notification_adjust_baton = type { i8*, i8*, %struct.notification_adjust_baton*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* }
%struct.TYPE_18__ = type { i64 }
%struct.notification_adjust_baton.0 = type opaque

@svn_wc_notify_foreign_copy_begin = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_io_file_del_on_close = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_mergeinfo_inherited = common dso_local global i32 0, align 4
@svn_wc_notify_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_20__*, i64, i64, i64, i32*, i32*, %struct.TYPE_19__*, i32*)* @repos_to_wc_copy_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @repos_to_wc_copy_single(i64* %0, %struct.TYPE_20__* %1, i64 %2, i64 %3, i64 %4, i32* %5, i32* %6, %struct.TYPE_19__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.notification_adjust_baton, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca %struct.TYPE_18__*, align 8
  store i64* %0, i64** %11, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_19__* %7, %struct.TYPE_19__** %18, align 8
  store i32* %8, i32** %19, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %21, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = call i32 @svn_dirent_is_absolute(i8* %45)
  %47 = call i32 @SVN_ERR_ASSERT(i32 %46)
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %9
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %52, align 8
  %54 = icmp ne i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* %53, null
  br i1 %54, label %55, label %90

55:                                               ; preds = %50
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @svn_wc_notify_foreign_copy_begin, align 4
  %60 = load i32*, i32** %19, align 8
  %61 = call %struct.TYPE_18__* @svn_wc_create_notify_url(i32* %58, i32 %59, i32* %60)
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %22, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %68, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = call i32 %69(%struct.notification_adjust_baton* %72, %struct.TYPE_18__* %73, i32* %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = load i32* (i32)*, i32* (i32)** %77, align 8
  %79 = icmp ne i32* (i32)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %55
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  %83 = load i32* (i32)*, i32* (i32)** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32* %83(i32 %86)
  %88 = call i32 @SVN_ERR(i32* %87)
  br label %89

89:                                               ; preds = %80, %55
  br label %90

90:                                               ; preds = %89, %50, %9
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @svn_node_dir, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %319

96:                                               ; preds = %90
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %218

99:                                               ; preds = %96
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = call i32* @svn_wc__get_tmpdir(i8** %23, i32 %102, i8* %103, i32* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32* %106)
  %108 = load i8*, i8** %23, align 8
  %109 = load i32, i32* @svn_io_file_del_on_close, align 4
  %110 = load i32*, i32** %19, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = call i32* @svn_io_open_unique_file3(i32* null, i8** %24, i8* %108, i32 %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %115, align 8
  %117 = bitcast i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* %116 to i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)*
  store i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)* %117, i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)** %25, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %119, align 8
  %121 = bitcast %struct.notification_adjust_baton* %120 to i8*
  store i8* %121, i8** %26, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %123, align 8
  %125 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 3
  store i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* %124, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %127, align 8
  %129 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 2
  store %struct.notification_adjust_baton* %128, %struct.notification_adjust_baton** %129, align 8
  %130 = load i8*, i8** %24, align 8
  %131 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 0
  store i8* %130, i8** %131, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  store i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* @notification_adjust_func, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %135, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  store %struct.notification_adjust_baton* %27, %struct.notification_adjust_baton** %137, align 8
  %138 = load i64, i64* %15, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %99
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %14, align 8
  br label %142

142:                                              ; preds = %140, %99
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load i64*, i64** %11, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %24, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 4
  %154 = load i32, i32* @svn_depth_infinity, align 4
  %155 = load i64, i64* %14, align 8
  %156 = load i32, i32* @FALSE, align 4
  %157 = load i32*, i32** %17, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = call i32* @svn_client__checkout_internal(i32* %144, i64* %145, i32 %148, i8* %149, i32* %151, i32* %153, i32 %154, i64 %155, i32 %156, i32* %157, %struct.TYPE_19__* %158, i32* %159)
  store i32* %160, i32** %28, align 8
  %161 = load i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)** %25, align 8
  %162 = bitcast i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_18__*, i32*)* %161 to i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  store i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* %162, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %164, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = bitcast i8* %165 to %struct.notification_adjust_baton*
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  store %struct.notification_adjust_baton* %166, %struct.notification_adjust_baton** %168, align 8
  %169 = load i32*, i32** %28, align 8
  %170 = call i32 @SVN_ERR(i32* %169)
  %171 = load i64, i64* @TRUE, align 8
  %172 = load i64*, i64** %11, align 8
  store i64 %171, i64* %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i8*, i8** %24, align 8
  %177 = load i8*, i8** %21, align 8
  %178 = load i64, i64* @TRUE, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 3
  %181 = load i32* (i32)*, i32* (i32)** %180, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %19, align 8
  %186 = call i32* @svn_wc_copy3(i32 %175, i8* %176, i8* %177, i64 %178, i32* (i32)* %181, i32 %184, i32* null, i32* null, i32* %185)
  %187 = call i32 @SVN_ERR(i32* %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %24, align 8
  %192 = load i32, i32* @FALSE, align 4
  %193 = load i32*, i32** %19, align 8
  %194 = load i32*, i32** %19, align 8
  %195 = call i32* @svn_wc__acquire_write_lock(i32* null, i32 %190, i8* %191, i32 %192, i32* %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32* %195)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** %24, align 8
  %201 = load i32, i32* @FALSE, align 4
  %202 = load i32, i32* @FALSE, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 3
  %205 = load i32* (i32)*, i32* (i32)** %204, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %19, align 8
  %210 = call i32* @svn_wc_remove_from_revision_control2(i32 %199, i8* %200, i32 %201, i32 %202, i32* (i32)* %205, i32 %208, i32* %209)
  %211 = call i32 @SVN_ERR(i32* %210)
  %212 = load i8*, i8** %24, align 8
  %213 = load i8*, i8** %21, align 8
  %214 = load i32, i32* @FALSE, align 4
  %215 = load i32*, i32** %19, align 8
  %216 = call i32* @svn_io_file_rename2(i8* %212, i8* %213, i32 %214, i32* %215)
  %217 = call i32 @SVN_ERR(i32* %216)
  br label %237

218:                                              ; preds = %96
  %219 = load i64, i64* @TRUE, align 8
  %220 = load i64*, i64** %11, align 8
  store i64 %219, i64* %220, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i8*, i8** %21, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 5
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 4
  %229 = load i32, i32* @svn_depth_infinity, align 4
  %230 = load i32, i32* @FALSE, align 4
  %231 = load i64, i64* @TRUE, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %233 = load i32*, i32** %19, align 8
  %234 = call i32* @svn_client__copy_foreign(i32* %223, i8* %224, i32* %226, i32* %228, i32 %229, i32 %230, i64 %231, %struct.TYPE_19__* %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32* %234)
  %236 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %236, i32** %10, align 8
  br label %437

237:                                              ; preds = %142
  %238 = load i64, i64* %15, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %318

240:                                              ; preds = %237
  %241 = load i32*, i32** %17, align 8
  %242 = load i32*, i32** %19, align 8
  %243 = call i32* @svn_ra_get_repos_root2(i32* %241, i8** %32, i32* %242)
  %244 = call i32 @SVN_ERR(i32* %243)
  %245 = load i32*, i32** %16, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %247 = load i32*, i32** %17, align 8
  %248 = load i8*, i8** %32, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %250 = load i32*, i32** %19, align 8
  %251 = load i32*, i32** %19, align 8
  %252 = call i32* @resolve_pinned_externals(i32** %29, i32* %245, %struct.TYPE_20__* %246, i32* %247, i8* %248, %struct.TYPE_19__* %249, i32* %250, i32* %251)
  %253 = call i32 @SVN_ERR(i32* %252)
  %254 = load i32*, i32** %19, align 8
  %255 = call i32* @svn_pool_create(i32* %254)
  store i32* %255, i32** %31, align 8
  %256 = load i32*, i32** %19, align 8
  %257 = load i32*, i32** %29, align 8
  %258 = call i32* @apr_hash_first(i32* %256, i32* %257)
  store i32* %258, i32** %30, align 8
  br label %259

259:                                              ; preds = %292, %240
  %260 = load i32*, i32** %30, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %295

262:                                              ; preds = %259
  %263 = load i32*, i32** %30, align 8
  %264 = call i8* @apr_hash_this_key(i32* %263)
  store i8* %264, i8** %35, align 8
  %265 = load i32*, i32** %30, align 8
  %266 = call i32* @apr_hash_this_val(i32* %265)
  store i32* %266, i32** %36, align 8
  %267 = load i32*, i32** %31, align 8
  %268 = call i32 @svn_pool_clear(i32* %267)
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load i8*, i8** %35, align 8
  %273 = load i32*, i32** %31, align 8
  %274 = call i8* @svn_dirent_join(i8* %271, i8* %272, i32* %273)
  store i8* %274, i8** %37, align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load i8*, i8** %37, align 8
  %279 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %280 = load i32*, i32** %36, align 8
  %281 = load i32, i32* @svn_depth_empty, align 4
  %282 = load i64, i64* @TRUE, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 3
  %285 = load i32* (i32)*, i32* (i32)** %284, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load i32*, i32** %31, align 8
  %290 = call i32* @svn_wc_prop_set4(i32 %277, i8* %278, i32 %279, i32* %280, i32 %281, i64 %282, i32* null, i32* (i32)* %285, i32 %288, i32* null, i32* null, i32* %289)
  %291 = call i32 @SVN_ERR(i32* %290)
  br label %292

292:                                              ; preds = %262
  %293 = load i32*, i32** %30, align 8
  %294 = call i32* @apr_hash_next(i32* %293)
  store i32* %294, i32** %30, align 8
  br label %259

295:                                              ; preds = %259
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = load i8*, i8** %21, align 8
  %300 = load i32, i32* @svn_depth_infinity, align 4
  %301 = load i32*, i32** %31, align 8
  %302 = load i32*, i32** %31, align 8
  %303 = call i32* @svn_wc__externals_gather_definitions(i32** %33, i32** %34, i32 %298, i8* %299, i32 %300, i32* %301, i32* %302)
  %304 = call i32 @SVN_ERR(i32* %303)
  %305 = load i32*, i32** %33, align 8
  %306 = load i32*, i32** %34, align 8
  %307 = load i8*, i8** %32, align 8
  %308 = load i8*, i8** %21, align 8
  %309 = load i32, i32* @svn_depth_infinity, align 4
  %310 = load i64*, i64** %11, align 8
  %311 = load i32*, i32** %17, align 8
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %313 = load i32*, i32** %31, align 8
  %314 = call i32* @svn_client__handle_externals(i32* %305, i32* %306, i8* %307, i8* %308, i32 %309, i64* %310, i32* %311, %struct.TYPE_19__* %312, i32* %313)
  %315 = call i32 @SVN_ERR(i32* %314)
  %316 = load i32*, i32** %31, align 8
  %317 = call i32 @svn_pool_destroy(i32* %316)
  br label %318

318:                                              ; preds = %295, %237
  br label %393

319:                                              ; preds = %90
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @svn_node_file, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %392

325:                                              ; preds = %319
  %326 = load i32*, i32** %19, align 8
  %327 = call i32* @svn_stream_buffered(i32* %326)
  store i32* %327, i32** %40, align 8
  %328 = load i32*, i32** %17, align 8
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = load i32*, i32** %19, align 8
  %333 = call i32* @svn_ra_get_path_relative_to_session(i32* %328, i8** %39, i32* %331, i32* %332)
  %334 = call i32 @SVN_ERR(i32* %333)
  %335 = load i32*, i32** %17, align 8
  %336 = load i8*, i8** %39, align 8
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load i32*, i32** %40, align 8
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 2
  %343 = load i32*, i32** %19, align 8
  %344 = call i32* @svn_ra_get_file(i32* %335, i8* %336, i32 %339, i32* %340, i32* %342, i32** %38, i32* %343)
  %345 = call i32 @SVN_ERR(i32* %344)
  %346 = load i32*, i32** %38, align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %348, label %355

348:                                              ; preds = %325
  %349 = load i64, i64* %13, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %348
  %352 = load i32*, i32** %38, align 8
  %353 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %354 = call i32 @svn_hash_sets(i32* %352, i32 %353, i32* null)
  br label %355

355:                                              ; preds = %351, %348, %325
  %356 = load i64, i64* @TRUE, align 8
  %357 = load i64*, i64** %11, align 8
  store i64 %356, i64* %357, align 8
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = load i8*, i8** %21, align 8
  %362 = load i32*, i32** %40, align 8
  %363 = load i32*, i32** %38, align 8
  %364 = load i64, i64* %13, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %355
  %367 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %368 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %367, i32 0, i32 3
  %369 = load i32*, i32** %368, align 8
  br label %371

370:                                              ; preds = %355
  br label %371

371:                                              ; preds = %370, %366
  %372 = phi i32* [ %369, %366 ], [ null, %370 ]
  %373 = load i64, i64* %13, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %371
  %376 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  br label %381

379:                                              ; preds = %371
  %380 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %381

381:                                              ; preds = %379, %375
  %382 = phi i32 [ %378, %375 ], [ %380, %379 ]
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 3
  %385 = load i32* (i32)*, i32* (i32)** %384, align 8
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load i32*, i32** %19, align 8
  %390 = call i32* @svn_wc_add_repos_file4(i32 %360, i8* %361, i32* %362, i32* null, i32* %363, i32* null, i32* %372, i32 %382, i32* (i32)* %385, i32 %388, i32* %389)
  %391 = call i32 @SVN_ERR(i32* %390)
  br label %392

392:                                              ; preds = %381, %319
  br label %393

393:                                              ; preds = %392, %318
  %394 = load i32*, i32** %17, align 8
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 3
  %397 = load i32*, i32** %396, align 8
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %402 = load i64, i64* @TRUE, align 8
  %403 = load i32*, i32** %19, align 8
  %404 = call i32* @svn_client__get_repos_mergeinfo(i32** %20, i32* %394, i32* %397, i32 %400, i32 %401, i64 %402, i32* %403)
  %405 = call i32 @SVN_ERR(i32* %404)
  %406 = load i8*, i8** %21, align 8
  %407 = load i32*, i32** %20, align 8
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %409 = load i32*, i32** %19, align 8
  %410 = call i32* @extend_wc_mergeinfo(i8* %406, i32* %407, %struct.TYPE_19__* %408, i32* %409)
  %411 = call i32 @SVN_ERR(i32* %410)
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 1
  %414 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %413, align 8
  %415 = icmp ne i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)* %414, null
  br i1 %415, label %416, label %435

416:                                              ; preds = %393
  %417 = load i8*, i8** %21, align 8
  %418 = load i32, i32* @svn_wc_notify_add, align 4
  %419 = load i32*, i32** %19, align 8
  %420 = call %struct.TYPE_18__* @svn_wc_create_notify(i8* %417, i32 %418, i32* %419)
  store %struct.TYPE_18__* %420, %struct.TYPE_18__** %41, align 8
  %421 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 0
  store i64 %423, i64* %425, align 8
  %426 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 1
  %428 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*)** %427, align 8
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 0
  %431 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %430, align 8
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %433 = load i32*, i32** %19, align 8
  %434 = call i32 %428(%struct.notification_adjust_baton* %431, %struct.TYPE_18__* %432, i32* %433)
  br label %435

435:                                              ; preds = %416, %393
  %436 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %436, i32** %10, align 8
  br label %437

437:                                              ; preds = %435, %218
  %438 = load i32*, i32** %10, align 8
  ret i32* %438
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_18__* @svn_wc_create_notify_url(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__get_tmpdir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @notification_adjust_func(%struct.notification_adjust_baton*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @svn_client__checkout_internal(i32*, i64*, i32, i8*, i32*, i32*, i32, i64, i32, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32* @svn_wc_copy3(i32, i8*, i8*, i64, i32* (i32)*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock(i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc_remove_from_revision_control2(i32, i8*, i32, i32, i32* (i32)*, i32, i32*) #1

declare dso_local i32* @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local i32* @svn_client__copy_foreign(i32*, i8*, i32*, i32*, i32, i32, i64, %struct.TYPE_19__*, i32*) #1

declare dso_local i32* @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32* @resolve_pinned_externals(i32**, i32*, %struct.TYPE_20__*, i32*, i8*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_wc_prop_set4(i32, i8*, i32, i32*, i32, i64, i32*, i32* (i32)*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_wc__externals_gather_definitions(i32**, i32**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_client__handle_externals(i32*, i32*, i8*, i8*, i32, i64*, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_stream_buffered(i32*) #1

declare dso_local i32* @svn_ra_get_path_relative_to_session(i32*, i8**, i32*, i32*) #1

declare dso_local i32* @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_wc_add_repos_file4(i32, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32* (i32)*, i32, i32*) #1

declare dso_local i32* @svn_client__get_repos_mergeinfo(i32**, i32*, i32*, i32, i32, i64, i32*) #1

declare dso_local i32* @extend_wc_mergeinfo(i8*, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
