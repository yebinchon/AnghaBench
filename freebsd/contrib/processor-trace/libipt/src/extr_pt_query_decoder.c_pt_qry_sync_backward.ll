; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_sync_backward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_sync_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@pte_invalid = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %10 = icmp ne %struct.pt_query_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @pte_invalid, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %58, %48, %25
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %30 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %29, i32 0, i32 1
  %31 = call i32 @pt_sync_backward(i32** %7, i32* %28, %struct.TYPE_2__* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %27
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @pt_qry_start(%struct.pt_query_decoder* %37, i32* %38, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @pte_eos, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %27

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %36
  %52 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %53 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  br label %27

59:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %49, %34, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @pt_sync_backward(i32**, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @pt_qry_start(%struct.pt_query_decoder*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
