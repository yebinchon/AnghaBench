; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_sync_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_sync_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32* }

@pte_invalid = common dso_local global i32 0, align 4
@ptps_psb = common dso_local global i32 0, align 4
@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_sync_forward(%struct.pt_query_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %12 = icmp ne %struct.pt_query_decoder* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @pte_invalid, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %25 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i32*, i32** %8, align 8
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @ptps_psb, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @pte_internal, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @ptps_psb, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @ptps_psb, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = sext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %69 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %68, i32 0, i32 0
  %70 = call i32 @pt_sync_forward(i32** %7, i32* %67, %struct.TYPE_2__* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %61
  %76 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @pt_qry_start(%struct.pt_query_decoder* %76, i32* %77, i32* %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %73, %44, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pt_sync_forward(i32**, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @pt_qry_start(%struct.pt_query_decoder*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
