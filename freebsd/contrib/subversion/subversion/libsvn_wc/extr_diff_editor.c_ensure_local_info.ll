; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_ensure_local_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_ensure_local_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton_t*, i32*)* @ensure_local_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ensure_local_info(%struct.dir_baton_t* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dir_baton_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.dir_baton_t* %0, %struct.dir_baton_t** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %8 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %12, i32** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %15 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %14, i32 0, i32 3
  %16 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %17 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %22 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %26 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @svn_wc__db_read_children_info(i64* %15, i32** %6, i32 %20, i32 %23, i32 %24, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %13, %11
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_children_info(i64*, i32**, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
