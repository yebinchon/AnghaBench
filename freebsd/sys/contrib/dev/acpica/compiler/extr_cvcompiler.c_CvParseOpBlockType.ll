; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvParseOpBlockType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvParseOpBlockType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BLOCK_NONE = common dso_local global i32 0, align 4
@BLOCK_PAREN = common dso_local global i32 0, align 4
@BLOCK_BRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CvParseOpBlockType(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %7, i32* %2, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 131, label %13
    i32 156, label %13
    i32 155, label %13
    i32 154, label %13
    i32 151, label %13
    i32 148, label %13
    i32 147, label %13
    i32 146, label %13
    i32 143, label %13
    i32 149, label %13
    i32 142, label %13
    i32 138, label %13
    i32 137, label %13
    i32 136, label %13
    i32 153, label %13
    i32 134, label %13
    i32 133, label %13
    i32 132, label %13
    i32 128, label %13
    i32 135, label %13
    i32 130, label %13
    i32 129, label %13
    i32 141, label %13
    i32 139, label %13
    i32 140, label %13
    i32 145, label %13
    i32 144, label %13
    i32 150, label %13
    i32 152, label %13
  ]

13:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %14 = load i32, i32* @BLOCK_PAREN, align 4
  %15 = load i32, i32* @BLOCK_BRACE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %13, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
