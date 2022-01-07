; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_apply_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_apply_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 (i32)* }
%struct.TYPE_2__ = type { i32* (i32, i8*, i32*, i32*, i8**)* }

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
  %16 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %15, i32 0, i32 1
  %17 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  store %struct.edit_baton* %17, %struct.edit_baton** %12, align 8
  %18 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %19 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %18, i32 0, i32 2
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32* (i32, i8*, i32*, i32*, i8**)*, i32* (i32, i8*, i32*, i32*, i8**)** %29, align 8
  %31 = load %struct.file_baton*, %struct.file_baton** %11, align 8
  %32 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = call i32* %30(i32 %33, i8* %34, i32* %35, i32* %36, i8** %37)
  ret i32* %38
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
