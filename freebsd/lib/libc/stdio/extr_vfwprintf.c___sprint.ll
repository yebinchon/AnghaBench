; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c___sprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c___sprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__suio = type { i64, i64, %struct.__siov* }
%struct.__siov = type { i32, i64 }

@WEOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.__suio*, i32)* @__sprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sprint(i32* %0, %struct.__suio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.__suio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__siov*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.__suio* %1, %struct.__suio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.__suio*, %struct.__suio** %6, align 8
  %13 = getelementptr inbounds %struct.__suio, %struct.__suio* %12, i32 0, i32 2
  %14 = load %struct.__siov*, %struct.__siov** %13, align 8
  store %struct.__siov* %14, %struct.__siov** %8, align 8
  br label %15

15:                                               ; preds = %49, %3
  %16 = load %struct.__suio*, %struct.__suio** %6, align 8
  %17 = getelementptr inbounds %struct.__suio, %struct.__suio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.__siov*, %struct.__siov** %8, align 8
  %22 = getelementptr inbounds %struct.__siov, %struct.__siov* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load %struct.__siov*, %struct.__siov** %8, align 8
  %26 = getelementptr inbounds %struct.__siov, %struct.__siov* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %45, %20
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @__xfputwc(i32 %37, i32* %38, i32 %39)
  %41 = load i64, i64* @WEOF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %61

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %28

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.__suio*, %struct.__suio** %6, align 8
  %53 = getelementptr inbounds %struct.__suio, %struct.__suio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.__siov*, %struct.__siov** %8, align 8
  %57 = getelementptr inbounds %struct.__siov, %struct.__siov* %56, i32 1
  store %struct.__siov* %57, %struct.__siov** %8, align 8
  br label %15

58:                                               ; preds = %15
  %59 = load %struct.__suio*, %struct.__suio** %6, align 8
  %60 = getelementptr inbounds %struct.__suio, %struct.__suio* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %43
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @__xfputwc(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
