; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_vptr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_vptr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { %struct.varent*, %struct.varent*, i64, %struct.varent* }

@tw_vptr = common dso_local global %struct.varent* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varent*)* @tw_vptr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_vptr_start(%struct.varent* %0) #0 {
  %2 = alloca %struct.varent*, align 8
  store %struct.varent* %0, %struct.varent** %2, align 8
  %3 = load %struct.varent*, %struct.varent** %2, align 8
  store %struct.varent* %3, %struct.varent** @tw_vptr, align 8
  br label %4

4:                                                ; preds = %32, %1
  br label %5

5:                                                ; preds = %10, %4
  %6 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %7 = getelementptr inbounds %struct.varent, %struct.varent* %6, i32 0, i32 3
  %8 = load %struct.varent*, %struct.varent** %7, align 8
  %9 = icmp ne %struct.varent* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %12 = getelementptr inbounds %struct.varent, %struct.varent* %11, i32 0, i32 3
  %13 = load %struct.varent*, %struct.varent** %12, align 8
  store %struct.varent* %13, %struct.varent** @tw_vptr, align 8
  br label %5

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %48, %14
  %16 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %17 = getelementptr inbounds %struct.varent, %struct.varent* %16, i32 0, i32 0
  %18 = load %struct.varent*, %struct.varent** %17, align 8
  %19 = icmp eq %struct.varent* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.varent* null, %struct.varent** @tw_vptr, align 8
  br label %49

21:                                               ; preds = %15
  %22 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %23 = getelementptr inbounds %struct.varent, %struct.varent* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %49

27:                                               ; preds = %21
  %28 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %29 = getelementptr inbounds %struct.varent, %struct.varent* %28, i32 0, i32 1
  %30 = load %struct.varent*, %struct.varent** %29, align 8
  %31 = icmp ne %struct.varent* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %34 = getelementptr inbounds %struct.varent, %struct.varent* %33, i32 0, i32 1
  %35 = load %struct.varent*, %struct.varent** %34, align 8
  store %struct.varent* %35, %struct.varent** @tw_vptr, align 8
  br label %4

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %42, %36
  %38 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  store %struct.varent* %38, %struct.varent** %2, align 8
  %39 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %40 = getelementptr inbounds %struct.varent, %struct.varent* %39, i32 0, i32 0
  %41 = load %struct.varent*, %struct.varent** %40, align 8
  store %struct.varent* %41, %struct.varent** @tw_vptr, align 8
  br label %42

42:                                               ; preds = %37
  %43 = load %struct.varent*, %struct.varent** @tw_vptr, align 8
  %44 = getelementptr inbounds %struct.varent, %struct.varent* %43, i32 0, i32 1
  %45 = load %struct.varent*, %struct.varent** %44, align 8
  %46 = load %struct.varent*, %struct.varent** %2, align 8
  %47 = icmp eq %struct.varent* %45, %46
  br i1 %47, label %37, label %48

48:                                               ; preds = %42
  br label %15

49:                                               ; preds = %26, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
