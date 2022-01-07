; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_find_afd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_find_afd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afd = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@afdl = common dso_local global %struct.afd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afd* (i32)* @find_afd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afd* @find_afd(i32 %0) #0 {
  %2 = alloca %struct.afd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.afd*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PF_UNSPEC, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.afd* null, %struct.afd** %2, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.afd*, %struct.afd** @afdl, align 8
  store %struct.afd* %10, %struct.afd** %4, align 8
  br label %11

11:                                               ; preds = %25, %9
  %12 = load %struct.afd*, %struct.afd** %4, align 8
  %13 = getelementptr inbounds %struct.afd, %struct.afd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.afd*, %struct.afd** %4, align 8
  %18 = getelementptr inbounds %struct.afd, %struct.afd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.afd*, %struct.afd** %4, align 8
  store %struct.afd* %23, %struct.afd** %2, align 8
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.afd*, %struct.afd** %4, align 8
  %27 = getelementptr inbounds %struct.afd, %struct.afd* %26, i32 1
  store %struct.afd* %27, %struct.afd** %4, align 8
  br label %11

28:                                               ; preds = %11
  store %struct.afd* null, %struct.afd** %2, align 8
  br label %29

29:                                               ; preds = %28, %22, %8
  %30 = load %struct.afd*, %struct.afd** %2, align 8
  ret %struct.afd* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
