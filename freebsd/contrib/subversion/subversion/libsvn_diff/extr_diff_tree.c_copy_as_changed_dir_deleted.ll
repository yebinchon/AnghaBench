; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_dir_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_dir_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.copy_as_changed_baton_t* }
%struct.copy_as_changed_baton_t = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, %struct.TYPE_4__*, i32*)* @copy_as_changed_dir_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_as_changed_dir_deleted(i8* %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_4__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.copy_as_changed_baton_t*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %15, align 8
  store %struct.copy_as_changed_baton_t* %16, %struct.copy_as_changed_baton_t** %13, align 8
  %17 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %13, align 8
  %18 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (i8*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)** %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %13, align 8
  %27 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 %21(i8* %22, i32* %23, i32* %24, i8* %25, %struct.TYPE_5__* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %32
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
