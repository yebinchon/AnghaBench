; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__set_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__set_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__set_uuid(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %11, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i8* @svn_fs_x__path_uuid(%struct.TYPE_11__* %17, i32* %18)
  store i8* %19, i8** %12, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_9__* @svn_stringbuf_create_empty(i32* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %13, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  %26 = call i8* @svn_uuid_generate(i32* %25)
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = call i8* @svn_uuid_generate(i32* %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %34, i8* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %39, i8* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %43 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %33
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @svn_io_file_create(i8* %47, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %71

54:                                               ; preds = %33
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @svn_fs_x__path_current(%struct.TYPE_11__* %62, i32* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @svn_io_write_atomic2(i8* %55, i32 %58, i32 %61, i32 %64, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %54, %46
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @apr_pstrdup(i32 %74, i8* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* @apr_pstrdup(i32 %81, i8* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local i8* @svn_fs_x__path_uuid(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i8* @svn_uuid_generate(i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_create(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_write_atomic2(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_current(%struct.TYPE_11__*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
