; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, %struct.TYPE_2__*, i32, i32 (i32)* }
%struct.TYPE_2__ = type { i32* (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.edit_baton*
  store %struct.edit_baton* %7, %struct.edit_baton** %5, align 8
  %8 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %9 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %8, i32 0, i32 3
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %12 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 %10(i32 %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32* (i32, i32*)*, i32* (i32, i32*)** %19, align 8
  %21 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %22 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* %20(i32 %23, i32* %24)
  ret i32* %25
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
