; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fputs.c_fputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fputs.c_fputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__suio = type { i64, i32, %struct.__siov* }
%struct.__siov = type { i64, i8* }

@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fputs(i8* noalias %0, i32* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.__suio, align 8
  %8 = alloca %struct.__siov, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds %struct.__siov, %struct.__siov* %8, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = getelementptr inbounds %struct.__siov, %struct.__siov* %8, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.__suio, %struct.__suio* %7, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.__suio, %struct.__suio* %7, i32 0, i32 2
  store %struct.__siov* %8, %struct.__siov** %15, align 8
  %16 = getelementptr inbounds %struct.__suio, %struct.__suio* %7, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @FLOCKFILE_CANCELSAFE(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ORIENT(i32* %19, i32 -1)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @__sfvwrite(i32* %21, %struct.__suio* %7)
  store i32 %22, i32* %6, align 4
  %23 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.__siov, %struct.__siov* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @INT_MAX, align 8
  br label %36

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.__siov, %struct.__siov* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i64 [ %32, %31 ], [ %35, %33 ]
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @FLOCKFILE_CANCELSAFE(i32*) #1

declare dso_local i32 @ORIENT(i32*, i32) #1

declare dso_local i32 @__sfvwrite(i32*, %struct.__suio*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
