; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_ptu_pkt_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-packet.c_ptu_pkt_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_packet*, %struct.pt_packet*)* @ptu_pkt_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptu_pkt_eq(%struct.pt_packet* %0, %struct.pt_packet* %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.pt_packet*, align 8
  %5 = alloca %struct.pt_packet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.pt_packet* %0, %struct.pt_packet** %4, align 8
  store %struct.pt_packet* %1, %struct.pt_packet** %5, align 8
  %9 = load %struct.pt_packet*, %struct.pt_packet** %4, align 8
  %10 = call i32 @ptu_ptr(%struct.pt_packet* %9)
  %11 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %12 = call i32 @ptu_ptr(%struct.pt_packet* %11)
  %13 = load %struct.pt_packet*, %struct.pt_packet** %4, align 8
  %14 = bitcast %struct.pt_packet* %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load %struct.pt_packet*, %struct.pt_packet** %5, align 8
  %16 = bitcast %struct.pt_packet* %15 to i32*
  store i32* %16, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_uint_eq(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %17

33:                                               ; preds = %17
  %34 = call i32 (...) @ptu_passed()
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @ptu_ptr(%struct.pt_packet*) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
