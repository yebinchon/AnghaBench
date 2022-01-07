; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_userret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_userret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i64, %struct.mctx* }
%struct.mctx = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_userret(%struct.roff* %0) #0 {
  %2 = alloca %struct.roff*, align 8
  %3 = alloca %struct.mctx*, align 8
  %4 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %2, align 8
  %5 = load %struct.roff*, %struct.roff** %2, align 8
  %6 = getelementptr inbounds %struct.roff, %struct.roff* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.roff*, %struct.roff** %2, align 8
  %12 = getelementptr inbounds %struct.roff, %struct.roff* %11, i32 0, i32 1
  %13 = load %struct.mctx*, %struct.mctx** %12, align 8
  %14 = load %struct.roff*, %struct.roff** %2, align 8
  %15 = getelementptr inbounds %struct.roff, %struct.roff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.mctx, %struct.mctx* %13, i64 %16
  store %struct.mctx* %17, %struct.mctx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mctx*, %struct.mctx** %3, align 8
  %21 = getelementptr inbounds %struct.mctx, %struct.mctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.mctx*, %struct.mctx** %3, align 8
  %26 = getelementptr inbounds %struct.mctx, %struct.mctx* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @free(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load %struct.mctx*, %struct.mctx** %3, align 8
  %38 = getelementptr inbounds %struct.mctx, %struct.mctx* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.roff*, %struct.roff** %2, align 8
  %40 = getelementptr inbounds %struct.roff, %struct.roff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
