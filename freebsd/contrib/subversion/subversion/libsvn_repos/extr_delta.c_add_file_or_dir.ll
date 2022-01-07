; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_add_file_or_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_add_file_or_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__*, i32, i32, i32 (i32*, i32, i8*, i32, i32*)* }
%struct.TYPE_2__ = type { i32* (i8*, i32, i32*)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i32*)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)* }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.context*, i8*, i32, i8*, i8*, i64, i32*)* @add_file_or_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file_or_dir(%struct.context* %0, i8* %1, i32 %2, i8* %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store %struct.context* %0, %struct.context** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.context*, %struct.context** %9, align 8
  store %struct.context* %21, %struct.context** %16, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br label %27

27:                                               ; preds = %24, %7
  %28 = phi i1 [ false, %7 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load %struct.context*, %struct.context** %9, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 3
  %33 = load i32 (i32*, i32, i8*, i32, i32*)*, i32 (i32*, i32, i8*, i32, i32*)** %32, align 8
  %34 = icmp ne i32 (i32*, i32, i8*, i32, i32*)* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load %struct.context*, %struct.context** %9, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 3
  %38 = load i32 (i32*, i32, i8*, i32, i32*)*, i32 (i32*, i32, i8*, i32, i32*)** %37, align 8
  %39 = load %struct.context*, %struct.context** %9, align 8
  %40 = getelementptr inbounds %struct.context, %struct.context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.context*, %struct.context** %9, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 %38(i32* %17, i32 %41, i8* %42, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %35
  %52 = load %struct.context*, %struct.context** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32* @absent_file_or_dir(%struct.context* %52, i8* %53, i8* %54, i64 %55, i32* %56)
  store i32* %57, i32** %8, align 8
  br label %130

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @svn_node_dir, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load %struct.context*, %struct.context** %16, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32 (i8*, i8*, i32*, i32, i32*, i8**)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)** %67, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 %68(i8* %69, i8* %70, i32* null, i32 %71, i32* %72, i8** %18)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.context*, %struct.context** %16, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @MAYBE_DEMOTE_DEPTH(i32 %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @delta_dirs(%struct.context* %75, i8* %76, i32 %78, i32* null, i8* %79, i8* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.context*, %struct.context** %16, align 8
  %85 = getelementptr inbounds %struct.context, %struct.context* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %87, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32* %88(i8* %89, i32* %90)
  store i32* %91, i32** %8, align 8
  br label %130

92:                                               ; preds = %59
  %93 = load %struct.context*, %struct.context** %16, align 8
  %94 = getelementptr inbounds %struct.context, %struct.context* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32 (i8*, i8*, i32*, i32, i32*, i8**)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)** %96, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 %97(i8* %98, i8* %99, i32* null, i32 %100, i32* %101, i8** %19)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load %struct.context*, %struct.context** %16, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @delta_files(%struct.context* %104, i8* %105, i32* null, i8* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32, i32* @svn_checksum_md5, align 4
  %111 = load %struct.context*, %struct.context** %16, align 8
  %112 = getelementptr inbounds %struct.context, %struct.context* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @svn_fs_file_checksum(i32** %20, i32 %110, i32 %113, i8* %114, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.context*, %struct.context** %16, align 8
  %120 = getelementptr inbounds %struct.context, %struct.context* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32* (i8*, i32, i32*)*, i32* (i8*, i32, i32*)** %122, align 8
  %124 = load i8*, i8** %19, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @svn_checksum_to_cstring(i32* %125, i32* %126)
  %128 = load i32*, i32** %15, align 8
  %129 = call i32* %123(i8* %124, i32 %127, i32* %128)
  store i32* %129, i32** %8, align 8
  br label %130

130:                                              ; preds = %92, %63, %51
  %131 = load i32*, i32** %8, align 8
  ret i32* %131
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @absent_file_or_dir(%struct.context*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @delta_dirs(%struct.context*, i8*, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @MAYBE_DEMOTE_DEPTH(i32) #1

declare dso_local i32 @delta_files(%struct.context*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_checksum_to_cstring(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
