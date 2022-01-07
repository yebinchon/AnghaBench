; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_write_iomap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_write_iomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rs_iomap_mr = type { i32 }
%struct.ibv_sge = type { i32 }

@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@RS_OP_IOMAP_SGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.rs_iomap_mr*, %struct.ibv_sge*, i32, i32)* @rs_write_iomap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_write_iomap(%struct.rsocket* %0, %struct.rs_iomap_mr* %1, %struct.ibv_sge* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rsocket*, align 8
  %7 = alloca %struct.rs_iomap_mr*, align 8
  %8 = alloca %struct.ibv_sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rsocket* %0, %struct.rsocket** %6, align 8
  store %struct.rs_iomap_mr* %1, %struct.rs_iomap_mr** %7, align 8
  store %struct.ibv_sge* %2, %struct.ibv_sge** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %13 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26, %5
  %32 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %39 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %7, align 8
  %43 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = add i64 %41, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %49 = load %struct.ibv_sge*, %struct.ibv_sge** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @RS_OP_IOMAP_SGL, align 4
  %52 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %7, align 8
  %53 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rs_msg_set(i32 %51, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rs_post_write_msg(%struct.rsocket* %48, %struct.ibv_sge* %49, i32 %50, i32 %55, i32 %56, i64 %57, i32 %61)
  ret i32 %62
}

declare dso_local i32 @rs_post_write_msg(%struct.rsocket*, %struct.ibv_sge*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @rs_msg_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
