; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_replace_file_or_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_replace_file_or_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__*, i32, i32, i32, i32 (i32*, i32, i8*, i32, i32*)* }
%struct.TYPE_2__ = type { i32* (i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*, i8**)*, i32* (i8*, i32*)*, i32 (i8*, i8*, i32, i32*, i8**)* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.context*, i8*, i32, i8*, i8*, i8*, i64, i32*)* @replace_file_or_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replace_file_or_dir(%struct.context* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.context*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store %struct.context* %0, %struct.context** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %23, i32* %18, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %29, %26, %8
  %33 = phi i1 [ false, %26 ], [ false, %8 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @SVN_ERR_ASSERT(i32 %34)
  %36 = load %struct.context*, %struct.context** %10, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 4
  %38 = load i32 (i32*, i32, i8*, i32, i32*)*, i32 (i32*, i32, i8*, i32, i32*)** %37, align 8
  %39 = icmp ne i32 (i32*, i32, i8*, i32, i32*)* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  %41 = load %struct.context*, %struct.context** %10, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %41, i32 0, i32 4
  %43 = load i32 (i32*, i32, i8*, i32, i32*)*, i32 (i32*, i32, i8*, i32, i32*)** %42, align 8
  %44 = load %struct.context*, %struct.context** %10, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.context*, %struct.context** %10, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 %43(i32* %19, i32 %46, i8* %47, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %40
  %57 = load %struct.context*, %struct.context** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32* @absent_file_or_dir(%struct.context* %57, i8* %58, i8* %59, i64 %60, i32* %61)
  store i32* %62, i32** %9, align 8
  br label %143

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %32
  %65 = load %struct.context*, %struct.context** %10, align 8
  %66 = getelementptr inbounds %struct.context, %struct.context* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @get_path_revision(i32 %67, i8* %68, i32* %69)
  store i32 %70, i32* %18, align 4
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @svn_node_dir, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %64
  %75 = load %struct.context*, %struct.context** %10, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %78, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 %79(i8* %80, i8* %81, i32 %82, i32* %83, i8** %20)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.context*, %struct.context** %10, align 8
  %87 = load i8*, i8** %20, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @MAYBE_DEMOTE_DEPTH(i32 %88)
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @delta_dirs(%struct.context* %86, i8* %87, i32 %89, i8* %90, i8* %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.context*, %struct.context** %10, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %99, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = call i32* %100(i8* %101, i32* %102)
  store i32* %103, i32** %9, align 8
  br label %143

104:                                              ; preds = %64
  %105 = load %struct.context*, %struct.context** %10, align 8
  %106 = getelementptr inbounds %struct.context, %struct.context* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32 (i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i32, i32*, i8**)** %108, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = call i32 %109(i8* %110, i8* %111, i32 %112, i32* %113, i8** %21)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load %struct.context*, %struct.context** %10, align 8
  %117 = load i8*, i8** %21, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = call i32 @delta_files(%struct.context* %116, i8* %117, i8* %118, i8* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i32, i32* @svn_checksum_md5, align 4
  %124 = load %struct.context*, %struct.context** %10, align 8
  %125 = getelementptr inbounds %struct.context, %struct.context* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = load i32*, i32** %17, align 8
  %130 = call i32 @svn_fs_file_checksum(i32** %22, i32 %123, i32 %126, i8* %127, i32 %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  %132 = load %struct.context*, %struct.context** %10, align 8
  %133 = getelementptr inbounds %struct.context, %struct.context* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32* (i8*, i32, i32*)*, i32* (i8*, i32, i32*)** %135, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i32 @svn_checksum_to_cstring(i32* %138, i32* %139)
  %141 = load i32*, i32** %17, align 8
  %142 = call i32* %136(i8* %137, i32 %140, i32* %141)
  store i32* %142, i32** %9, align 8
  br label %143

143:                                              ; preds = %104, %74, %56
  %144 = load i32*, i32** %9, align 8
  ret i32* %144
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @absent_file_or_dir(%struct.context*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @get_path_revision(i32, i8*, i32*) #1

declare dso_local i32 @delta_dirs(%struct.context*, i8*, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @MAYBE_DEMOTE_DEPTH(i32) #1

declare dso_local i32 @delta_files(%struct.context*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_checksum_to_cstring(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
