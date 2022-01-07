; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_mansearch_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_mansearch_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manpage = type { %struct.manpage*, %struct.manpage*, %struct.manpage* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mansearch_free(%struct.manpage* %0, i64 %1) #0 {
  %3 = alloca %struct.manpage*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.manpage* %0, %struct.manpage** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.manpage*, %struct.manpage** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.manpage, %struct.manpage* %11, i64 %12
  %14 = getelementptr inbounds %struct.manpage, %struct.manpage* %13, i32 0, i32 2
  %15 = load %struct.manpage*, %struct.manpage** %14, align 8
  %16 = call i32 @free(%struct.manpage* %15)
  %17 = load %struct.manpage*, %struct.manpage** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.manpage, %struct.manpage* %17, i64 %18
  %20 = getelementptr inbounds %struct.manpage, %struct.manpage* %19, i32 0, i32 1
  %21 = load %struct.manpage*, %struct.manpage** %20, align 8
  %22 = call i32 @free(%struct.manpage* %21)
  %23 = load %struct.manpage*, %struct.manpage** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.manpage, %struct.manpage* %23, i64 %24
  %26 = getelementptr inbounds %struct.manpage, %struct.manpage* %25, i32 0, i32 0
  %27 = load %struct.manpage*, %struct.manpage** %26, align 8
  %28 = call i32 @free(%struct.manpage* %27)
  br label %29

29:                                               ; preds = %10
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %6

32:                                               ; preds = %6
  %33 = load %struct.manpage*, %struct.manpage** %3, align 8
  %34 = call i32 @free(%struct.manpage* %33)
  ret void
}

declare dso_local i32 @free(%struct.manpage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
