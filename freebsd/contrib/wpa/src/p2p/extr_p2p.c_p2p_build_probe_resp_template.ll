; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_probe_resp_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_probe_resp_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32 }

@__const.p2p_build_probe_resp_template.addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"CTRL: Failed to build Probe Response IEs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @p2p_build_probe_resp_template(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.p2p_build_probe_resp_template.addr to i8*), i64 24, i1 false)
  %11 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %12 = call %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data* %11, i32* null, i32 0)
  store %struct.wpabuf* %12, %struct.wpabuf** %6, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = icmp ne %struct.wpabuf* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = call i64 @wpabuf_len(%struct.wpabuf* %19)
  %21 = add nsw i64 200, %20
  %22 = call %struct.wpabuf* @wpabuf_alloc(i64 %21)
  store %struct.wpabuf* %22, %struct.wpabuf** %7, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %24 = icmp ne %struct.wpabuf* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %27 = call i32 @wpabuf_free(%struct.wpabuf* %26)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %44

28:                                               ; preds = %18
  %29 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @p2p_build_probe_resp_buf(%struct.p2p_data* %29, %struct.wpabuf* %30, %struct.wpabuf* %31, i32* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %36 = call i32 @wpabuf_free(%struct.wpabuf* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %41 = call i32 @wpabuf_free(%struct.wpabuf* %40)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %44

42:                                               ; preds = %28
  %43 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* %43, %struct.wpabuf** %3, align 8
  br label %44

44:                                               ; preds = %42, %39, %25, %15
  %45 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @p2p_build_probe_resp_buf(%struct.p2p_data*, %struct.wpabuf*, %struct.wpabuf*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
