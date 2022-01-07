; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_write_direct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_write_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32 }
%struct.rs_iomap = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ibv_sge = type { i32 }

@RS_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.rs_iomap*, i64, %struct.ibv_sge*, i32, i64, i32)* @rs_write_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_write_direct(%struct.rsocket* %0, %struct.rs_iomap* %1, i64 %2, %struct.ibv_sge* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.rsocket*, align 8
  %9 = alloca %struct.rs_iomap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ibv_sge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.rsocket* %0, %struct.rsocket** %8, align 8
  store %struct.rs_iomap* %1, %struct.rs_iomap** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ibv_sge* %3, %struct.ibv_sge** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %22 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.rs_iomap*, %struct.rs_iomap** %9, align 8
  %28 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.rs_iomap*, %struct.rs_iomap** %9, align 8
  %34 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %15, align 8
  %37 = load %struct.rsocket*, %struct.rsocket** %8, align 8
  %38 = load %struct.ibv_sge*, %struct.ibv_sge** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @RS_OP_WRITE, align 4
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @rs_msg_set(i32 %40, i64 %41)
  %43 = load i32, i32* %14, align 4
  %44 = load i64, i64* %15, align 8
  %45 = load %struct.rs_iomap*, %struct.rs_iomap** %9, align 8
  %46 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rs_post_write(%struct.rsocket* %37, %struct.ibv_sge* %38, i32 %39, i32 %42, i32 %43, i64 %44, i32 %48)
  ret i32 %49
}

declare dso_local i32 @rs_post_write(%struct.rsocket*, %struct.ibv_sge*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @rs_msg_set(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
