; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32 }
%struct.pt_query_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pt_event*, %struct.pt_query_decoder*)* @pt_qry_event_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_ip(i32* %0, %struct.pt_event* %1, %struct.pt_query_decoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pt_event*, align 8
  %7 = alloca %struct.pt_query_decoder*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.pt_event* %1, %struct.pt_event** %6, align 8
  store %struct.pt_query_decoder* %2, %struct.pt_query_decoder** %7, align 8
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %10 = icmp ne %struct.pt_query_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %7, align 8
  %17 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %16, i32 0, i32 0
  %18 = call i32 @pt_last_ip_query(i32* %15, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pt_errcode(i32 %22)
  switch i32 %23, label %27 [
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = load %struct.pt_event*, %struct.pt_event** %6, align 8
  %26 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %14
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @pt_last_ip_query(i32*, i32*) #1

declare dso_local i32 @pt_errcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
