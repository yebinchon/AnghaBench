; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_maybe_add_with_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_maybe_add_with_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton = type { i64, i32, i32*, i64, i64 }
%struct.revision_baton = type { i32, i32, i64, %struct.parse_baton* }
%struct.parse_baton = type { i32, i32, i32 (i32, i32*, i32)*, i32, i32, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Relative source revision %ld is not available in current repository\00", align 1
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Copy source checksum mismatch on copy from '%s'@%ld\0Ato '%s' in rev based on r%ld\00", align 1
@svn_repos_notify_load_copied_node = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.node_baton*, %struct.revision_baton*, i32*)* @maybe_add_with_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_add_with_history(%struct.node_baton* %0, %struct.revision_baton* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.node_baton*, align 8
  %6 = alloca %struct.revision_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.parse_baton*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.node_baton* %0, %struct.node_baton** %5, align 8
  store %struct.revision_baton* %1, %struct.revision_baton** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %14 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %13, i32 0, i32 3
  %15 = load %struct.parse_baton*, %struct.parse_baton** %14, align 8
  store %struct.parse_baton* %15, %struct.parse_baton** %8, align 8
  %16 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %17 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %22 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %27 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @svn_node_file, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %33 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %36 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_fs_make_file(i32 %34, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %58

41:                                               ; preds = %25
  %42 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %43 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @svn_node_dir, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %49 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %52 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @svn_fs_make_dir(i32 %50, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57, %31
  br label %176

59:                                               ; preds = %20
  %60 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %61 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %60, i32 0, i32 3
  %62 = load %struct.parse_baton*, %struct.parse_baton** %61, align 8
  %63 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %66 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @get_revision_mapping(i32 %64, i64 %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @SVN_IS_VALID_REVNUM(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %59
  %73 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %74 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %77 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %72, %59
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @SVN_IS_VALID_REVNUM(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %86 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %87 = load i64, i64* %10, align 8
  %88 = call i32* @svn_error_createf(i32 %85, i32* null, i32 %86, i64 %87)
  store i32* %88, i32** %4, align 8
  br label %178

89:                                               ; preds = %80
  %90 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %91 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @svn_fs_revision_root(i32** %9, i32 %92, i64 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %98 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %89
  %102 = load i32, i32* @svn_checksum_md5, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %105 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @TRUE, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @svn_fs_file_checksum(i32** %11, i32 %102, i32* %103, i32* %106, i32 %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %112 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @svn_checksum_match(i64 %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %101
  %118 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %119 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %125 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %129 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %132 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32* @svn_checksum_mismatch_err(i64 %120, i32* %121, i32* %122, i32 %123, i32* %126, i64 %127, i32 %130, i32 %133)
  store i32* %134, i32** %4, align 8
  br label %178

135:                                              ; preds = %101
  br label %136

136:                                              ; preds = %135, %89
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %139 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.revision_baton*, %struct.revision_baton** %6, align 8
  %142 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.node_baton*, %struct.node_baton** %5, align 8
  %145 = getelementptr inbounds %struct.node_baton, %struct.node_baton* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @svn_fs_copy(i32* %137, i32* %140, i32 %143, i32 %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  %150 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %151 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %150, i32 0, i32 2
  %152 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %151, align 8
  %153 = icmp ne i32 (i32, i32*, i32)* %152, null
  br i1 %153, label %154, label %175

154:                                              ; preds = %136
  %155 = load i32, i32* @svn_repos_notify_load_copied_node, align 4
  %156 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %157 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32* @svn_repos_notify_create(i32 %155, i32 %158)
  store i32* %159, i32** %12, align 8
  %160 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %161 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %160, i32 0, i32 2
  %162 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %161, align 8
  %163 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %164 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %168 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %162(i32 %165, i32* %166, i32 %169)
  %171 = load %struct.parse_baton*, %struct.parse_baton** %8, align 8
  %172 = getelementptr inbounds %struct.parse_baton, %struct.parse_baton* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @svn_pool_clear(i32 %173)
  br label %175

175:                                              ; preds = %154, %136
  br label %176

176:                                              ; preds = %175, %58
  %177 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %177, i32** %4, align 8
  br label %178

178:                                              ; preds = %176, %117, %84
  %179 = load i32*, i32** %4, align 8
  ret i32* %179
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_make_file(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_make_dir(i32, i32, i32*) #1

declare dso_local i64 @get_revision_mapping(i32, i64) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_checksum_match(i64, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i64, i32*, i32*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @svn_fs_copy(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_repos_notify_create(i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
