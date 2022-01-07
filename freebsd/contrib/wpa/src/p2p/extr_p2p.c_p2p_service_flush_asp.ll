; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_service_flush_asp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_service_flush_asp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.p2ps_advertisement* }
%struct.p2ps_advertisement = type { %struct.p2ps_advertisement* }

@.str = private unnamed_addr constant [31 x i8] c"All ASP advertisements flushed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_service_flush_asp(%struct.p2p_data* %0) #0 {
  %2 = alloca %struct.p2p_data*, align 8
  %3 = alloca %struct.p2ps_advertisement*, align 8
  %4 = alloca %struct.p2ps_advertisement*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %2, align 8
  %5 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %6 = icmp ne %struct.p2p_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %10 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %9, i32 0, i32 0
  %11 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %10, align 8
  store %struct.p2ps_advertisement* %11, %struct.p2ps_advertisement** %3, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %3, align 8
  %14 = icmp ne %struct.p2ps_advertisement* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %3, align 8
  store %struct.p2ps_advertisement* %16, %struct.p2ps_advertisement** %4, align 8
  %17 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %3, align 8
  %18 = getelementptr inbounds %struct.p2ps_advertisement, %struct.p2ps_advertisement* %17, i32 0, i32 0
  %19 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %18, align 8
  store %struct.p2ps_advertisement* %19, %struct.p2ps_advertisement** %3, align 8
  %20 = load %struct.p2ps_advertisement*, %struct.p2ps_advertisement** %4, align 8
  %21 = call i32 @os_free(%struct.p2ps_advertisement* %20)
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 0
  store %struct.p2ps_advertisement* null, %struct.p2ps_advertisement** %24, align 8
  %25 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %26 = call i32 @p2ps_prov_free(%struct.p2p_data* %25)
  %27 = load %struct.p2p_data*, %struct.p2p_data** %2, align 8
  %28 = call i32 @p2p_dbg(%struct.p2p_data* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @os_free(%struct.p2ps_advertisement*) #1

declare dso_local i32 @p2ps_prov_free(%struct.p2p_data*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
