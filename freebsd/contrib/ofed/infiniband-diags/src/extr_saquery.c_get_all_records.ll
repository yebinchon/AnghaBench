; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_all_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_get_all_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32 }
%struct.sa_query_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_handle*, i32, %struct.sa_query_result*)* @get_all_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_all_records(%struct.sa_handle* %0, i32 %1, %struct.sa_query_result* %2) #0 {
  %4 = alloca %struct.sa_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa_query_result*, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sa_query_result* %2, %struct.sa_query_result** %6, align 8
  %7 = load %struct.sa_handle*, %struct.sa_handle** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sa_query_result*, %struct.sa_query_result** %6, align 8
  %10 = call i32 @get_any_records(%struct.sa_handle* %7, i32 %8, i32 0, i32 0, i32* null, i32 0, %struct.sa_query_result* %9)
  ret i32 %10
}

declare dso_local i32 @get_any_records(%struct.sa_handle*, i32, i32, i32, i32*, i32, %struct.sa_query_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
