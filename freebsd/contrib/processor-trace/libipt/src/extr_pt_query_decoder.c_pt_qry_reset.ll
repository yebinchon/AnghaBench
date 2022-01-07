; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32, i32, i32, i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_query_decoder*)* @pt_qry_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_qry_reset(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca %struct.pt_query_decoder*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %2, align 8
  %3 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %4 = icmp ne %struct.pt_query_decoder* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %8 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %7, i32 0, i32 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %10 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %11, i32 0, i32 6
  store i32* null, i32** %12, align 8
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %14 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %13, i32 0, i32 5
  %15 = call i32 @pt_last_ip_init(i32* %14)
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 4
  %18 = call i32 @pt_tnt_cache_init(i32* %17)
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %20 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %19, i32 0, i32 3
  %21 = call i32 @pt_time_init(i32* %20)
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 2
  %24 = call i32 @pt_time_init(i32* %23)
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 1
  %27 = call i32 @pt_tcal_init(i32* %26)
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %2, align 8
  %29 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %28, i32 0, i32 0
  %30 = call i32 @pt_evq_init(i32* %29)
  br label %31

31:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pt_last_ip_init(i32*) #1

declare dso_local i32 @pt_tnt_cache_init(i32*) #1

declare dso_local i32 @pt_time_init(i32*) #1

declare dso_local i32 @pt_tcal_init(i32*) #1

declare dso_local i32 @pt_evq_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
