; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32, i32 }

@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.file_baton*
  store %struct.file_baton* %12, %struct.file_baton** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @svn_property_kind2(i8* %13)
  %15 = load i64, i64* @svn_prop_regular_kind, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %24 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %27 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @apr_pstrdup(i32 %28, i8* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %33 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @svn_string_dup(i32* %31, i32 %34)
  %36 = call i32 @svn_hash_sets(i32 %25, i32 %30, i8* %35)
  br label %47

37:                                               ; preds = %19
  %38 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %39 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @apr_pstrdup(i32 %43, i8* %44)
  %46 = call i32 @svn_hash_sets(i32 %40, i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %37, %22
  %48 = load i32, i32* @TRUE, align 4
  %49 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %50 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %47, %17
  %53 = load i32*, i32** %5, align 8
  ret i32* %53
}

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
