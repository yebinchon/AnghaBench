; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_close_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_close_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, %struct.dir_baton* }

@svn_node_action_change = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_directory(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dir_baton*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.dir_baton*
  store %struct.dir_baton* %10, %struct.dir_baton** %5, align 8
  %11 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %12 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %16 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %17 = icmp eq %struct.dir_baton* %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @dump_pending_dir(%struct.TYPE_3__* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %2
  %28 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %29 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 3
  %35 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %36 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %39 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %42 = load i32, i32* @svn_node_action_change, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @dump_node(i32* %34, %struct.TYPE_3__* %37, i32 %40, %struct.dir_baton* %41, i32* null, i32 %42, i32 %43, i32* null, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %49 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %50 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store %struct.dir_baton* %48, %struct.dir_baton** %52, align 8
  %53 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %54 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @dump_pending_dir(%struct.TYPE_3__* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %32, %27, %2
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %62 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @apr_hash_first(i32* %60, i32 %63)
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %87, %59
  %66 = load i32*, i32** %6, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @apr_hash_this_key(i32* %69)
  store i8* %70, i8** %8, align 8
  %71 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %72 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @dump_node_delete(i32 %75, i8* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %81 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @svn_stream_puts(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %86 = call i32 @SVN_ERR(i32 %85)
  br label %87

87:                                               ; preds = %68
  %88 = load i32*, i32** %6, align 8
  %89 = call i32* @apr_hash_next(i32* %88)
  store i32* %89, i32** %6, align 8
  br label %65

90:                                               ; preds = %65
  %91 = load %struct.dir_baton*, %struct.dir_baton** %5, align 8
  %92 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @apr_hash_clear(i32 %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %95
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_pending_dir(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @dump_node(i32*, %struct.TYPE_3__*, i32, %struct.dir_baton*, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @dump_node_delete(i32, i8*, i32*) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @apr_hash_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
