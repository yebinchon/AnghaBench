; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc_conflict_description_create_prop2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc_conflict_description_create_prop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i8* }

@svn_wc_conflict_kind_property = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @svn_wc_conflict_description_create_prop2(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @svn_dirent_is_absolute(i8* %10)
  %12 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %11)
  %13 = load i32*, i32** %8, align 8
  %14 = call %struct.TYPE_4__* @apr_pcalloc(i32* %13, i32 24)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @apr_pstrdup(i32* %15, i8* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @svn_wc_conflict_kind_property, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @apr_pstrdup(i32* %26, i8* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %31
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
