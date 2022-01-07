; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32, i32 }
%struct.pt_packet = type { i32 }
%struct.pt_decoder_function = type { i32 (%struct.pt_packet_decoder*, %struct.pt_packet*)* }

@pte_invalid = common dso_local global i32 0, align 4
@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_next(%struct.pt_packet_decoder* %0, %struct.pt_packet* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet_decoder*, align 8
  %6 = alloca %struct.pt_packet*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_decoder_function*, align 8
  %9 = alloca %struct.pt_packet, align 4
  %10 = alloca %struct.pt_packet*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %5, align 8
  store %struct.pt_packet* %1, %struct.pt_packet** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.pt_packet*, %struct.pt_packet** %6, align 8
  %14 = icmp ne %struct.pt_packet* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %17 = icmp ne %struct.pt_packet_decoder* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @pte_invalid, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load %struct.pt_packet*, %struct.pt_packet** %6, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi %struct.pt_packet* [ %25, %24 ], [ %9, %26 ]
  store %struct.pt_packet* %28, %struct.pt_packet** %10, align 8
  %29 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %30 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %33 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %32, i32 0, i32 1
  %34 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %8, i32 %31, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %80

39:                                               ; preds = %27
  %40 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %41 = icmp ne %struct.pt_decoder_function* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @pte_internal, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %39
  %46 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %47 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %46, i32 0, i32 0
  %48 = load i32 (%struct.pt_packet_decoder*, %struct.pt_packet*)*, i32 (%struct.pt_packet_decoder*, %struct.pt_packet*)** %47, align 8
  %49 = icmp ne i32 (%struct.pt_packet_decoder*, %struct.pt_packet*)* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @pte_internal, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %45
  %54 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %8, align 8
  %55 = getelementptr inbounds %struct.pt_decoder_function, %struct.pt_decoder_function* %54, i32 0, i32 0
  %56 = load i32 (%struct.pt_packet_decoder*, %struct.pt_packet*)*, i32 (%struct.pt_packet_decoder*, %struct.pt_packet*)** %55, align 8
  %57 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %58 = load %struct.pt_packet*, %struct.pt_packet** %10, align 8
  %59 = call i32 %56(%struct.pt_packet_decoder* %57, %struct.pt_packet* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %53
  %65 = load %struct.pt_packet*, %struct.pt_packet** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.pt_packet*, %struct.pt_packet** %10, align 8
  %68 = call i32 @pkt_to_user(%struct.pt_packet* %65, i64 %66, %struct.pt_packet* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %80

73:                                               ; preds = %64
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %5, align 8
  %76 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %71, %62, %50, %42, %37, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32, i32*) #1

declare dso_local i32 @pkt_to_user(%struct.pt_packet*, i64, %struct.pt_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
