; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_cpu_errata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_cpu_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (...)* }

@cpu_quirks = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_cpu_errata() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 (...) @get_midr()
  store i32 %3, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %31, %0
  %5 = load i64, i64* %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_quirks, align 8
  %7 = call i64 @nitems(%struct.TYPE_3__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %4
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_quirks, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %10, %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_quirks, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_quirks, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = call i32 (...) %28()
  br label %30

30:                                               ; preds = %23, %9
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %2, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %2, align 8
  br label %4

34:                                               ; preds = %4
  ret void
}

declare dso_local i32 @get_midr(...) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
