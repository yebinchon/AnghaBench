; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mparse_free(%struct.mparse* %0) #0 {
  %2 = alloca %struct.mparse*, align 8
  store %struct.mparse* %0, %struct.mparse** %2, align 8
  %3 = load %struct.mparse*, %struct.mparse** %2, align 8
  %4 = getelementptr inbounds %struct.mparse, %struct.mparse* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @roffhash_free(i32 %7)
  %9 = load %struct.mparse*, %struct.mparse** %2, align 8
  %10 = getelementptr inbounds %struct.mparse, %struct.mparse* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @roffhash_free(i32 %13)
  %15 = load %struct.mparse*, %struct.mparse** %2, align 8
  %16 = getelementptr inbounds %struct.mparse, %struct.mparse* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @roff_man_free(%struct.TYPE_2__* %17)
  %19 = load %struct.mparse*, %struct.mparse** %2, align 8
  %20 = getelementptr inbounds %struct.mparse, %struct.mparse* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @roff_free(i32 %21)
  %23 = load %struct.mparse*, %struct.mparse** %2, align 8
  %24 = getelementptr inbounds %struct.mparse, %struct.mparse* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @free_buf_list(i32 %25)
  %27 = load %struct.mparse*, %struct.mparse** %2, align 8
  %28 = call i32 @free(%struct.mparse* %27)
  ret void
}

declare dso_local i32 @roffhash_free(i32) #1

declare dso_local i32 @roff_man_free(%struct.TYPE_2__*) #1

declare dso_local i32 @roff_free(i32) #1

declare dso_local i32 @free_buf_list(i32) #1

declare dso_local i32 @free(%struct.mparse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
