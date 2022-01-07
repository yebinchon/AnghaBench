; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_mparse_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i64 }
%struct.mparse = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.roff_meta }

@MPARSE_VALIDATE = common dso_local global i32 0, align 4
@MACROSET_MDOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.roff_meta* @mparse_result(%struct.mparse* %0) #0 {
  %2 = alloca %struct.mparse*, align 8
  store %struct.mparse* %0, %struct.mparse** %2, align 8
  %3 = load %struct.mparse*, %struct.mparse** %2, align 8
  %4 = getelementptr inbounds %struct.mparse, %struct.mparse* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @roff_state_reset(%struct.TYPE_4__* %5)
  %7 = load %struct.mparse*, %struct.mparse** %2, align 8
  %8 = getelementptr inbounds %struct.mparse, %struct.mparse* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MPARSE_VALIDATE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.mparse*, %struct.mparse** %2, align 8
  %15 = getelementptr inbounds %struct.mparse, %struct.mparse* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MACROSET_MDOC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.mparse*, %struct.mparse** %2, align 8
  %24 = getelementptr inbounds %struct.mparse, %struct.mparse* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @mdoc_validate(%struct.TYPE_4__* %25)
  br label %32

27:                                               ; preds = %13
  %28 = load %struct.mparse*, %struct.mparse** %2, align 8
  %29 = getelementptr inbounds %struct.mparse, %struct.mparse* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @man_validate(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.mparse*, %struct.mparse** %2, align 8
  %35 = getelementptr inbounds %struct.mparse, %struct.mparse* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  ret %struct.roff_meta* %37
}

declare dso_local i32 @roff_state_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @mdoc_validate(%struct.TYPE_4__*) #1

declare dso_local i32 @man_validate(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
