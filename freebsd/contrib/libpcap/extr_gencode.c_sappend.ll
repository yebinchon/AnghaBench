; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_sappend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_sappend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist = type { %struct.slist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sappend(%struct.slist* %0, %struct.slist* %1) #0 {
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.slist*, align 8
  store %struct.slist* %0, %struct.slist** %3, align 8
  store %struct.slist* %1, %struct.slist** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.slist*, %struct.slist** %3, align 8
  %7 = getelementptr inbounds %struct.slist, %struct.slist* %6, i32 0, i32 0
  %8 = load %struct.slist*, %struct.slist** %7, align 8
  %9 = icmp ne %struct.slist* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.slist*, %struct.slist** %3, align 8
  %12 = getelementptr inbounds %struct.slist, %struct.slist* %11, i32 0, i32 0
  %13 = load %struct.slist*, %struct.slist** %12, align 8
  store %struct.slist* %13, %struct.slist** %3, align 8
  br label %5

14:                                               ; preds = %5
  %15 = load %struct.slist*, %struct.slist** %4, align 8
  %16 = load %struct.slist*, %struct.slist** %3, align 8
  %17 = getelementptr inbounds %struct.slist, %struct.slist* %16, i32 0, i32 0
  store %struct.slist* %15, %struct.slist** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
