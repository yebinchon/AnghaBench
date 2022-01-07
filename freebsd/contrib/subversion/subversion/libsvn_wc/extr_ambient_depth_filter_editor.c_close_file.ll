; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32, i8*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file_baton*, align 8
  %9 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.file_baton*
  store %struct.file_baton* %11, %struct.file_baton** %8, align 8
  %12 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %13 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %12, i32 0, i32 2
  %14 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  store %struct.edit_baton* %14, %struct.edit_baton** %9, align 8
  %15 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %16 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %4, align 8
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32* (i32, i8*, i32*)*, i32* (i32, i8*, i32*)** %25, align 8
  %27 = load %struct.file_baton*, %struct.file_baton** %8, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* %26(i32 %29, i8* %30, i32* %31)
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i32*, i32** %4, align 8
  ret i32* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
