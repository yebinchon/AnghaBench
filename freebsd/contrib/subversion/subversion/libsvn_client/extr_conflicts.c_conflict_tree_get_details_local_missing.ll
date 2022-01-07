; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_details_local_missing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_details_local_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.conflict_tree_local_missing_details*, i32, i32 }
%struct.conflict_tree_local_missing_details = type { i8*, i32*, i32*, i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @conflict_tree_get_details_local_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_details_local_missing(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.conflict_tree_local_missing_details*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_19__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %8, i64* %12, i32* null, %struct.TYPE_18__* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %9, i64* %13, i32* null, %struct.TYPE_18__* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @svn_dirent_basename(i32 %44, i32* %45)
  store i8* %46, i8** %17, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @svn_dirent_dirname(i32 %52, i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @svn_wc__node_get_repos_info(i64* %11, i8** %10, i8** %23, i8** %24, i32 %49, i32 %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %3
  %63 = load i8*, i8** %9, align 8
  br label %66

64:                                               ; preds = %3
  %65 = load i8*, i8** %8, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  store i8* %67, i8** %21, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* %13, align 8
  br label %75

73:                                               ; preds = %66
  %74 = load i64, i64* %12, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  store i64 %76, i64* %22, align 8
  %77 = load i8*, i8** %21, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load i8*, i8** %21, align 8
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i8*, i8** %8, align 8
  br label %93

91:                                               ; preds = %83
  %92 = load i8*, i8** %9, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i8* [ %90, %89 ], [ %92, %91 ]
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* %12, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i64, i64* %13, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @find_related_node(i8** %21, i64* %22, i8* %84, i64 %85, i8* %94, i64 %103, %struct.TYPE_18__* %104, %struct.TYPE_17__* %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  br label %110

110:                                              ; preds = %102, %79, %75
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i8*, i8** %21, align 8
  %116 = load i64, i64* %22, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @find_revision_for_suspected_deletion(i64* %14, i8** %15, i32* %16, i32** %19, %struct.TYPE_18__* %111, i8* %112, i8* %113, i64 %114, i32 0, i8* %115, i64 %116, %struct.TYPE_17__* %117, i32 %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %200

127:                                              ; preds = %110
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %129 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_18__* %128)
  store i8* %129, i8** %25, align 8
  %130 = load i8*, i8** %23, align 8
  %131 = load i8*, i8** %21, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i8* @svn_path_url_add_component2(i8* %130, i8* %131, i32* %132)
  store i8* %133, i8** %27, align 8
  %134 = load i8*, i8** %27, align 8
  %135 = load i32, i32* @FALSE, align 4
  %136 = load i32, i32* @FALSE, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @svn_client__open_ra_session_internal(i32** %26, i8** %28, i8* %134, i32* null, i32* null, i32 %135, i32 %136, %struct.TYPE_17__* %137, i32* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  %142 = load i8*, i8** %21, align 8
  %143 = load i64, i64* %22, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i8*, i8** %23, align 8
  %147 = load i8*, i8** %24, align 8
  %148 = load i32*, i32** %26, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @find_nearest_yca(%struct.TYPE_19__** %29, i8* %142, i64 %143, i8* %144, i64 %145, i8* %146, i8* %147, i32* %148, %struct.TYPE_17__* %149, i32* %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %155 = icmp eq %struct.TYPE_19__* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %127
  %157 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %157, i32** %4, align 8
  br label %234

158:                                              ; preds = %127
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %30, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %22, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load i64, i64* %22, align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i64, i64* %22, align 8
  %170 = sub nsw i64 %169, 1
  br label %172

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %168
  %173 = phi i64 [ %170, %168 ], [ 0, %171 ]
  store i64 %173, i64* %30, align 8
  br label %174

174:                                              ; preds = %172, %158
  %175 = load i32*, i32** %26, align 8
  %176 = load i64, i64* %22, align 8
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @svn_ra_check_path(i32* %175, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %176, i32* %31, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load i8*, i8** %21, align 8
  %181 = load i64, i64* %22, align 8
  %182 = load i32, i32* %31, align 4
  %183 = load i64, i64* %30, align 8
  %184 = load i8*, i8** %25, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = load i8*, i8** %24, align 8
  %187 = load i32*, i32** %26, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @find_moves_in_natural_history(i32** %20, i8* %180, i64 %181, i32 %182, i64 %183, i8* %184, i8* %185, i8* %186, i32* %187, %struct.TYPE_17__* %188, i32 %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load i32*, i32** %20, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %174
  %198 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %198, i32** %4, align 8
  br label %234

199:                                              ; preds = %174
  br label %200

200:                                              ; preds = %199, %110
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call %struct.conflict_tree_local_missing_details* @apr_pcalloc(i32 %203, i32 40)
  store %struct.conflict_tree_local_missing_details* %204, %struct.conflict_tree_local_missing_details** %18, align 8
  %205 = load i64, i64* %14, align 8
  %206 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %207 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %206, i32 0, i32 4
  store i64 %205, i64* %207, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %210 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load i64, i64* %14, align 8
  %212 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %200
  %215 = load i8*, i8** %10, align 8
  %216 = load i8*, i8** %17, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @svn_relpath_join(i8* %215, i8* %216, i32 %219)
  %221 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %222 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %214, %200
  %224 = load i32*, i32** %19, align 8
  %225 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %226 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %225, i32 0, i32 2
  store i32* %224, i32** %226, align 8
  %227 = load i32*, i32** %20, align 8
  %228 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %229 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %228, i32 0, i32 1
  store i32* %227, i32** %229, align 8
  %230 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %18, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  store %struct.conflict_tree_local_missing_details* %230, %struct.conflict_tree_local_missing_details** %232, align 8
  %233 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %233, i32** %4, align 8
  br label %234

234:                                              ; preds = %223, %197, %156
  %235 = load i32*, i32** %4, align 8
  ret i32* %235
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i64*, i32*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i32*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_basename(i32, i32*) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i64*, i8**, i8**, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i32, i32*) #1

declare dso_local i32 @find_related_node(i8**, i64*, i8*, i64, i8*, i64, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @find_revision_for_suspected_deletion(i64*, i8**, i32*, i32**, %struct.TYPE_18__*, i8*, i8*, i64, i32, i8*, i64, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_18__*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @find_nearest_yca(%struct.TYPE_19__**, i8*, i64, i8*, i64, i8*, i8*, i32*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @find_moves_in_natural_history(i32**, i8*, i64, i32, i64, i8*, i8*, i8*, i32*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local %struct.conflict_tree_local_missing_details* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @svn_relpath_join(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
