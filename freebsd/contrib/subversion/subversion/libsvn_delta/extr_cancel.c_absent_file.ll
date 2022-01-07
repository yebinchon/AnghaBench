; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_absent_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_absent_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 (i32)* }
%struct.TYPE_2__ = type { i32* (i8*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @absent_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @absent_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.file_baton*, align 8
  %8 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.file_baton*
  store %struct.file_baton* %10, %struct.file_baton** %7, align 8
  %11 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %12 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %11, i32 0, i32 1
  %13 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  store %struct.edit_baton* %13, %struct.edit_baton** %8, align 8
  %14 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %15 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %14, i32 0, i32 2
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %18 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.edit_baton*, %struct.edit_baton** %8, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32* (i8*, i32, i32*)*, i32* (i8*, i32, i32*)** %25, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.file_baton*, %struct.file_baton** %7, align 8
  %29 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* %26(i8* %27, i32 %30, i32* %31)
  ret i32* %32
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
