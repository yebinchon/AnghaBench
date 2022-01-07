; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dir_baton* }

@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_dir_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.dir_baton*
  store %struct.dir_baton* %13, %struct.dir_baton** %10, align 8
  %14 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %15 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.dir_baton*, %struct.dir_baton** %17, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %20 = icmp eq %struct.dir_baton* %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %4
  %25 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @dump_pending_dir(%struct.TYPE_2__* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %31

31:                                               ; preds = %24, %4
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @svn_property_kind2(i8* %32)
  %34 = load i64, i64* @svn_prop_regular_kind, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %5, align 8
  br label %71

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %43 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %46 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @apr_pstrdup(i32 %47, i8* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %52 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @svn_string_dup(i32* %50, i32 %53)
  %55 = call i32 @svn_hash_sets(i32 %44, i32 %49, i8* %54)
  br label %66

56:                                               ; preds = %38
  %57 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %58 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %61 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @apr_pstrdup(i32 %62, i8* %63)
  %65 = call i32 @svn_hash_sets(i32 %59, i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %56, %41
  %67 = load i32, i32* @TRUE, align 4
  %68 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %69 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %5, align 8
  br label %71

71:                                               ; preds = %66, %36
  %72 = load i32*, i32** %5, align 8
  ret i32* %72
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_pending_dir(%struct.TYPE_2__*, i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i8*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i8* @svn_string_dup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
