; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_build_text_conflict_resolve_items.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_build_text_conflict_resolve_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_diff_conflict_display_latest = common dso_local global i32 0, align 4
@svn_diff_conflict_display_modified = common dso_local global i32 0, align 4
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [132 x i8] c"Conflict on '%s' cannot be resolved to 'theirs-conflict' or 'mine-conflict' because a merged version of the file cannot be created.\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"Conflict on '%s' could not be resolved because the chosen version of the file is not available.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i64*, i32*, i8*, i32*, i32, i8*, i64, i32*, i32, i8*, i32*, i32*)* @build_text_conflict_resolve_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_text_conflict_resolve_items(i32** %0, i64* %1, i32* %2, i8* %3, i32* %4, i32 %5, i8* %6, i64 %7, i32* %8, i32 %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store i32** %0, i32*** %15, align 8
  store i64* %1, i64** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i8* %6, i8** %21, align 8
  store i64 %7, i64* %22, align 8
  store i32* %8, i32** %23, align 8
  store i32 %9, i32* %24, align 4
  store i8* %10, i8** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i8* null, i8** %32, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %33, align 8
  %36 = load i32**, i32*** %15, align 8
  store i32* null, i32** %36, align 8
  %37 = load i64*, i64** %16, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %13
  %40 = load i64, i64* @FALSE, align 8
  %41 = load i64*, i64** %16, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %13
  %43 = load i32*, i32** %17, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = load i32*, i32** %27, align 8
  %47 = load i32*, i32** %27, align 8
  %48 = call i32 @svn_wc__conflict_read_text_conflict(i8** %28, i8** %29, i8** %30, i32* %43, i8* %44, i32* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i64, i64* %22, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i32**, i32*** %15, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i8*, i8** %21, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** %21, align 8
  br label %62

60:                                               ; preds = %52
  %61 = load i8*, i8** %18, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i8* [ %59, %58 ], [ %61, %60 ]
  %64 = load i32*, i32** %26, align 8
  %65 = load i32*, i32** %27, align 8
  %66 = call i32 @save_merge_result(i32** %53, i32* %54, i8* %55, i8* %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %62, %42
  %69 = load i32, i32* %20, align 4
  %70 = icmp eq i32 %69, 130
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %14, align 8
  br label %224

73:                                               ; preds = %68
  %74 = load i32, i32* %20, align 4
  switch i32 %74, label %133 [
    i32 134, label %75
    i32 128, label %77
    i32 131, label %79
    i32 129, label %88
    i32 132, label %88
    i32 133, label %122
    i32 130, label %131
  ]

75:                                               ; preds = %73
  %76 = load i8*, i8** %29, align 8
  store i8* %76, i8** %32, align 8
  br label %138

77:                                               ; preds = %73
  %78 = load i8*, i8** %30, align 8
  store i8* %78, i8** %32, align 8
  br label %138

79:                                               ; preds = %73
  %80 = load i8*, i8** %28, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i8*, i8** %28, align 8
  br label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** %18, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  store i8* %87, i8** %32, align 8
  br label %138

88:                                               ; preds = %73, %73
  %89 = load i32, i32* %20, align 4
  %90 = icmp eq i32 %89, 129
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @svn_diff_conflict_display_latest, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @svn_diff_conflict_display_modified, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  store i32 %96, i32* %34, align 4
  %97 = load i8*, i8** %28, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str, i64 0, i64 0))
  %102 = load i8*, i8** %18, align 8
  %103 = load i32*, i32** %27, align 8
  %104 = call i32 @svn_dirent_local_style(i8* %102, i32* %103)
  %105 = call i32* @svn_error_createf(i32 %100, i32* null, i32 %101, i32 %104)
  store i32* %105, i32** %14, align 8
  br label %224

106:                                              ; preds = %95
  %107 = load i32*, i32** %17, align 8
  %108 = load i8*, i8** %18, align 8
  %109 = load i32, i32* %34, align 4
  %110 = load i32*, i32** %23, align 8
  %111 = load i8*, i8** %29, align 8
  %112 = load i8*, i8** %28, align 8
  %113 = load i8*, i8** %30, align 8
  %114 = load i32, i32* @svn_io_file_del_none, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i8*, i8** %25, align 8
  %117 = load i32*, i32** %27, align 8
  %118 = load i32*, i32** %27, align 8
  %119 = call i32 @merge_showing_conflicts(i8** %32, i32* %107, i8* %108, i32 %109, i32* %110, i8* %111, i8* %112, i8* %113, i32 %114, i32 %115, i8* %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i64, i64* @TRUE, align 8
  store i64 %121, i64* %33, align 8
  br label %138

122:                                              ; preds = %73
  %123 = load i8*, i8** %21, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i8*, i8** %21, align 8
  br label %129

127:                                              ; preds = %122
  %128 = load i8*, i8** %18, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i8* [ %126, %125 ], [ %128, %127 ]
  store i8* %130, i8** %32, align 8
  br label %138

131:                                              ; preds = %73
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %132, i32** %14, align 8
  br label %224

133:                                              ; preds = %73
  %134 = load i32, i32* %20, align 4
  %135 = icmp eq i32 %134, 130
  %136 = zext i1 %135 to i32
  %137 = call i32 @SVN_ERR_ASSERT(i32 %136)
  br label %138

138:                                              ; preds = %133, %129, %106, %86, %77, %75
  %139 = load i8*, i8** %32, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %143 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i8*, i8** %18, align 8
  %145 = load i32*, i32** %27, align 8
  %146 = call i32 @svn_dirent_local_style(i8* %144, i32* %145)
  %147 = call i32* @svn_error_createf(i32 %142, i32* null, i32 %143, i32 %146)
  store i32* %147, i32** %14, align 8
  br label %224

148:                                              ; preds = %138
  %149 = load i32*, i32** %17, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = load i8*, i8** %32, align 8
  %152 = load i64, i64* @FALSE, align 8
  %153 = load i64, i64* @FALSE, align 8
  %154 = load i32*, i32** %26, align 8
  %155 = load i32*, i32** %27, align 8
  %156 = call i32 @svn_wc__wq_build_file_install(i32** %31, i32* %149, i8* %150, i8* %151, i64 %152, i64 %153, i32* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i32**, i32*** %15, align 8
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %31, align 8
  %161 = load i32*, i32** %26, align 8
  %162 = call i32* @svn_wc__wq_merge(i32* %159, i32* %160, i32* %161)
  %163 = load i32**, i32*** %15, align 8
  store i32* %162, i32** %163, align 8
  %164 = load i64, i64* %33, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %148
  %167 = load i32*, i32** %17, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = load i8*, i8** %32, align 8
  %170 = load i32*, i32** %26, align 8
  %171 = load i32*, i32** %27, align 8
  %172 = call i32 @svn_wc__wq_build_file_remove(i32** %31, i32* %167, i8* %168, i8* %169, i32* %170, i32* %171)
  %173 = call i32 @SVN_ERR(i32 %172)
  %174 = load i32**, i32*** %15, align 8
  %175 = load i32*, i32** %174, align 8
  %176 = load i32*, i32** %31, align 8
  %177 = load i32*, i32** %26, align 8
  %178 = call i32* @svn_wc__wq_merge(i32* %175, i32* %176, i32* %177)
  %179 = load i32**, i32*** %15, align 8
  store i32* %178, i32** %179, align 8
  br label %180

180:                                              ; preds = %166, %148
  %181 = load i64*, i64** %16, align 8
  %182 = load i32*, i32** %17, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = load i8*, i8** %29, align 8
  %185 = load i32*, i32** %26, align 8
  %186 = load i32*, i32** %27, align 8
  %187 = call i32 @remove_artifact_file_if_exists(i32** %31, i64* %181, i32* %182, i8* %183, i8* %184, i32* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i32**, i32*** %15, align 8
  %190 = load i32*, i32** %189, align 8
  %191 = load i32*, i32** %31, align 8
  %192 = load i32*, i32** %26, align 8
  %193 = call i32* @svn_wc__wq_merge(i32* %190, i32* %191, i32* %192)
  %194 = load i32**, i32*** %15, align 8
  store i32* %193, i32** %194, align 8
  %195 = load i64*, i64** %16, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = load i8*, i8** %18, align 8
  %198 = load i8*, i8** %30, align 8
  %199 = load i32*, i32** %26, align 8
  %200 = load i32*, i32** %27, align 8
  %201 = call i32 @remove_artifact_file_if_exists(i32** %31, i64* %195, i32* %196, i8* %197, i8* %198, i32* %199, i32* %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  %203 = load i32**, i32*** %15, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = load i32*, i32** %31, align 8
  %206 = load i32*, i32** %26, align 8
  %207 = call i32* @svn_wc__wq_merge(i32* %204, i32* %205, i32* %206)
  %208 = load i32**, i32*** %15, align 8
  store i32* %207, i32** %208, align 8
  %209 = load i64*, i64** %16, align 8
  %210 = load i32*, i32** %17, align 8
  %211 = load i8*, i8** %18, align 8
  %212 = load i8*, i8** %28, align 8
  %213 = load i32*, i32** %26, align 8
  %214 = load i32*, i32** %27, align 8
  %215 = call i32 @remove_artifact_file_if_exists(i32** %31, i64* %209, i32* %210, i8* %211, i8* %212, i32* %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load i32**, i32*** %15, align 8
  %218 = load i32*, i32** %217, align 8
  %219 = load i32*, i32** %31, align 8
  %220 = load i32*, i32** %26, align 8
  %221 = call i32* @svn_wc__wq_merge(i32* %218, i32* %219, i32* %220)
  %222 = load i32**, i32*** %15, align 8
  store i32* %221, i32** %222, align 8
  %223 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %223, i32** %14, align 8
  br label %224

224:                                              ; preds = %180, %141, %131, %99, %71
  %225 = load i32*, i32** %14, align 8
  ret i32* %225
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_text_conflict(i8**, i8**, i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @save_merge_result(i32**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @merge_showing_conflicts(i8**, i32*, i8*, i32, i32*, i8*, i8*, i8*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32*, i8*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @remove_artifact_file_if_exists(i32**, i64*, i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
