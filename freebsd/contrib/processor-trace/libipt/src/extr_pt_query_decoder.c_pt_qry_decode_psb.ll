; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_psb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32*, i32, i32*, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_psbend = common dso_local global i32 0, align 4
@pt_decode_psb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_psb(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 3
  %19 = call i32 @pt_pkt_read_psb(i32* %16, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %12
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 4
  %27 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %27, i32 0, i32 3
  %29 = call i32 @pt_tcal_update_psb(i32* %26, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %37 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %37, align 8
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %42 = call i32 @pt_qry_read_psb_header(%struct.pt_query_decoder* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %34
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %48 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %49, i32 0, i32 1
  %51 = load i32, i32* @evb_psbend, align 4
  %52 = call i32 @pt_evq_clear(i32* %50, i32 %51)
  %53 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %54 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %53, i32 0, i32 0
  store i32* @pt_decode_psb, i32** %54, align 8
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %45, %32, %22, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pt_pkt_read_psb(i32*, i32*) #1

declare dso_local i32 @pt_tcal_update_psb(i32*, i32*) #1

declare dso_local i32 @pt_qry_read_psb_header(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_evq_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
