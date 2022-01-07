; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, %struct.edit_baton* }
%struct.edit_baton = type { i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_node_action_replace = common dso_local global i32 0, align 4
@svn_node_action_add = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.dir_baton*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.dir_baton*
  store %struct.dir_baton* %18, %struct.dir_baton** %13, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 2
  %21 = load %struct.edit_baton*, %struct.edit_baton** %20, align 8
  store %struct.edit_baton* %21, %struct.edit_baton** %14, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %16, align 8
  %23 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @svn_hash_gets(i32 %25, i8* %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @ARE_VALID_COPY_ARGS(i8* %28, i32 %29)
  store i64 %30, i64* %16, align 8
  %31 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @svn_node_file, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* @svn_node_action_replace, align 4
  br label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @svn_node_action_add, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ null, %47 ]
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @dump_node(%struct.edit_baton* %31, i8* %32, i32 %33, i32 %41, i64 %42, i8* %49, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i8*, i8** %15, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %65 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @svn_hash_sets(i32 %66, i8* %67, i32* null)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i8*, i8** %15, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %69
  %73 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %74 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %79 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %84 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @TRUE, align 4
  %89 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %90 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %82, %77, %72, %69
  %92 = load i8**, i8*** %12, align 8
  store i8* null, i8** %92, align 8
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local i64 @ARE_VALID_COPY_ARGS(i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_node(%struct.edit_baton*, i8*, i32, i32, i64, i8*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
