; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { %struct.buf* }
%struct.buf = type { i32, %struct.buf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mparse_copy(%struct.mparse* %0) #0 {
  %2 = alloca %struct.mparse*, align 8
  %3 = alloca %struct.buf*, align 8
  store %struct.mparse* %0, %struct.mparse** %2, align 8
  %4 = load %struct.mparse*, %struct.mparse** %2, align 8
  %5 = getelementptr inbounds %struct.mparse, %struct.mparse* %4, i32 0, i32 0
  %6 = load %struct.buf*, %struct.buf** %5, align 8
  store %struct.buf* %6, %struct.buf** %3, align 8
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.buf*, %struct.buf** %3, align 8
  %9 = icmp ne %struct.buf* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %struct.buf*, %struct.buf** %3, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @puts(i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load %struct.buf*, %struct.buf** %3, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  %18 = load %struct.buf*, %struct.buf** %17, align 8
  store %struct.buf* %18, %struct.buf** %3, align 8
  br label %7

19:                                               ; preds = %7
  ret void
}

declare dso_local i32 @puts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
