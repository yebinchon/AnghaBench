; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i64 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, i32)* @ds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_init(%struct.rsocket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i64 @socket(i32 %6, i32 %7, i32 0)
  %9 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %12 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = call i64 @epoll_create(i32 2)
  %22 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %30 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @epoll_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
