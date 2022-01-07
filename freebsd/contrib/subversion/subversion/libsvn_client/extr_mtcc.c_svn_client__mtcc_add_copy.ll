; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_add_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_add_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Path '%s' not found in revision %ld\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Can't add node at '%s'\00", align 1
@OP_ADD_FILE = common dso_local global i32 0, align 4
@OP_ADD_DIR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__mtcc_add_copy(i8* %0, i64 %1, i8* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @svn_relpath_is_canonical(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @svn_relpath_is_canonical(i8* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ false, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @SVN_IS_VALID_REVNUM(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  br label %46

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* %8, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %40, i32* null, i32 %41, i8* %43)
  store i32* %44, i32** %6, align 8
  br label %123

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @mtcc_verify_create(%struct.TYPE_6__* %47, i8* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @svn_ra_check_path(i32 %54, i8* %55, i64 %56, i64* %14, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @svn_node_dir, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %46
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @svn_node_file, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %69 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %68, i32* null, i32 %69, i8* %70, i64 %71)
  store i32* %72, i32** %6, align 8
  br label %123

73:                                               ; preds = %63, %46
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @svn_node_file, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @mtcc_op_find(%struct.TYPE_7__** %12, i32* %13, i8* %74, i32 %77, i32 %78, i32 %79, i32 %83, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92, %73
  %96 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %97 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i8*, i8** %9, align 8
  %99 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %96, i32* null, i32 %97, i8* %98)
  store i32* %99, i32** %6, align 8
  br label %123

100:                                              ; preds = %92
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* @svn_node_file, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @OP_ADD_FILE, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @OP_ADD_DIR, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @apr_pstrdup(i32 %114, i8* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %122, i32** %6, align 8
  br label %123

123:                                              ; preds = %108, %95, %67, %39
  %124 = load i32*, i32** %6, align 8
  ret i32* %124
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mtcc_verify_create(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i64, i64*, i32*) #1

declare dso_local i32 @mtcc_op_find(%struct.TYPE_7__**, i32*, i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
