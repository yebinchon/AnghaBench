; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_flush_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_flush_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, %struct.radius_msg_list*, i32 }
%struct.radius_msg_list = type { i64, %struct.radius_msg_list*, i32 }

@RADIUS_AUTH = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Removing pending RADIUS authentication message for removed client\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_client_flush_auth(%struct.radius_client_data* %0, i32* %1) #0 {
  %3 = alloca %struct.radius_client_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.radius_msg_list*, align 8
  %6 = alloca %struct.radius_msg_list*, align 8
  %7 = alloca %struct.radius_msg_list*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %6, align 8
  %8 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %9 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %8, i32 0, i32 1
  %10 = load %struct.radius_msg_list*, %struct.radius_msg_list** %9, align 8
  store %struct.radius_msg_list* %10, %struct.radius_msg_list** %5, align 8
  br label %11

11:                                               ; preds = %61, %50, %2
  %12 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %13 = icmp ne %struct.radius_msg_list* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %16 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RADIUS_AUTH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %22 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i64 @os_memcmp(i32 %23, i32* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %20
  %29 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %30 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %34 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %35 = call i32 @hostapd_logger(i32 %31, i32* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %37 = icmp ne %struct.radius_msg_list* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %40 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %39, i32 0, i32 1
  %41 = load %struct.radius_msg_list*, %struct.radius_msg_list** %40, align 8
  %42 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %43 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %42, i32 0, i32 1
  store %struct.radius_msg_list* %41, %struct.radius_msg_list** %43, align 8
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %46 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %45, i32 0, i32 1
  %47 = load %struct.radius_msg_list*, %struct.radius_msg_list** %46, align 8
  %48 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %49 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %48, i32 0, i32 1
  store %struct.radius_msg_list* %47, %struct.radius_msg_list** %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  store %struct.radius_msg_list* %51, %struct.radius_msg_list** %7, align 8
  %52 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %53 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %52, i32 0, i32 1
  %54 = load %struct.radius_msg_list*, %struct.radius_msg_list** %53, align 8
  store %struct.radius_msg_list* %54, %struct.radius_msg_list** %5, align 8
  %55 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %56 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %55)
  %57 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %58 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  br label %11

61:                                               ; preds = %20, %14
  %62 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  store %struct.radius_msg_list* %62, %struct.radius_msg_list** %6, align 8
  %63 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %64 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %63, i32 0, i32 1
  %65 = load %struct.radius_msg_list*, %struct.radius_msg_list** %64, align 8
  store %struct.radius_msg_list* %65, %struct.radius_msg_list** %5, align 8
  br label %11

66:                                               ; preds = %11
  ret void
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @radius_client_msg_free(%struct.radius_msg_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
