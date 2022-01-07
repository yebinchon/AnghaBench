; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@APR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_3__*, i32*)* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_temp_file(i32** %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @svn_io_open_unique_file3(i32** %8, i32* null, i32* null, i32 %9, i32* %10, i32* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i32**, i32*** %4, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @svn_io_file_write_full(i32* %15, i32 %18, i32 %21, i32* null, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @APR_SET, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @svn_io_file_seek(i32* %26, i32 %27, i32* %7, i32* %28)
  ret i32* %29
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_io_file_seek(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
