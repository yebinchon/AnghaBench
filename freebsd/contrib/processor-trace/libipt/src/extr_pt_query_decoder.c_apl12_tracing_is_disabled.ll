; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_apl12_tracing_is_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_apl12_tracing_is_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32 }
%struct.pt_packet = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_packet_decoder*)* @apl12_tracing_is_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apl12_tracing_is_disabled(%struct.pt_packet_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_packet_decoder*, align 8
  %4 = alloca %struct.pt_packet, align 4
  %5 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %3, align 8
  %6 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %7 = icmp ne %struct.pt_packet_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %48

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %47, %11
  %13 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %14 = call i32 @pt_pkt_next(%struct.pt_packet_decoder* %13, %struct.pt_packet* %4, i32 4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @pte_eos, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %48

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %28 [
    i32 134, label %29
    i32 131, label %30
    i32 129, label %31
    i32 130, label %31
    i32 133, label %31
    i32 132, label %31
    i32 136, label %32
    i32 135, label %42
    i32 137, label %45
    i32 128, label %46
    i32 138, label %46
  ]

28:                                               ; preds = %25
  br label %47

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

31:                                               ; preds = %25, %25, %25, %25
  store i32 1, i32* %2, align 4
  br label %48

32:                                               ; preds = %25
  %33 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %34 = call i32 @pt_qry_find_header_fup(%struct.pt_packet* %4, %struct.pt_packet_decoder* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @pte_eos, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %25
  %43 = load i32, i32* @pte_bad_context, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %48

46:                                               ; preds = %25, %25
  store i32 1, i32* %2, align 4
  br label %48

47:                                               ; preds = %28
  br label %12

48:                                               ; preds = %46, %45, %42, %40, %31, %30, %29, %23, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pt_pkt_next(%struct.pt_packet_decoder*, %struct.pt_packet*, i32) #1

declare dso_local i32 @pt_qry_find_header_fup(%struct.pt_packet*, %struct.pt_packet_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
