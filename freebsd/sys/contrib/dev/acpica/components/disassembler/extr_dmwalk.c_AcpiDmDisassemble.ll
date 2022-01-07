; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmDisassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmDisassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i32* }

@AcpiDmDescendingOp = common dso_local global i32 0, align 4
@AcpiDmAscendingOp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmDisassemble(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %35

13:                                               ; preds = %3
  %14 = call i32 @memset(%struct.TYPE_10__* %8, i32 0, i32 24)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32* %15, i32** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = load i32, i32* @AcpiDmDescendingOp, align 4
  %33 = load i32, i32* @AcpiDmAscendingOp, align 4
  %34 = call i32 @AcpiDmWalkParseTree(%struct.TYPE_9__* %31, i32 %32, i32 %33, %struct.TYPE_10__* %8)
  br label %35

35:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @AcpiDmWalkParseTree(%struct.TYPE_9__*, i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
