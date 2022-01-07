; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_run_other_numbers_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_run_other_numbers_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run = type { i64, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @run_other_numbers_add(%struct.run* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.run*, align 8
  %5 = alloca i32, align 4
  store %struct.run* %0, %struct.run** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.run*, %struct.run** %4, align 8
  %7 = getelementptr inbounds %struct.run, %struct.run* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.run*, %struct.run** %4, align 8
  %11 = getelementptr inbounds %struct.run, %struct.run* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.run*, %struct.run** %4, align 8
  %16 = call i64 @run_other_numbers_expand_to_hold_more(%struct.run* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %40

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.run*, %struct.run** %4, align 8
  %23 = getelementptr inbounds %struct.run, %struct.run* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.run*, %struct.run** %4, align 8
  %26 = getelementptr inbounds %struct.run, %struct.run* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32 %21, i32* %29, align 4
  %30 = load %struct.run*, %struct.run** %4, align 8
  %31 = getelementptr inbounds %struct.run, %struct.run* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.run*, %struct.run** %4, align 8
  %33 = getelementptr inbounds %struct.run, %struct.run* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.run*, %struct.run** %4, align 8
  %36 = getelementptr inbounds %struct.run, %struct.run* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %3, align 8
  br label %45

40:                                               ; preds = %18
  %41 = load %struct.run*, %struct.run** %4, align 8
  %42 = getelementptr inbounds %struct.run, %struct.run* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  store i32* null, i32** %3, align 8
  br label %45

45:                                               ; preds = %40, %20
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i64 @run_other_numbers_expand_to_hold_more(%struct.run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
