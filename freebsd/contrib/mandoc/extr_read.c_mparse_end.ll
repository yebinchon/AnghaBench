; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MACROSET_NONE = common dso_local global i64 0, align 8
@MACROSET_MAN = common dso_local global i64 0, align 8
@MACROSET_MDOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mparse*)* @mparse_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mparse_end(%struct.mparse* %0) #0 {
  %2 = alloca %struct.mparse*, align 8
  store %struct.mparse* %0, %struct.mparse** %2, align 8
  %3 = load %struct.mparse*, %struct.mparse** %2, align 8
  %4 = getelementptr inbounds %struct.mparse, %struct.mparse* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MACROSET_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* @MACROSET_MAN, align 8
  %13 = load %struct.mparse*, %struct.mparse** %2, align 8
  %14 = getelementptr inbounds %struct.mparse, %struct.mparse* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 %12, i64* %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.mparse*, %struct.mparse** %2, align 8
  %20 = getelementptr inbounds %struct.mparse, %struct.mparse* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MACROSET_MDOC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.mparse*, %struct.mparse** %2, align 8
  %29 = getelementptr inbounds %struct.mparse, %struct.mparse* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @mdoc_endparse(%struct.TYPE_5__* %30)
  br label %37

32:                                               ; preds = %18
  %33 = load %struct.mparse*, %struct.mparse** %2, align 8
  %34 = getelementptr inbounds %struct.mparse, %struct.mparse* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @man_endparse(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.mparse*, %struct.mparse** %2, align 8
  %39 = getelementptr inbounds %struct.mparse, %struct.mparse* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @roff_endparse(i32 %40)
  ret void
}

declare dso_local i32 @mdoc_endparse(%struct.TYPE_5__*) #1

declare dso_local i32 @man_endparse(%struct.TYPE_5__*) #1

declare dso_local i32 @roff_endparse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
