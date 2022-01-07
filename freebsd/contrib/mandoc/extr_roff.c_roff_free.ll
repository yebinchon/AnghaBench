; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32, i32, %struct.roff*, %struct.roff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_free(%struct.roff* %0) #0 {
  %2 = alloca %struct.roff*, align 8
  %3 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %2, align 8
  %4 = load %struct.roff*, %struct.roff** %2, align 8
  %5 = call i32 @roff_free1(%struct.roff* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.roff*, %struct.roff** %2, align 8
  %9 = getelementptr inbounds %struct.roff, %struct.roff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.roff*, %struct.roff** %2, align 8
  %14 = getelementptr inbounds %struct.roff, %struct.roff* %13, i32 0, i32 2
  %15 = load %struct.roff*, %struct.roff** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.roff, %struct.roff* %15, i64 %17
  %19 = getelementptr inbounds %struct.roff, %struct.roff* %18, i32 0, i32 3
  %20 = load %struct.roff*, %struct.roff** %19, align 8
  %21 = call i32 @free(%struct.roff* %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.roff*, %struct.roff** %2, align 8
  %27 = getelementptr inbounds %struct.roff, %struct.roff* %26, i32 0, i32 2
  %28 = load %struct.roff*, %struct.roff** %27, align 8
  %29 = call i32 @free(%struct.roff* %28)
  %30 = load %struct.roff*, %struct.roff** %2, align 8
  %31 = getelementptr inbounds %struct.roff, %struct.roff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @roffhash_free(i32 %32)
  %34 = load %struct.roff*, %struct.roff** %2, align 8
  %35 = call i32 @free(%struct.roff* %34)
  ret void
}

declare dso_local i32 @roff_free1(%struct.roff*) #1

declare dso_local i32 @free(%struct.roff*) #1

declare dso_local i32 @roffhash_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
