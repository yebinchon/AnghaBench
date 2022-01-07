; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_nextkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_nextkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32* }

@R_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i32* } @dbm_nextkey(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)** %8, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load i32, i32* @R_NEXT, align 4
  %12 = call i32 %9(%struct.TYPE_11__* %10, %struct.TYPE_10__* %5, %struct.TYPE_10__* %6, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = bitcast %struct.TYPE_9__* %2 to { i32, i32* }*
  %25 = load { i32, i32* }, { i32, i32* }* %24, align 8
  ret { i32, i32* } %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
