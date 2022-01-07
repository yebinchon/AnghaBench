; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_deleted_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_deleted_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid start revision %ld\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid end revision %ld\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_node_unrelated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_deleted_rev(i32* %0, i8* %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @SVN_IS_VALID_REVNUM(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %10, align 8
  %32 = call i32* @svn_error_createf(i32 %29, i32 0, i32 %30, i64 %31)
  store i32* %32, i32** %7, align 8
  br label %197

33:                                               ; preds = %6
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @SVN_IS_VALID_REVNUM(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* %11, align 8
  %41 = call i32* @svn_error_createf(i32 %38, i32 0, i32 %39, i64 %40)
  store i32* %41, i32** %7, align 8
  br label %197

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %20, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @svn_fs_revision_root(i32** %15, i32* %51, i64 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %15, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @svn_fs_check_path(i64* %18, i32* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* @svn_node_none, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %66 = load i64*, i64** %12, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %7, align 8
  br label %197

68:                                               ; preds = %50
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @svn_fs_revision_root(i32** %16, i32* %69, i64 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %16, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @svn_fs_check_path(i64* %18, i32* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* @svn_node_none, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %68
  %83 = load i32*, i32** %15, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @svn_fs_node_relation(i64* %19, i32* %83, i8* %84, i32* %85, i8* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* @svn_fs_node_unrelated, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %82
  %94 = load i32*, i32** %16, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @svn_fs_closest_copy(i32** %21, i8** %22, i32* %94, i8* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %21, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32*, i32** %21, align 8
  %103 = call i64 @svn_fs_revision_root_revision(i32* %102)
  %104 = load i64, i64* %10, align 8
  %105 = icmp sle i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101, %93
  %107 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %108 = load i64*, i64** %12, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %7, align 8
  br label %197

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %68
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %11, align 8
  %115 = add nsw i64 %113, %114
  %116 = sdiv i64 %115, 2
  store i64 %116, i64* %17, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = call i32* @svn_pool_create(i32* %117)
  store i32* %118, i32** %14, align 8
  br label %119

119:                                              ; preds = %112, %192
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @svn_pool_clear(i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @svn_fs_revision_root(i32** %16, i32* %122, i64 %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i32*, i32** %16, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @svn_fs_check_path(i64* %18, i32* %127, i8* %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* @svn_node_none, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %119
  %136 = load i64, i64* %17, align 8
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %17, align 8
  %139 = add nsw i64 %137, %138
  %140 = sdiv i64 %139, 2
  store i64 %140, i64* %17, align 8
  br label %192

141:                                              ; preds = %119
  %142 = load i32*, i32** %15, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32*, i32** %16, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = call i32 @svn_fs_node_relation(i64* %19, i32* %142, i8* %143, i32* %144, i8* %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* @svn_fs_node_unrelated, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %141
  %153 = load i32*, i32** %16, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 @svn_fs_closest_copy(i32** %23, i8** %24, i32* %153, i8* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %158

158:                                              ; preds = %152, %141
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* @svn_fs_node_unrelated, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = load i32*, i32** %23, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i32*, i32** %23, align 8
  %167 = call i64 @svn_fs_revision_root_revision(i32* %166)
  %168 = load i64, i64* %10, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %165, %158
  %171 = load i64, i64* %17, align 8
  store i64 %171, i64* %11, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %17, align 8
  %174 = add nsw i64 %172, %173
  %175 = sdiv i64 %174, 2
  store i64 %175, i64* %17, align 8
  br label %191

176:                                              ; preds = %165, %162
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* %17, align 8
  %179 = sub nsw i64 %177, %178
  %180 = icmp eq i64 %179, 1
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i64, i64* %11, align 8
  %183 = load i64*, i64** %12, align 8
  store i64 %182, i64* %183, align 8
  br label %193

184:                                              ; preds = %176
  %185 = load i64, i64* %17, align 8
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %11, align 8
  %188 = add nsw i64 %186, %187
  %189 = sdiv i64 %188, 2
  store i64 %189, i64* %17, align 8
  br label %190

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %170
  br label %192

192:                                              ; preds = %191, %135
  br label %119

193:                                              ; preds = %181
  %194 = load i32*, i32** %14, align 8
  %195 = call i32 @svn_pool_destroy(i32* %194)
  %196 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %196, i32** %7, align 8
  br label %197

197:                                              ; preds = %193, %106, %64, %37, %28
  %198 = load i32*, i32** %7, align 8
  ret i32* %198
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_relation(i64*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_closest_copy(i32**, i8**, i32*, i8*, i32*) #1

declare dso_local i64 @svn_fs_revision_root_revision(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
