; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_abort_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_abort_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i64, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @abort_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @abort_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.edit_baton*
  store %struct.edit_baton* %8, %struct.edit_baton** %6, align 8
  %9 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %10 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %15 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13, %2
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %3, align 8
  br label %45

25:                                               ; preds = %18
  %26 = load i64, i64* @TRUE, align 8
  %27 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %28 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %30 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %35 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @svn_fs_close_root(i64 %36)
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %40 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @svn_fs_abort_txn(i32 %41, i32* %42)
  %44 = call i32* @svn_error_trace(i32 %43)
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %38, %23
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @svn_fs_close_root(i64) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_fs_abort_txn(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
