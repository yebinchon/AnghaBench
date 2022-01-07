; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_copy_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_copy_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__*, i32, i32* }
%struct.TYPE_21__ = type { i32 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Cannot copy between two different filesystems ('%s' and '%s')\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Copy from mutable tree not currently supported\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Copy immutable tree not supported\00", align 1
@svn_fs_x__dag_path_last_optional = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_path_change_replace = common dso_local global i64 0, align 8
@svn_fs_path_change_add = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_19__*, i8*, %struct.TYPE_19__*, i8*, i32, i32*)* @copy_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_helper(%struct.TYPE_19__* %0, i8* %1, %struct.TYPE_19__* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %24 = call i32 @svn_fs_x__root_txn_id(%struct.TYPE_19__* %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @x_same_p(i32* %17, %struct.TYPE_20__* %27, %struct.TYPE_20__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @svn_error_createf(i32 %37, i32* null, i32 %38, i32 %43, i32 %48)
  store i32* %49, i32** %7, align 8
  br label %218

50:                                               ; preds = %6
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %57 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32* @svn_error_create(i32 %56, i32* null, i32 %57)
  store i32* %58, i32** %7, align 8
  br label %218

59:                                               ; preds = %50
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %66 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32* @svn_error_create(i32 %65, i32* null, i32 %66)
  store i32* %67, i32** %7, align 8
  br label %218

68:                                               ; preds = %59
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @svn_fs_x__get_dag_node(i32** %14, %struct.TYPE_19__* %69, i8* %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @svn_fs_x__dag_path_last_optional, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_18__** %15, %struct.TYPE_19__* %75, i8* %76, i32 %77, i32 %78, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %68
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load i32, i32* @TRUE, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @svn_fs_x__allow_locked_operation(i8* %90, %struct.TYPE_20__* %93, i32 %94, i32 %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %99

99:                                               ; preds = %89, %68
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @svn_fs_x__dag_get_id(i32* %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @svn_fs_x__dag_get_id(i32* %109)
  %111 = call i64 @svn_fs_x__id_eq(i32 %106, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %114, i32** %7, align 8
  br label %218

115:                                              ; preds = %104, %99
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %214, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i64, i64* @svn_fs_path_change_replace, align 8
  store i64 %126, i64* %18, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @svn_fs_x__dag_get_mergeinfo_count(i32* %129)
  store i64 %130, i64* %21, align 8
  br label %133

131:                                              ; preds = %120
  %132 = load i64, i64* @svn_fs_path_change_add, align 8
  store i64 %132, i64* %18, align 8
  store i64 0, i64* %21, align 8
  br label %133

133:                                              ; preds = %131, %125
  %134 = load i32*, i32** %14, align 8
  %135 = call i64 @svn_fs_x__dag_get_mergeinfo_count(i32* %134)
  store i64 %135, i64* %22, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @svn_fs_x__make_path_mutable(%struct.TYPE_19__* %136, %struct.TYPE_21__* %139, i8* %140, i32* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i8*, i8** %9, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = call i8* @svn_fs__canonicalize_abspath(i8* %145, i32* %146)
  store i8* %147, i8** %20, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %20, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = call i32 @svn_fs_x__dag_copy(i32 %152, i32 %155, i32* %156, i32 %157, i32 %160, i8* %161, i32 %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* @svn_fs_path_change_add, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %133
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %172 = load i32*, i32** %13, align 8
  %173 = call i32 @parent_path_path(%struct.TYPE_18__* %171, i32* %172)
  %174 = call i32 @svn_fs_x__invalidate_dag_cache(%struct.TYPE_19__* %170, i32 %173)
  br label %175

175:                                              ; preds = %169, %133
  %176 = load i64, i64* %21, align 8
  %177 = load i64, i64* %22, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = load i64, i64* %22, align 8
  %184 = load i64, i64* %21, align 8
  %185 = sub nsw i64 %183, %184
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @increment_mergeinfo_up_tree(%struct.TYPE_21__* %182, i64 %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  br label %189

189:                                              ; preds = %179, %175
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = call i32 @svn_fs_x__get_dag_node(i32** %19, %struct.TYPE_19__* %190, i8* %191, i32* %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load i32, i32* @FALSE, align 4
  %203 = load i32, i32* @FALSE, align 4
  %204 = load i32, i32* @FALSE, align 4
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 @svn_fs_x__dag_node_kind(i32* %205)
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %20, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = call i32 @add_change(%struct.TYPE_20__* %198, i32 %199, i8* %200, i64 %201, i32 %202, i32 %203, i32 %204, i32 %206, i32 %209, i8* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  br label %216

214:                                              ; preds = %115
  %215 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %216

216:                                              ; preds = %214, %189
  %217 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %217, i32** %7, align 8
  br label %218

218:                                              ; preds = %216, %113, %64, %55, %36
  %219 = load i32*, i32** %7, align 8
  ret i32* %219
}

declare dso_local i32 @svn_fs_x__root_txn_id(%struct.TYPE_19__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @x_same_p(i32*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_fs_x__get_dag_node(i32**, %struct.TYPE_19__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_18__**, %struct.TYPE_19__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__allow_locked_operation(i8*, %struct.TYPE_20__*, i32, i32, i32*) #1

declare dso_local i64 @svn_fs_x__id_eq(i32, i32) #1

declare dso_local i32 @svn_fs_x__dag_get_id(i32*) #1

declare dso_local i64 @svn_fs_x__dag_get_mergeinfo_count(i32*) #1

declare dso_local i32 @svn_fs_x__make_path_mutable(%struct.TYPE_19__*, %struct.TYPE_21__*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_copy(i32, i32, i32*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__invalidate_dag_cache(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @increment_mergeinfo_up_tree(%struct.TYPE_21__*, i64, i32*) #1

declare dso_local i32 @add_change(%struct.TYPE_20__*, i32, i8*, i64, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_node_kind(i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
