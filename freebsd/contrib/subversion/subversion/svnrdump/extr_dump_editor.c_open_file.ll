; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, i32, i32 }
%struct.file_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.dir_baton*
  store %struct.dir_baton* %14, %struct.dir_baton** %11, align 8
  %15 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %16 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @dump_pending_dir(i32 %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.file_baton* @make_file_baton(i8* %21, %struct.dir_baton* %22, i32* %23)
  store %struct.file_baton* %24, %struct.file_baton** %12, align 8
  %25 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %26 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %29 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ARE_VALID_COPY_ARGS(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %5
  %34 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %35 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @svn_relpath_basename(i8* %37, i32* null)
  %39 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %40 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @svn_relpath_join(i32 %36, i32 %38, i32 %41)
  %43 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %44 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %46 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %49 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %33, %5
  %51 = load %struct.file_baton*, %struct.file_baton** %12, align 8
  %52 = bitcast %struct.file_baton* %51 to i8*
  %53 = load i8**, i8*** %10, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_pending_dir(i32, i32*) #1

declare dso_local %struct.file_baton* @make_file_baton(i8*, %struct.dir_baton*, i32*) #1

declare dso_local i64 @ARE_VALID_COPY_ARGS(i32, i32) #1

declare dso_local i32 @svn_relpath_join(i32, i32, i32) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
