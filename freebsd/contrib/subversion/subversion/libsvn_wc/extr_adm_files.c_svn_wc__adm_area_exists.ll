; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__adm_area_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__adm_area_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_wc__adm_area_exists(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @svn_wc__adm_child(i8* %9, i32* null, i32* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @svn_io_check_path(i8* %12, i64* %7, i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_error_clear(i32* %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @svn_node_none, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i8* @svn_wc__adm_child(i8*, i32*, i32*) #1

declare dso_local i32* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
