; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_process_go_disc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_dev_disc.c_p2p_process_go_disc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i32, %struct.wpabuf*)*, i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Received GO Discoverability Request - remain awake for 100 TU\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to start listen mode for client discoverability\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_process_go_disc_req(%struct.p2p_data* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %16 = call i32 @p2p_dbg(%struct.p2p_data* %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %18 = call %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data* %17, i32* null, i32 0)
  store %struct.wpabuf* %18, %struct.wpabuf** %14, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %20 = icmp eq %struct.wpabuf* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %49

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 100, i32* %13, align 4
  %26 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %27 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (i32, i32, i32, %struct.wpabuf*)*, i64 (i32, i32, i32, %struct.wpabuf*)** %29, align 8
  %31 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %32 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul i32 1024, %37
  %39 = udiv i32 %38, 1000
  %40 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %41 = call i64 %30(i32 %35, i32 %36, i32 %39, %struct.wpabuf* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %45 = call i32 @p2p_dbg(%struct.p2p_data* %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %22
  %47 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %48 = call i32 @wpabuf_free(%struct.wpabuf* %47)
  br label %49

49:                                               ; preds = %46, %21
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data*, i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
