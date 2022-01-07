; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_add_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_add_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i8*, i8*, %struct.edit_baton* }
%struct.edit_baton = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_directory(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.dir_baton*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca %struct.dir_baton*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.dir_baton*
  store %struct.dir_baton* %17, %struct.dir_baton** %13, align 8
  %18 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 2
  %20 = load %struct.edit_baton*, %struct.edit_baton** %19, align 8
  store %struct.edit_baton* %20, %struct.edit_baton** %14, align 8
  %21 = load i8**, i8*** %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %24 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @make_dir_baton(i8** %21, i8* %22, %struct.edit_baton* %23, %struct.dir_baton* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i8**, i8*** %12, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.dir_baton*
  store %struct.dir_baton* %30, %struct.dir_baton** %15, align 8
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %15, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %36 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %37
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_dir_baton(i8**, i8*, %struct.edit_baton*, %struct.dir_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
