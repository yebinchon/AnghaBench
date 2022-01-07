; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_do_my_cleanups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_do_my_cleanups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32, i32 (i32)*, %struct.cleanup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cleanup**, %struct.cleanup*)* @do_my_cleanups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_my_cleanups(%struct.cleanup** %0, %struct.cleanup* %1) #0 {
  %3 = alloca %struct.cleanup**, align 8
  %4 = alloca %struct.cleanup*, align 8
  %5 = alloca %struct.cleanup*, align 8
  store %struct.cleanup** %0, %struct.cleanup*** %3, align 8
  store %struct.cleanup* %1, %struct.cleanup** %4, align 8
  br label %6

6:                                                ; preds = %11, %2
  %7 = load %struct.cleanup**, %struct.cleanup*** %3, align 8
  %8 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  store %struct.cleanup* %8, %struct.cleanup** %5, align 8
  %9 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %10 = icmp ne %struct.cleanup* %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %13 = getelementptr inbounds %struct.cleanup, %struct.cleanup* %12, i32 0, i32 2
  %14 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %15 = load %struct.cleanup**, %struct.cleanup*** %3, align 8
  store %struct.cleanup* %14, %struct.cleanup** %15, align 8
  %16 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %17 = getelementptr inbounds %struct.cleanup, %struct.cleanup* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %20 = getelementptr inbounds %struct.cleanup, %struct.cleanup* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  %23 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %24 = call i32 @xfree(%struct.cleanup* %23)
  br label %6

25:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xfree(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
