; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { i32 }

@svn_authz_write = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @apply_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.file_baton*, align 8
  %12 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.file_baton*
  store %struct.file_baton* %14, %struct.file_baton** %11, align 8
  %15 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %16 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %15, i32 0, i32 2
  %17 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  store %struct.edit_baton* %17, %struct.edit_baton** %12, align 8
  %18 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %19 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %5
  %23 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %24 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %25 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %28 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @svn_authz_write, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @check_authz(%struct.edit_baton* %23, i32 %26, i32 %29, i32 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* @TRUE, align 8
  %35 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %36 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %22, %5
  %38 = load i32*, i32** %9, align 8
  %39 = load i8**, i8*** %10, align 8
  %40 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %44 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @svn_fs_apply_textdelta(i32* %38, i8** %39, i32 %42, i32 %45, i8* %46, i32* null, i32* %47)
  %49 = call i32* @svn_error_trace(i32 %48)
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_authz(%struct.edit_baton*, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_fs_apply_textdelta(i32*, i8**, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
