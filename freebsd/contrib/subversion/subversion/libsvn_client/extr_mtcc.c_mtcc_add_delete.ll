; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_mtcc_add_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_mtcc_add_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Can't delete node at '%s' as it does not exist\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't delete node at '%s'\00", align 1
@OP_DELETE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, %struct.TYPE_9__*, i32*)* @mtcc_add_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mtcc_add_delete(i8* %0, i64 %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @svn_relpath_is_canonical(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* @FALSE, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @svn_client__mtcc_check_path(i64* %12, i8* %16, i64 %17, %struct.TYPE_9__* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @svn_node_none, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = call i32* @svn_error_createf(i32 %26, i32* null, i32 %27, i8* %28)
  store i32* %29, i32** %5, align 8
  br label %109

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @SVN_PATH_IS_EMPTY(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i64 @MTCC_UNMODIFIED(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %10, align 8
  br label %100

42:                                               ; preds = %34, %30
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i64, i64* @FALSE, align 8
  %48 = load i64, i64* @TRUE, align 8
  %49 = load i64, i64* @TRUE, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @mtcc_op_find(%struct.TYPE_10__** %10, i64* %11, i8* %43, %struct.TYPE_10__* %46, i64 %47, i64 %48, i64 %49, i32 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %88, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i64, i64* @TRUE, align 8
  %70 = load i64, i64* @FALSE, align 8
  %71 = load i64, i64* @FALSE, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @mtcc_op_find(%struct.TYPE_10__** %10, i64* %11, i8* %65, %struct.TYPE_10__* %68, i64 %69, i64 %70, i64 %71, i32 %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = call i64 @mtcc_op_contains_non_delete(%struct.TYPE_10__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  br label %87

85:                                               ; preds = %80, %64
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %85, %84
  br label %88

88:                                               ; preds = %87, %61, %58, %42
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %96 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i8*, i8** %6, align 8
  %98 = call i32* @svn_error_createf(i32 %95, i32* null, i32 %96, i8* %97)
  store i32* %98, i32** %5, align 8
  br label %109

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %38
  %101 = load i32, i32* @OP_DELETE, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %108, i32** %5, align 8
  br label %109

109:                                              ; preds = %100, %94, %25
  %110 = load i32*, i32** %5, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__mtcc_check_path(i64*, i8*, i64, %struct.TYPE_9__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i64 @MTCC_UNMODIFIED(%struct.TYPE_9__*) #1

declare dso_local i32 @mtcc_op_find(%struct.TYPE_10__**, i64*, i8*, %struct.TYPE_10__*, i64, i64, i64, i32, i32*) #1

declare dso_local i64 @mtcc_op_contains_non_delete(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
