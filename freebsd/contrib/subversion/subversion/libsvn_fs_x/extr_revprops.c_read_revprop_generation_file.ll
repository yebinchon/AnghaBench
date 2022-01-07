; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_revprop_generation_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_read_revprop_generation_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@GENERATION_READ_RETRY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @read_revprop_generation_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_revprop_generation_file(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @svn_pool_create(i32* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @svn_fs_x__path_revprop_generation(i32* %15, i32* %16)
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GENERATION_READ_RETRY_COUNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_error_clear(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @svn_pool_clear(i32* %25)
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @svn_stringbuf_from_file2(%struct.TYPE_4__** %11, i8* %27, i32* %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = call i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_4__* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @svn_cstring_atoi64(i32* %35, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %46

41:                                               ; preds = %22
  %42 = call i32 @apr_sleep(i32 0)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %18

46:                                               ; preds = %32, %18
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @svn_pool_destroy(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32* @svn_error_trace(i32* %49)
  ret i32* %50
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_fs_x__path_revprop_generation(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_stringbuf_from_file2(%struct.TYPE_4__**, i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_4__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i32*, i32) #1

declare dso_local i32 @apr_sleep(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
