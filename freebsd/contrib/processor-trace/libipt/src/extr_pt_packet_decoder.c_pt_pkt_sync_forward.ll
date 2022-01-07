; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_sync_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_packet_decoder.c_pt_pkt_sync_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_packet_decoder = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@pte_invalid = common dso_local global i32 0, align 4
@ptps_psb = common dso_local global i32 0, align 4
@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_pkt_sync_forward(%struct.pt_packet_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_packet_decoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_packet_decoder* %0, %struct.pt_packet_decoder** %3, align 8
  %9 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %10 = icmp ne %struct.pt_packet_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @pte_invalid, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %4, align 8
  br label %29

29:                                               ; preds = %27, %14
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @ptps_psb, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ult i32* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @pte_internal, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %80

45:                                               ; preds = %38
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @ptps_psb, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @ptps_psb, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %4, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %67 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %66, i32 0, i32 2
  %68 = call i32 @pt_sync_forward(i32** %5, i32* %65, %struct.TYPE_2__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %80

73:                                               ; preds = %59
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %76 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.pt_packet_decoder*, %struct.pt_packet_decoder** %3, align 8
  %79 = getelementptr inbounds %struct.pt_packet_decoder, %struct.pt_packet_decoder* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %71, %42, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @pt_sync_forward(i32**, i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
