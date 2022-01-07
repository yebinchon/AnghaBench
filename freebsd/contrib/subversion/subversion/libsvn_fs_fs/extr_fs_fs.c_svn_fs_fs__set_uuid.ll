; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__set_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__set_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_FS_FS__MIN_INSTANCE_ID_FORMAT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__set_uuid(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i8* @path_uuid(%struct.TYPE_10__* %15, i32* %16)
  store i8* %17, i8** %10, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.TYPE_9__* @svn_stringbuf_create_empty(i32* %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = call i8* @svn_uuid_generate(i32* %23)
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = call i8* @svn_uuid_generate(i32* %29)
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %32, i8* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %36 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_FS_FS__MIN_INSTANCE_ID_FORMAT, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %43, i8* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %31
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @svn_fs_fs__path_current(%struct.TYPE_10__* %56, i32* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @svn_io_write_atomic2(i8* %49, i32 %52, i32 %55, i32 %58, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @apr_pstrdup(i32 %67, i8* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SVN_FS_FS__MIN_INSTANCE_ID_FORMAT, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %48
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i8* @apr_pstrdup(i32 %80, i8* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %91

85:                                               ; preds = %48
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %85, %77
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %92
}

declare dso_local i8* @path_uuid(%struct.TYPE_10__*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i8* @svn_uuid_generate(i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_write_atomic2(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_current(%struct.TYPE_10__*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
