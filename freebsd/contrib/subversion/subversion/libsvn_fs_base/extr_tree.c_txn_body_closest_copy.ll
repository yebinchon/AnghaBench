; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_closest_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_closest_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { i32 }
%struct.closest_copy_args = type { i8*, %struct.TYPE_30__**, i32, i32**, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8*, i32, i64, i32* }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_33__ = type { i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_31__* null, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_31__* (i8*, %struct.TYPE_29__*)* @txn_body_closest_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_31__* @txn_body_closest_copy(i8* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.closest_copy_args*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_31__*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.closest_copy_args*
  store %struct.closest_copy_args* %25, %struct.closest_copy_args** %6, align 8
  %26 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %27 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %26, i32 0, i32 4
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %27, align 8
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %7, align 8
  %29 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %30 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %14, align 8
  %35 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %36 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %35, i32 0, i32 3
  %37 = load i32**, i32*** %36, align 8
  store i32* null, i32** %37, align 8
  %38 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %39 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %38, i32 0, i32 1
  %40 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %39, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %40, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  br label %60

49:                                               ; preds = %2
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @svn_fs_base__rev_get_txn_id(i8** %12, i32* %50, i32 %53, %struct.TYPE_29__* %54, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %49, %45
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @open_path(%struct.TYPE_32__** %10, %struct.TYPE_30__* %61, i8* %62, i32 0, i8* %63, %struct.TYPE_29__* %64, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @svn_fs_base__dag_get_id(i32* %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @examine_copy_inheritance(i8** %13, %struct.TYPE_33__** %14, i32* %74, %struct.TYPE_32__* %75, %struct.TYPE_29__* %76, i32 %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %95

87:                                               ; preds = %60
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %94, %struct.TYPE_31__** %3, align 8
  br label %221

95:                                               ; preds = %87, %60
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %97 = icmp ne %struct.TYPE_33__* %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** %9, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @svn_fs_bdb__get_copy(%struct.TYPE_33__** %14, i32* %99, i8* %100, %struct.TYPE_29__* %101, i32 %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %98, %95
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @svn_fs_base__dag_get_node(i32** %17, i32* %108, i32 %111, %struct.TYPE_29__* %112, i32 %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %17, align 8
  %119 = call i8* @svn_fs_base__dag_get_created_path(i32* %118)
  store i8* %119, i8** %19, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @svn_fs_base__dag_get_revision(i64* %20, i32* %120, %struct.TYPE_29__* %121, i32 %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %130 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %131 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @svn_fs_base__dag_revision_root(i32** %18, i32* %127, i64 %128, %struct.TYPE_29__* %129, i32 %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i32*, i32** %18, align 8
  %138 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %139 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call %struct.TYPE_30__* @make_revision_root(i32* %135, i64 %136, i32* %137, i32 %140)
  store %struct.TYPE_30__* %141, %struct.TYPE_30__** %15, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.TYPE_31__* @get_dag(i32** %16, %struct.TYPE_30__* %142, i8* %143, %struct.TYPE_29__* %144, i32 %147)
  store %struct.TYPE_31__* %148, %struct.TYPE_31__** %22, align 8
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %150 = icmp ne %struct.TYPE_31__* %149, null
  br i1 %150, label %151, label %170

151:                                              ; preds = %107
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SVN_ERR_FS_NOT_DIRECTORY, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157, %151
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %165 = call i32 @svn_error_clear(%struct.TYPE_31__* %164)
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %166, %struct.TYPE_31__** %3, align 8
  br label %221

167:                                              ; preds = %157
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %169 = call %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__* %168)
  store %struct.TYPE_31__* %169, %struct.TYPE_31__** %3, align 8
  br label %221

170:                                              ; preds = %107
  %171 = load i32*, i32** %16, align 8
  %172 = call i64 @svn_fs_base__dag_node_kind(i32* %171)
  %173 = load i64, i64* @svn_node_none, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %170
  %176 = load i32*, i32** %11, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = call i32* @svn_fs_base__dag_get_id(i32* %177)
  %179 = call i32 @svn_fs_base__id_check_related(i32* %176, i32* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %175, %170
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %182, %struct.TYPE_31__** %3, align 8
  br label %221

183:                                              ; preds = %175
  %184 = load i32*, i32** %16, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @svn_fs_base__dag_get_revision(i64* %21, i32* %184, %struct.TYPE_29__* %185, i32 %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load i64, i64* %21, align 8
  %192 = load i64, i64* %20, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %183
  %195 = load i32*, i32** %16, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @svn_fs_base__dag_get_predecessor_id(i32** %23, i32* %195, %struct.TYPE_29__* %196, i32 %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load i32*, i32** %23, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %194
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %205, %struct.TYPE_31__** %3, align 8
  br label %221

206:                                              ; preds = %194
  br label %207

207:                                              ; preds = %206, %183
  %208 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %209 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %19, align 8
  %212 = call i32* @apr_pstrdup(i32 %210, i8* %211)
  %213 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %214 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %213, i32 0, i32 3
  %215 = load i32**, i32*** %214, align 8
  store i32* %212, i32** %215, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %217 = load %struct.closest_copy_args*, %struct.closest_copy_args** %6, align 8
  %218 = getelementptr inbounds %struct.closest_copy_args, %struct.closest_copy_args* %217, i32 0, i32 1
  %219 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %218, align 8
  store %struct.TYPE_30__* %216, %struct.TYPE_30__** %219, align 8
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %220, %struct.TYPE_31__** %3, align 8
  br label %221

221:                                              ; preds = %207, %204, %181, %167, %163, %93
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  ret %struct.TYPE_31__* %222
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__rev_get_txn_id(i8**, i32*, i32, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @open_path(%struct.TYPE_32__**, %struct.TYPE_30__*, i8*, i32, i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i32 @examine_copy_inheritance(i8**, %struct.TYPE_33__**, i32*, %struct.TYPE_32__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @svn_fs_bdb__get_copy(%struct.TYPE_33__**, i32*, i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, i32*, i32, %struct.TYPE_29__*, i32) #1

declare dso_local i8* @svn_fs_base__dag_get_created_path(i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_revision(i64*, i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_revision_root(i32**, i32*, i64, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_30__* @make_revision_root(i32*, i64, i32*, i32) #1

declare dso_local %struct.TYPE_31__* @get_dag(i32**, %struct.TYPE_30__*, i8*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__*) #1

declare dso_local i64 @svn_fs_base__dag_node_kind(i32*) #1

declare dso_local i32 @svn_fs_base__id_check_related(i32*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_predecessor_id(i32**, i32*, %struct.TYPE_29__*, i32) #1

declare dso_local i32* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
