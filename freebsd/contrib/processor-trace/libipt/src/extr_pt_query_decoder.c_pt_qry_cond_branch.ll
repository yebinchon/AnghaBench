; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_cond_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_cond_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_cond_branch(%struct.pt_query_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %9 = icmp ne %struct.pt_query_decoder* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @pte_invalid, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %17, i32 0, i32 0
  %19 = call i64 @pt_tnt_cache_is_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %23 = call i32 @pt_qry_cache_tnt(%struct.pt_query_decoder* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %16
  %30 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %31 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %30, i32 0, i32 0
  %32 = call i32 @pt_tnt_cache_query(i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %41 = call i32 @pt_qry_status_flags(%struct.pt_query_decoder* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %35, %26, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @pt_tnt_cache_is_empty(i32*) #1

declare dso_local i32 @pt_qry_cache_tnt(%struct.pt_query_decoder*) #1

declare dso_local i32 @pt_tnt_cache_query(i32*) #1

declare dso_local i32 @pt_qry_status_flags(%struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
