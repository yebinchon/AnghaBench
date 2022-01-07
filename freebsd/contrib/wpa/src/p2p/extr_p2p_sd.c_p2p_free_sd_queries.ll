; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_free_sd_queries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_free_sd_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, %struct.p2p_sd_query* }
%struct.p2p_sd_query = type { %struct.p2p_sd_query* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_free_sd_queries(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  %3 = alloca %struct.p2p_sd_query*, align 8
  %4 = alloca %struct.p2p_sd_query*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %5 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %6 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %5, i32 0, i32 1
  %7 = load %struct.p2p_sd_query*, %struct.p2p_sd_query** %6, align 8
  store %struct.p2p_sd_query* %7, %struct.p2p_sd_query** %3, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 1
  store %struct.p2p_sd_query* null, %struct.p2p_sd_query** %9, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.p2p_sd_query*, %struct.p2p_sd_query** %3, align 8
  %12 = icmp ne %struct.p2p_sd_query* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.p2p_sd_query*, %struct.p2p_sd_query** %3, align 8
  store %struct.p2p_sd_query* %14, %struct.p2p_sd_query** %4, align 8
  %15 = load %struct.p2p_sd_query*, %struct.p2p_sd_query** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_sd_query, %struct.p2p_sd_query* %15, i32 0, i32 0
  %17 = load %struct.p2p_sd_query*, %struct.p2p_sd_query** %16, align 8
  store %struct.p2p_sd_query* %17, %struct.p2p_sd_query** %3, align 8
  %18 = load %struct.p2p_sd_query*, %struct.p2p_sd_query** %4, align 8
  %19 = call i32 @p2p_free_sd_query(%struct.p2p_sd_query* %18)
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i32 @p2p_free_sd_query(%struct.p2p_sd_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
