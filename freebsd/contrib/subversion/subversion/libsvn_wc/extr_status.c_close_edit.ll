; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_edit(i8* %0, i32* %1) #0 {
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
  %10 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %14, i32** %3, align 8
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %26 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %29 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %33 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %36 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %39 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %42 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %45 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @svn_wc__internal_walk_status(i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %15, %13
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__internal_walk_status(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
