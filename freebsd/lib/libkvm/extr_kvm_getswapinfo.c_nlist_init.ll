; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_getswapinfo.c_nlist_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_getswapinfo.c_nlist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@kvm_swap_nl_cached = common dso_local global i32 0, align 4
@kvm_swap_nl = common dso_local global %struct.TYPE_8__* null, align 8
@NL_SWTAILQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unable to find swtailq\00", align 1
@NL_DMMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"unable to find dmmax\00", align 1
@dmmax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @nlist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlist_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load i32, i32* @kvm_swap_nl_cached, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_swap_nl, align 8
  %10 = call i64 @kvm_nlist(%struct.TYPE_7__* %8, %struct.TYPE_8__* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %7
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_swap_nl, align 8
  %15 = load i64, i64* @NL_SWTAILQ, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_kvm_err(%struct.TYPE_7__* %21, i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

26:                                               ; preds = %13
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_swap_nl, align 8
  %28 = load i64, i64* @NL_DMMAX, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_kvm_err(%struct.TYPE_7__* %34, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i64, i64* @NL_DMMAX, align 8
  %41 = call i32 @KGET(i64 %40, i32* @dmmax)
  store i32 1, i32* @kvm_swap_nl_cached, align 4
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %33, %20, %12, %6
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @kvm_nlist(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @KGET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
