; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i32, %struct.rsocket** }
%struct.rsocket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_svc*, %struct.rsocket*)* @rs_svc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_svc_index(%struct.rs_svc* %0, %struct.rsocket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca %struct.rsocket*, align 8
  %6 = alloca i32, align 4
  store %struct.rs_svc* %0, %struct.rs_svc** %4, align 8
  store %struct.rsocket* %1, %struct.rsocket** %5, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %10 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %15 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %14, i32 0, i32 1
  %16 = load %struct.rsocket**, %struct.rsocket*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rsocket*, %struct.rsocket** %16, i64 %18
  %20 = load %struct.rsocket*, %struct.rsocket** %19, align 8
  %21 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %22 = icmp eq %struct.rsocket* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
