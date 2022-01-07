; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_encode_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_encode_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_encoder = type { i32* }
%struct.pt_packet_ip = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_opm_ipc_shr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_encoder*, i32, %struct.pt_packet_ip*)* @pt_encode_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_encode_ip(%struct.pt_encoder* %0, i32 %1, %struct.pt_packet_ip* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_packet_ip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_encoder* %0, %struct.pt_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_packet_ip* %2, %struct.pt_packet_ip** %7, align 8
  %13 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %14 = icmp ne %struct.pt_encoder* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %7, align 8
  %17 = icmp ne %struct.pt_packet_ip* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @pte_internal, align 4
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %15
  %21 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %7, align 8
  %22 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pt_ipc_size(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %20
  %30 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add i32 1, %31
  %33 = call i32 @pt_reserve(%struct.pt_encoder* %30, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %29
  %39 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %7, align 8
  %40 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @pt_opm_ipc_shr, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %46 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %7, align 8
  %55 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32* @pt_encode_int(i32* %53, i32 %56, i32 %57)
  %59 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %60 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 1, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %38, %36, %27, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @pt_ipc_size(i32) #1

declare dso_local i32 @pt_reserve(%struct.pt_encoder*, i32) #1

declare dso_local i32* @pt_encode_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
