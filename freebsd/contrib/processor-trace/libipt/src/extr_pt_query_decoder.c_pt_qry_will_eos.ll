; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_will_eos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_will_eos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, %struct.pt_decoder_function* }
%struct.pt_decoder_function = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_will_eos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_will_eos(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_decoder_function*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %6 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %7 = icmp ne %struct.pt_query_decoder* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %12, i32 0, i32 2
  %14 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %13, align 8
  store %struct.pt_decoder_function* %14, %struct.pt_decoder_function** %4, align 8
  %15 = load %struct.pt_decoder_function*, %struct.pt_decoder_function** %4, align 8
  %16 = icmp ne %struct.pt_decoder_function* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %30

18:                                               ; preds = %11
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 0
  %24 = call i32 @pt_df_fetch(%struct.pt_decoder_function** %4, i32 %21, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @pte_eos, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %17, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pt_df_fetch(%struct.pt_decoder_function**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
