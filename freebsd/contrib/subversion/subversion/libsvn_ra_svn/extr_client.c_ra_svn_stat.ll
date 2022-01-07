; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"'stat' not implemented\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(?l)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"wnbr(?c)(?c)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, i32, %struct.TYPE_11__**, i32*)* @ra_svn_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_stat(%struct.TYPE_10__* %0, i8* %1, i32 %2, %struct.TYPE_11__** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i8* @reparent_path(%struct.TYPE_10__* %27, i8* %28, i32* %29)
  store i8* %30, i8** %7, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @svn_ra_svn__write_cmd_stat(i32* %31, i32* %32, i8* %33, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @handle_auth_request(%struct.TYPE_9__* %37, i32* %38)
  %40 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @handle_unsupported_cmd(i32 %39, i32 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @svn_ra_svn__read_cmd_response(i32* %43, i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %13)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %5
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %50, align 8
  br label %81

51:                                               ; preds = %5
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_ra_svn__parse_tuple(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %15, i32* %20, i32* %18, i32* %19, i8** %16, i8** %17)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call %struct.TYPE_11__* @svn_dirent_create(i32* %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %14, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @svn_node_kind_from_word(i8* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %20, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i8*, i8** %16, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @svn_time_from_cstring(i32* %71, i8* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i8*, i8** %17, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %80, align 8
  br label %81

81:                                               ; preds = %51, %49
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %82
}

declare dso_local i8* @reparent_path(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_stat(i32*, i32*, i8*, i32) #1

declare dso_local i32 @handle_unsupported_cmd(i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*, i32**) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32*, i32*, i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_11__* @svn_dirent_create(i32*) #1

declare dso_local i32 @svn_node_kind_from_word(i8*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
