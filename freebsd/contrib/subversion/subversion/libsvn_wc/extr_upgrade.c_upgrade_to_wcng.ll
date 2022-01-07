; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_upgrade_to_wcng.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_upgrade_to_wcng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.upgrade_data_t = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@ADM_LOG = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_WC_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [249 x i8] c"Cannot upgrade with existing logs; run a cleanup operation on this working copy using a client version which is compatible with this working copy's format (such as the version you are upgrading from), then retry the upgrade with the current version\00", align 1
@SVN_WC_ENTRY_THIS_DIR = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"This working copy is corrupt and cannot be upgraded. Please check out a new working copy.\00", align 1
@SVN_WC__WCPROPS_LOST = common dso_local global i32 0, align 4
@SVN_WC__WCPROPS_MANY_FILES_VERSION = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i8**, i8*, i32*, i8*, i32, i32, i32, i8*, i32*, %struct.upgrade_data_t*, i32*, i32*)* @upgrade_to_wcng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @upgrade_to_wcng(i8** %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8, %struct.upgrade_data_t* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.upgrade_data_t*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_21__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_22__*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store i8** %0, i8*** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i32* %8, i32** %22, align 8
  store %struct.upgrade_data_t* %9, %struct.upgrade_data_t** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load i32, i32* @ADM_LOG, align 4
  %38 = load i32*, i32** %25, align 8
  %39 = call i8* @svn_wc__adm_child(i8* %36, i32 %37, i32* %38)
  store i8* %39, i8** %26, align 8
  %40 = load i8*, i8** %26, align 8
  %41 = load i32*, i32** %25, align 8
  %42 = call %struct.TYPE_22__* @svn_io_check_path(i8* %40, i64* %27, i32* %41)
  %43 = call i32 @SVN_ERR(%struct.TYPE_22__* %42)
  %44 = load i64, i64* %27, align 8
  %45 = load i64, i64* @svn_node_file, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %12
  %48 = load i32, i32* @SVN_ERR_WC_UNSUPPORTED_FORMAT, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str, i64 0, i64 0))
  %50 = call %struct.TYPE_22__* @svn_error_create(i32 %48, i32* null, i32 %49)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %13, align 8
  br label %195

51:                                               ; preds = %12
  %52 = load i8*, i8** %17, align 8
  %53 = load i32*, i32** %25, align 8
  %54 = call %struct.TYPE_22__* @create_physical_lock(i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(%struct.TYPE_22__* %54)
  %56 = load i8*, i8** %17, align 8
  %57 = load i32*, i32** %25, align 8
  %58 = load i32*, i32** %25, align 8
  %59 = call %struct.TYPE_22__* @svn_wc__read_entries_old(i32** %28, i8* %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(%struct.TYPE_22__* %59)
  %61 = load i32*, i32** %28, align 8
  %62 = load i32, i32* @SVN_WC_ENTRY_THIS_DIR, align 4
  %63 = call %struct.TYPE_21__* @svn_hash_gets(i32* %61, i32 %62)
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %29, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = load i32, i32* %20, align 4
  %67 = load i8*, i8** %21, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = load i32*, i32** %25, align 8
  %70 = load i32*, i32** %25, align 8
  %71 = call %struct.TYPE_22__* @ensure_repos_info(%struct.TYPE_21__* %64, i8* %65, i32 %66, i8* %67, i32* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(%struct.TYPE_22__* %71)
  %73 = load i32*, i32** %22, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_21__* @svn_hash_gets(i32* %73, i32 %76)
  %78 = icmp ne %struct.TYPE_21__* %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %51
  %80 = load i32*, i32** %22, align 8
  %81 = call i32* @apr_hash_pool_get(i32* %80)
  store i32* %81, i32** %34, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = load i32*, i32** %34, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @apr_pstrdup(i32* %83, i32 %86)
  %88 = load i32*, i32** %34, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @apr_pstrdup(i32* %88, i32 %91)
  %93 = call i32 @svn_hash_sets(i32* %82, i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %79, %51
  %95 = load i8*, i8** %17, align 8
  %96 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %97 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %25, align 8
  %100 = call i8* @svn_dirent_get_longest_ancestor(i8* %95, i32 %98, i32* %99)
  store i8* %100, i8** %30, align 8
  %101 = load i8*, i8** %30, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = call i8* @svn_dirent_skip_ancestor(i8* %101, i8* %102)
  store i8* %103, i8** %31, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %106 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %109 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %25, align 8
  %112 = load i32*, i32** %25, align 8
  %113 = call %struct.TYPE_22__* @migrate_text_bases(i32** %32, i8* %104, i32 %107, i32 %110, i32* %111, i32* %112)
  %114 = call i32 @SVN_ERR(%struct.TYPE_22__* %113)
  %115 = load i8**, i8*** %14, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %119 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %122 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %125 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %17, align 8
  %128 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %129 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %28, align 8
  %132 = load i32*, i32** %32, align 8
  %133 = load i32*, i32** %24, align 8
  %134 = load i32*, i32** %25, align 8
  %135 = call %struct.TYPE_22__* @svn_wc__write_upgraded_entries(i8** %115, i8* %116, i32* %117, i32 %120, i32 %123, i32 %126, i8* %127, i32 %130, i32* %131, i32* %132, i32* %133, i32* %134)
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %33, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %137 = icmp ne %struct.TYPE_22__* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %94
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SVN_ERR_WC_CORRUPT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %146 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %147 = call %struct.TYPE_22__* @svn_error_quick_wrap(%struct.TYPE_22__* %145, i32 %146)
  store %struct.TYPE_22__* %147, %struct.TYPE_22__** %13, align 8
  br label %195

148:                                              ; preds = %138, %94
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %150 = call i32 @SVN_ERR(%struct.TYPE_22__* %149)
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @SVN_WC__WCPROPS_LOST, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %151
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* @SVN_WC__WCPROPS_MANY_FILES_VERSION, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i8*, i8** %17, align 8
  %161 = load i32*, i32** %25, align 8
  %162 = load i32*, i32** %25, align 8
  %163 = call %struct.TYPE_22__* @read_many_wcprops(i32** %35, i8* %160, i32* %161, i32* %162)
  %164 = call i32 @SVN_ERR(%struct.TYPE_22__* %163)
  br label %171

165:                                              ; preds = %155
  %166 = load i8*, i8** %17, align 8
  %167 = load i32*, i32** %25, align 8
  %168 = load i32*, i32** %25, align 8
  %169 = call %struct.TYPE_22__* @read_wcprops(i32** %35, i8* %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(%struct.TYPE_22__* %169)
  br label %171

171:                                              ; preds = %165, %159
  %172 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %173 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %31, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load i32*, i32** %35, align 8
  %178 = load i32*, i32** %25, align 8
  %179 = call %struct.TYPE_22__* @upgrade_apply_dav_cache(i32 %174, i8* %175, i32 %176, i32* %177, i32* %178)
  %180 = call i32 @SVN_ERR(%struct.TYPE_22__* %179)
  br label %181

181:                                              ; preds = %171, %151
  %182 = load i8*, i8** %17, align 8
  %183 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %184 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.upgrade_data_t*, %struct.upgrade_data_t** %23, align 8
  %187 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32*, i32** %25, align 8
  %192 = call %struct.TYPE_22__* @migrate_props(i8* %182, i32 %185, i32 %188, i32 %189, i32 %190, i32* %191)
  %193 = call i32 @SVN_ERR(%struct.TYPE_22__* %192)
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %194, %struct.TYPE_22__** %13, align 8
  br label %195

195:                                              ; preds = %181, %144, %47
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  ret %struct.TYPE_22__* %196
}

declare dso_local i8* @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_22__* @create_physical_lock(i8*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__read_entries_old(i32**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @ensure_repos_info(%struct.TYPE_21__*, i8*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i8* @svn_dirent_get_longest_ancestor(i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local %struct.TYPE_22__* @migrate_text_bases(i32**, i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__write_upgraded_entries(i8**, i8*, i32*, i32, i32, i32, i8*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_quick_wrap(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @read_many_wcprops(i32**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @read_wcprops(i32**, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @upgrade_apply_dav_cache(i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @migrate_props(i8*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
