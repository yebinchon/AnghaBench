; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_file_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_file_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.copy_as_changed_baton_t* }
%struct.copy_as_changed_baton_t = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_4__*, i32*)* @copy_as_changed_file_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_as_changed_file_deleted(i8* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.TYPE_4__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.copy_as_changed_baton_t*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %17, align 8
  store %struct.copy_as_changed_baton_t* %18, %struct.copy_as_changed_baton_t** %15, align 8
  %19 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %15, align 8
  %20 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)** %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %15, align 8
  %30 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 %23(i8* %24, i32* %25, i8* %26, i32* %27, i8* %28, %struct.TYPE_5__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %35
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
