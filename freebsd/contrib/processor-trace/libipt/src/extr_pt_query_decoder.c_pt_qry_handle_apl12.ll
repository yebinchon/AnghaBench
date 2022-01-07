; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_handle_apl12.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_handle_apl12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32 }
%struct.pt_packet_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*, i32)* @pt_qry_handle_apl12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_handle_apl12(%struct.pt_query_decoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_packet_decoder, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %10 = icmp ne %struct.pt_query_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %16 = call i32 @pt_qry_get_offset(%struct.pt_query_decoder* %15, i64* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 0
  %24 = call i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder* %6, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @pt_pkt_sync_set(%struct.pt_packet_decoder* %6, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = call i32 @apl12_tracing_is_disabled(%struct.pt_packet_decoder* %6)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @apl12_resume_disabled(%struct.pt_query_decoder* %42, %struct.pt_packet_decoder* %6, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = call i32 @pt_pkt_decoder_fini(%struct.pt_packet_decoder* %6)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %27, %19, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @pt_qry_get_offset(%struct.pt_query_decoder*, i64*) #1

declare dso_local i32 @pt_pkt_decoder_init(%struct.pt_packet_decoder*, i32*) #1

declare dso_local i32 @pt_pkt_sync_set(%struct.pt_packet_decoder*, i64) #1

declare dso_local i32 @apl12_tracing_is_disabled(%struct.pt_packet_decoder*) #1

declare dso_local i32 @apl12_resume_disabled(%struct.pt_query_decoder*, %struct.pt_packet_decoder*, i32) #1

declare dso_local i32 @pt_pkt_decoder_fini(%struct.pt_packet_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
