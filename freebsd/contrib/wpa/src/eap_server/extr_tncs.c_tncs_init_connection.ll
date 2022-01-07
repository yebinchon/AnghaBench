; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_init_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { %struct.TYPE_2__*, i32, %struct.tnc_if_imv* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.tnc_if_imv = type { %struct.tnc_if_imv* }

@TNC_CONNECTION_STATE_CREATE = common dso_local global i32 0, align 4
@TNC_CONNECTION_STATE_HANDSHAKE = common dso_local global i32 0, align 4
@TNC_MAX_IMV_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tncs_init_connection(%struct.tncs_data* %0) #0 {
  %2 = alloca %struct.tncs_data*, align 8
  %3 = alloca %struct.tnc_if_imv*, align 8
  %4 = alloca i32, align 4
  store %struct.tncs_data* %0, %struct.tncs_data** %2, align 8
  %5 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %6 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %5, i32 0, i32 2
  %7 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %6, align 8
  store %struct.tnc_if_imv* %7, %struct.tnc_if_imv** %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %10 = icmp ne %struct.tnc_if_imv* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %13 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %14 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TNC_CONNECTION_STATE_CREATE, align 4
  %17 = call i32 @tncs_imv_notify_connection_change(%struct.tnc_if_imv* %12, i32 %15, i32 %16)
  %18 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %19 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %20 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TNC_CONNECTION_STATE_HANDSHAKE, align 4
  %23 = call i32 @tncs_imv_notify_connection_change(%struct.tnc_if_imv* %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %11
  %25 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %3, align 8
  %26 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %25, i32 0, i32 0
  %27 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %26, align 8
  store %struct.tnc_if_imv* %27, %struct.tnc_if_imv** %3, align 8
  br label %8

28:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TNC_MAX_IMV_ID, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %35 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @os_free(i32* %41)
  %43 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %44 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %51 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %33
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %29

60:                                               ; preds = %29
  ret void
}

declare dso_local i32 @tncs_imv_notify_connection_change(%struct.tnc_if_imv*, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
