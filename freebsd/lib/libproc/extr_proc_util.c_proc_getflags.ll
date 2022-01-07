; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_getflags(%struct.proc_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc_handle*, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %3, align 8
  %4 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %5 = icmp eq %struct.proc_handle* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %9 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
