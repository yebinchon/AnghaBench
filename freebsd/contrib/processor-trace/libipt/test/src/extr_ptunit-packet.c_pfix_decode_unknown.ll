; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_pfix_decode_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_pfix_decode_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_unknown = type { %struct.packet_fixture* }
%struct.packet_fixture = type { i64, i32 }
%struct.pt_config = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_packet_unknown*, %struct.pt_config*, i32*, i8*)* @pfix_decode_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfix_decode_unknown(%struct.pt_packet_unknown* %0, %struct.pt_config* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_packet_unknown*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.packet_fixture*, align 8
  store %struct.pt_packet_unknown* %0, %struct.pt_packet_unknown** %6, align 8
  store %struct.pt_config* %1, %struct.pt_config** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.pt_packet_unknown*, %struct.pt_packet_unknown** %6, align 8
  %12 = icmp ne %struct.pt_packet_unknown* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %15 = icmp ne %struct.pt_config* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %67

19:                                               ; preds = %13
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.packet_fixture*
  store %struct.packet_fixture* %21, %struct.packet_fixture** %10, align 8
  %22 = load %struct.packet_fixture*, %struct.packet_fixture** %10, align 8
  %23 = icmp ne %struct.packet_fixture* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @pte_internal, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %67

27:                                               ; preds = %19
  %28 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %29 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.packet_fixture*, %struct.packet_fixture** %10, align 8
  %32 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @pte_internal, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %67

38:                                               ; preds = %27
  %39 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %40 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.packet_fixture*, %struct.packet_fixture** %10, align 8
  %43 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @pte_internal, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %67

50:                                               ; preds = %38
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.packet_fixture*, %struct.packet_fixture** %10, align 8
  %53 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = icmp ne i32* %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @pte_internal, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.packet_fixture*, %struct.packet_fixture** %10, align 8
  %62 = load %struct.pt_packet_unknown*, %struct.pt_packet_unknown** %6, align 8
  %63 = getelementptr inbounds %struct.pt_packet_unknown, %struct.pt_packet_unknown* %62, i32 0, i32 0
  store %struct.packet_fixture* %61, %struct.packet_fixture** %63, align 8
  %64 = load %struct.packet_fixture*, %struct.packet_fixture** %10, align 8
  %65 = getelementptr inbounds %struct.packet_fixture, %struct.packet_fixture* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %57, %47, %35, %24, %16
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
