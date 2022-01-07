; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__ra_session_from_path2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__ra_session_from_path2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_ERR_ENTRY_MISSING_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"'%s' has no URL\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__ra_session_from_path2(i32** %0, %struct.TYPE_4__** %1, i8* %2, i8* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i8*, align 8
  store i32** %0, i32*** %10, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call i32 @svn_client_url_from_path2(i8** %19, i8* %23, i32* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %19, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* @SVN_ERR_ENTRY_MISSING_URL, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %12, align 8
  %35 = call i32* @svn_error_createf(i32 %32, i32* null, i32 %33, i8* %34)
  store i32* %35, i32** %9, align 8
  br label %99

36:                                               ; preds = %8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8*, i8** %13, align 8
  store i8* %40, i8** %22, align 8
  br label %52

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @svn_path_is_url(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = call i32 @svn_dirent_get_absolute(i8** %22, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %51

50:                                               ; preds = %41
  store i8* null, i8** %22, align 8
  br label %51

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i8*, i8** %19, align 8
  %54 = load i8*, i8** %22, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  %57 = zext i1 %56 to i32
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %16, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @svn_client__open_ra_session_internal(i32** %18, i8** %20, i8* %53, i8* %54, i32* null, i32 %57, i32 %60, i32* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** %20, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %52
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 @svn_path_is_url(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i8*, i8** %20, align 8
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %72, %68, %52
  %75 = load i32*, i32** %18, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = call i32 @svn_client__resolve_rev_and_url(%struct.TYPE_4__** %21, i32* %75, i8* %76, i32* %77, i32* %78, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %18, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @svn_ra_reparent(i32* %83, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %18, align 8
  %91 = load i32**, i32*** %10, align 8
  store i32* %90, i32** %91, align 8
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %93 = icmp ne %struct.TYPE_4__** %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %74
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %96, align 8
  br label %97

97:                                               ; preds = %94, %74
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %9, align 8
  br label %99

99:                                               ; preds = %97, %31
  %100 = load i32*, i32** %9, align 8
  ret i32* %100
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_url_from_path2(i8**, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i8*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client__resolve_rev_and_url(%struct.TYPE_4__**, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
