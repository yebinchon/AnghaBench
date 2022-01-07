; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32*, i32*, %struct.ck_malloc*, i32, i32, i32, i32 }
%struct.ck_malloc = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_move(%struct.ck_rhs* %0, %struct.ck_rhs* %1, i32* %2, i32* %3, %struct.ck_malloc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ck_rhs*, align 8
  %8 = alloca %struct.ck_rhs*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ck_malloc*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %7, align 8
  store %struct.ck_rhs* %1, %struct.ck_rhs** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ck_malloc* %4, %struct.ck_malloc** %11, align 8
  %12 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %13 = icmp eq %struct.ck_malloc* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %5
  %15 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %16 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %21 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19, %14, %5
  store i32 0, i32* %6, align 4
  br label %58

28:                                               ; preds = %24
  %29 = load %struct.ck_rhs*, %struct.ck_rhs** %8, align 8
  %30 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %33 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ck_rhs*, %struct.ck_rhs** %8, align 8
  %35 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %38 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ck_rhs*, %struct.ck_rhs** %8, align 8
  %40 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %43 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ck_rhs*, %struct.ck_rhs** %8, align 8
  %45 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %48 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ck_malloc*, %struct.ck_malloc** %11, align 8
  %50 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %51 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %50, i32 0, i32 2
  store %struct.ck_malloc* %49, %struct.ck_malloc** %51, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %54 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.ck_rhs*, %struct.ck_rhs** %7, align 8
  %57 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %28, %27
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
