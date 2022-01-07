; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c__rs_stir_if_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c__rs_stir_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@_rs_stir_if_needed._rs_pid = internal global i64 0, align 8
@rs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @_rs_stir_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rs_stir_if_needed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @getpid()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* @_rs_stir_if_needed._rs_pid, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @_rs_stir_if_needed._rs_pid, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %1
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* @_rs_stir_if_needed._rs_pid, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %11
  br label %19

19:                                               ; preds = %18, %7
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %19
  %29 = call i32 (...) @_rs_stir()
  br label %30

30:                                               ; preds = %28, %22
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %45

39:                                               ; preds = %30
  %40 = load i64, i64* %2, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rs, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %39, %36
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @_rs_stir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
