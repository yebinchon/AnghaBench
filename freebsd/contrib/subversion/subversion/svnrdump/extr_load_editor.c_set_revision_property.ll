; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_set_revision_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_load_editor.c_set_revision_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_baton = type { i64, i32, i32*, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @set_revision_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_revision_property(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.revision_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.revision_baton*
  store %struct.revision_baton* %9, %struct.revision_baton** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %13 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %16 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @svn_repos__normalize_prop(i32** %6, i32* null, i8* %10, i32* %11, i32 %14, i32 %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %23 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @svn_repos__validate_prop(i8* %20, i32* %21, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %28 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %3
  %32 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %33 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @svn_hash_gets(i32 %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %31
  %41 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %42 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %45 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @apr_pstrdup(i32 %46, i8* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @svn_hash_sets(i32 %43, i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %40, %31
  br label %80

52:                                               ; preds = %3
  %53 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %54 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %59 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @svn_hash_gets(i32 %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %57
  %67 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %68 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %75 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @svn_ra_change_rev_prop2(i32 %71, i32 0, i8* %72, i32* null, i32* %73, i32 %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %66, %57, %52
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %83 = call i32 @strcmp(i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %88 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %92 = call i32 @strcmp(i8* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.revision_baton*, %struct.revision_baton** %7, align 8
  %97 = getelementptr inbounds %struct.revision_baton, %struct.revision_baton* %96, i32 0, i32 2
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %99
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__normalize_prop(i32**, i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @svn_repos__validate_prop(i8*, i32*, i32) #1

declare dso_local i32 @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
