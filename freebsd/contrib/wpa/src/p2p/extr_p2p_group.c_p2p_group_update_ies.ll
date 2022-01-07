; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_update_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_group.c_p2p_group_update_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.wpabuf*, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"P2P: Update GO Probe Response P2P IE\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"P2P: Update GO Beacon P2P IE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_group_update_ies(%struct.p2p_group* %0) #0 {
  %2 = alloca %struct.p2p_group*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.p2p_group* %0, %struct.p2p_group** %2, align 8
  %5 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %6 = call %struct.wpabuf* @p2p_group_build_probe_resp_ie(%struct.p2p_group* %5)
  store %struct.wpabuf* %6, %struct.wpabuf** %4, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_MSGDUMP, align 4
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i32 @wpa_hexdump_buf(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %12)
  %14 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %15 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %20 = call %struct.wpabuf* @p2p_group_build_beacon_ie(%struct.p2p_group* %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %3, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %25 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @MSG_MSGDUMP, align 4
  %28 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %29 = call i32 @wpa_hexdump_buf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %28)
  br label %31

30:                                               ; preds = %10
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %33 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32, %struct.wpabuf*, %struct.wpabuf*)*, i32 (i32, %struct.wpabuf*, %struct.wpabuf*)** %35, align 8
  %37 = load %struct.p2p_group*, %struct.p2p_group** %2, align 8
  %38 = getelementptr inbounds %struct.p2p_group, %struct.p2p_group* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = call i32 %36(i32 %41, %struct.wpabuf* %42, %struct.wpabuf* %43)
  br label %45

45:                                               ; preds = %31, %9
  ret void
}

declare dso_local %struct.wpabuf* @p2p_group_build_probe_resp_ie(%struct.p2p_group*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @p2p_group_build_beacon_ie(%struct.p2p_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
