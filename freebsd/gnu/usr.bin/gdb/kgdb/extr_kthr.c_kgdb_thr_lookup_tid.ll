; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kthr.c_kgdb_thr_lookup_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kthr.c_kgdb_thr_lookup_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthr = type { i32, %struct.kthr* }

@first = common dso_local global %struct.kthr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kthr* @kgdb_thr_lookup_tid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kthr*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.kthr*, %struct.kthr** @first, align 8
  store %struct.kthr* %4, %struct.kthr** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.kthr*, %struct.kthr** %3, align 8
  %7 = icmp ne %struct.kthr* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.kthr*, %struct.kthr** %3, align 8
  %10 = getelementptr inbounds %struct.kthr, %struct.kthr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %11, %12
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load %struct.kthr*, %struct.kthr** %3, align 8
  %18 = getelementptr inbounds %struct.kthr, %struct.kthr* %17, i32 0, i32 1
  %19 = load %struct.kthr*, %struct.kthr** %18, align 8
  store %struct.kthr* %19, %struct.kthr** %3, align 8
  br label %5

20:                                               ; preds = %14
  %21 = load %struct.kthr*, %struct.kthr** %3, align 8
  ret %struct.kthr* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
