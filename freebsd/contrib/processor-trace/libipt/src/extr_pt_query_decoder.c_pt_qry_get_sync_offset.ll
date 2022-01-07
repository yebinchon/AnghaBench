; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_get_sync_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_get_sync_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@pte_invalid = common dso_local global i32 0, align 4
@pte_nosync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %9 = icmp ne %struct.pt_query_decoder* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @pte_invalid, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %10
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @pte_nosync, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %16
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %26, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
