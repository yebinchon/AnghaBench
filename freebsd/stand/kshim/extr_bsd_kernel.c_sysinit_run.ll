; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_sysinit_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_sysinit_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinit = type { i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @sysinit_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysinit_run(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.sysinit*, align 8
  store i8** %0, i8*** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast i8* %6 to %struct.sysinit*
  store %struct.sysinit* %7, %struct.sysinit** %3, align 8
  %8 = icmp ne %struct.sysinit* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load %struct.sysinit*, %struct.sysinit** %3, align 8
  %11 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.sysinit*, %struct.sysinit** %3, align 8
  %14 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15)
  %17 = load i8**, i8*** %2, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %2, align 8
  br label %4

19:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
