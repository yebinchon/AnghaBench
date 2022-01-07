; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__write_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__write_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SVN_FS_X__FORMAT_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"layout sharded %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__write_format(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @svn_fs_x__path_format(%struct.TYPE_10__* %10, i32* %11)
  store i8* %12, i8** %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 1, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SVN_FS_X__FORMAT_NUMBER, align 4
  %25 = icmp sle i32 %23, %24
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_8__* @svn_stringbuf_createf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @apr_psprintf(i32* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_8__* %35, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %26
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @svn_io_file_create(i8* %45, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %66

52:                                               ; preds = %26
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @svn_io_write_atomic2(i8* %53, i32 %56, i32 %59, i32* null, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %52, %44
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32* @svn_io_set_file_read_only(i8* %67, i32 %68, i32* %69)
  ret i32* %70
}

declare dso_local i8* @svn_fs_x__path_format(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_8__* @svn_stringbuf_createf(i32*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_create(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_write_atomic2(i8*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @svn_io_set_file_read_only(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
