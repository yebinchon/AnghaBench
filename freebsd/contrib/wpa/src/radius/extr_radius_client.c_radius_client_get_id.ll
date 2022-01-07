; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { %struct.radius_msg_list*, i32, i32 }
%struct.radius_msg_list = type { %struct.radius_msg_list*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Removing pending RADIUS message, since its id (%d) is reused\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @radius_client_get_id(%struct.radius_client_data* %0) #0 {
  %2 = alloca %struct.radius_client_data*, align 8
  %3 = alloca %struct.radius_msg_list*, align 8
  %4 = alloca %struct.radius_msg_list*, align 8
  %5 = alloca %struct.radius_msg_list*, align 8
  %6 = alloca i64, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %2, align 8
  %7 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %8 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %9 to i64
  store i64 %11, i64* %6, align 8
  %12 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %13 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %12, i32 0, i32 0
  %14 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  store %struct.radius_msg_list* %14, %struct.radius_msg_list** %3, align 8
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %4, align 8
  br label %15

15:                                               ; preds = %65, %1
  %16 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  %17 = icmp ne %struct.radius_msg_list* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  %20 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @radius_msg_get_hdr(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %18
  %28 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %29 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  %32 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %35 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @hostapd_logger(i32 %30, i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.radius_msg_list*, %struct.radius_msg_list** %4, align 8
  %39 = icmp ne %struct.radius_msg_list* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  %42 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %41, i32 0, i32 0
  %43 = load %struct.radius_msg_list*, %struct.radius_msg_list** %42, align 8
  %44 = load %struct.radius_msg_list*, %struct.radius_msg_list** %4, align 8
  %45 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %44, i32 0, i32 0
  store %struct.radius_msg_list* %43, %struct.radius_msg_list** %45, align 8
  br label %52

46:                                               ; preds = %27
  %47 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  %48 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %47, i32 0, i32 0
  %49 = load %struct.radius_msg_list*, %struct.radius_msg_list** %48, align 8
  %50 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %51 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %50, i32 0, i32 0
  store %struct.radius_msg_list* %49, %struct.radius_msg_list** %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  store %struct.radius_msg_list* %53, %struct.radius_msg_list** %5, align 8
  br label %56

54:                                               ; preds = %18
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %5, align 8
  %55 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  store %struct.radius_msg_list* %55, %struct.radius_msg_list** %4, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.radius_msg_list*, %struct.radius_msg_list** %3, align 8
  %58 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %57, i32 0, i32 0
  %59 = load %struct.radius_msg_list*, %struct.radius_msg_list** %58, align 8
  store %struct.radius_msg_list* %59, %struct.radius_msg_list** %3, align 8
  %60 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %61 = icmp ne %struct.radius_msg_list* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %64 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %15

66:                                               ; preds = %15
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local %struct.TYPE_2__* @radius_msg_get_hdr(i32) #1

declare dso_local i32 @hostapd_logger(i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @radius_client_msg_free(%struct.radius_msg_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
