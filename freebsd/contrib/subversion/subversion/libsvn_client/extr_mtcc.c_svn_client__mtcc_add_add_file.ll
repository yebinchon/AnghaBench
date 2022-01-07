; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_add_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_add_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't add file at '%s'\00", align 1
@OP_ADD_FILE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__mtcc_add_add_file(i8* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @svn_relpath_is_canonical(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %5
  %21 = phi i1 [ false, %5 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @mtcc_verify_create(%struct.TYPE_8__* %24, i8* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @SVN_PATH_IS_EMPTY(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = call i64 @MTCC_UNMODIFIED(%struct.TYPE_8__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %12, align 8
  br label %65

40:                                               ; preds = %32, %20
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @mtcc_op_find(%struct.TYPE_9__** %12, i32* %13, i8* %41, %struct.TYPE_9__* %44, i32 %45, i32 %46, i32 %47, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56, %40
  %60 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %7, align 8
  %63 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %62)
  store i32* %63, i32** %6, align 8
  br label %86

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32, i32* @OP_ADD_FILE, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @svn_checksum_dup(i32* %75, i32 %78)
  br label %81

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %74
  %82 = phi i32* [ %79, %74 ], [ null, %80 ]
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32* %82, i32** %84, align 8
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %6, align 8
  br label %86

86:                                               ; preds = %81, %59
  %87 = load i32*, i32** %6, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mtcc_verify_create(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i64 @MTCC_UNMODIFIED(%struct.TYPE_8__*) #1

declare dso_local i32 @mtcc_op_find(%struct.TYPE_9__**, i32*, i8*, %struct.TYPE_9__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_checksum_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
