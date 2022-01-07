; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_add_rs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_add_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i32, i32, %struct.rsocket** }
%struct.rsocket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_svc*, %struct.rsocket*)* @rs_svc_add_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_svc_add_rs(%struct.rs_svc* %0, %struct.rsocket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca %struct.rsocket*, align 8
  %6 = alloca i32, align 4
  store %struct.rs_svc* %0, %struct.rs_svc** %4, align 8
  store %struct.rsocket* %1, %struct.rsocket** %5, align 8
  %7 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %8 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %11 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %17 = call i32 @rs_svc_grow_sets(%struct.rs_svc* %16, i32 4)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %25 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %26 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %25, i32 0, i32 2
  %27 = load %struct.rsocket**, %struct.rsocket*** %26, align 8
  %28 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %29 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rsocket*, %struct.rsocket** %27, i64 %32
  store %struct.rsocket* %24, %struct.rsocket** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @rs_svc_grow_sets(%struct.rs_svc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
