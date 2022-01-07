; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_symfile_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_xcoff_symfile_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32*, i32 }

@inclTable = common dso_local global i32* null, align 8
@inclDepth = common dso_local global i64 0, align 8
@inclLength = common dso_local global i64 0, align 8
@inclIndx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @xcoff_symfile_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcoff_symfile_finish(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %3 = load %struct.objfile*, %struct.objfile** %2, align 8
  %4 = getelementptr inbounds %struct.objfile, %struct.objfile* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.objfile*, %struct.objfile** %2, align 8
  %9 = getelementptr inbounds %struct.objfile, %struct.objfile* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.objfile*, %struct.objfile** %2, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @xmfree(i32 %10, i32* %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load i32*, i32** @inclTable, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** @inclTable, align 8
  %20 = call i32 @xfree(i32* %19)
  store i32* null, i32** @inclTable, align 8
  br label %21

21:                                               ; preds = %18, %15
  store i64 0, i64* @inclDepth, align 8
  store i64 0, i64* @inclLength, align 8
  store i64 0, i64* @inclIndx, align 8
  ret void
}

declare dso_local i32 @xmfree(i32, i32*) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
