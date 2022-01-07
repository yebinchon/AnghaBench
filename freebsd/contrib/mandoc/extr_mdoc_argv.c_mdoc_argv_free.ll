; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_mdoc_argv_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_mdoc_argv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdoc_arg = type { %struct.mdoc_arg*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdoc_argv_free(%struct.mdoc_arg* %0) #0 {
  %2 = alloca %struct.mdoc_arg*, align 8
  %3 = alloca i32, align 4
  store %struct.mdoc_arg* %0, %struct.mdoc_arg** %2, align 8
  %4 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %5 = icmp eq %struct.mdoc_arg* null, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %9 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %14 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %18 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %50

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %7
  %24 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %25 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @assert(i64 %26)
  %28 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %29 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %40, %23
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @argn_free(%struct.mdoc_arg* %37, i32 %38)
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  br label %33

43:                                               ; preds = %33
  %44 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %45 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %44, i32 0, i32 0
  %46 = load %struct.mdoc_arg*, %struct.mdoc_arg** %45, align 8
  %47 = call i32 @free(%struct.mdoc_arg* %46)
  %48 = load %struct.mdoc_arg*, %struct.mdoc_arg** %2, align 8
  %49 = call i32 @free(%struct.mdoc_arg* %48)
  br label %50

50:                                               ; preds = %43, %21, %6
  ret void
}

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @argn_free(%struct.mdoc_arg*, i32) #1

declare dso_local i32 @free(%struct.mdoc_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
