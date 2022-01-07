; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_send_gas_comeback_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_sd.c_p2p_send_gas_comeback_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }

@P2P_NO_PENDING_ACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to send Action frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32*, i32, i32)* @p2p_send_gas_comeback_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_send_gas_comeback_req(%struct.p2p_data* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.wpabuf* @gas_build_comeback_req(i32 %10)
  store %struct.wpabuf* %11, %struct.wpabuf** %9, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %40

15:                                               ; preds = %4
  %16 = load i32, i32* @P2P_NO_PENDING_ACTION, align 4
  %17 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %18 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %23 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = call i32 @wpabuf_head(%struct.wpabuf* %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %31 = call i32 @wpabuf_len(%struct.wpabuf* %30)
  %32 = call i64 @p2p_send_action(%struct.p2p_data* %19, i32 %20, i32* %21, i32 %26, i32* %27, i32 %29, i32 %31, i32 200)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %36 = call i32 @p2p_dbg(%struct.p2p_data* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %15
  %38 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %39 = call i32 @wpabuf_free(%struct.wpabuf* %38)
  br label %40

40:                                               ; preds = %37, %14
  ret void
}

declare dso_local %struct.wpabuf* @gas_build_comeback_req(i32) #1

declare dso_local i64 @p2p_send_action(%struct.p2p_data*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
