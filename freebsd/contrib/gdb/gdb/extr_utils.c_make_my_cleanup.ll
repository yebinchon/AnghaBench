; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_make_my_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_make_my_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i8*, i32*, %struct.cleanup* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cleanup* @make_my_cleanup(%struct.cleanup** %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.cleanup**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.cleanup*, align 8
  store %struct.cleanup** %0, %struct.cleanup*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i64 @xmalloc(i32 24)
  %10 = inttoptr i64 %9 to %struct.cleanup*
  store %struct.cleanup* %10, %struct.cleanup** %7, align 8
  %11 = load %struct.cleanup**, %struct.cleanup*** %4, align 8
  %12 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  store %struct.cleanup* %12, %struct.cleanup** %8, align 8
  %13 = load %struct.cleanup**, %struct.cleanup*** %4, align 8
  %14 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %15 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %16 = getelementptr inbounds %struct.cleanup, %struct.cleanup* %15, i32 0, i32 2
  store %struct.cleanup* %14, %struct.cleanup** %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %19 = getelementptr inbounds %struct.cleanup, %struct.cleanup* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %22 = getelementptr inbounds %struct.cleanup, %struct.cleanup* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %24 = load %struct.cleanup**, %struct.cleanup*** %4, align 8
  store %struct.cleanup* %23, %struct.cleanup** %24, align 8
  %25 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  ret %struct.cleanup* %25
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
