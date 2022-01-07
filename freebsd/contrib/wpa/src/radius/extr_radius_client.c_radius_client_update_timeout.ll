; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_update_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32, %struct.radius_msg_list* }
%struct.radius_msg_list = type { i64, %struct.radius_msg_list* }
%struct.os_reltime = type { i64 }

@radius_client_timer = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Next RADIUS client retransmit in %ld seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_client_data*)* @radius_client_update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_update_timeout(%struct.radius_client_data* %0) #0 {
  %2 = alloca %struct.radius_client_data*, align 8
  %3 = alloca %struct.os_reltime, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radius_msg_list*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %2, align 8
  %6 = load i32, i32* @radius_client_timer, align 4
  %7 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %8 = call i32 @eloop_cancel_timeout(i32 %6, %struct.radius_client_data* %7, i32* null)
  %9 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %10 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %9, i32 0, i32 1
  %11 = load %struct.radius_msg_list*, %struct.radius_msg_list** %10, align 8
  %12 = icmp eq %struct.radius_msg_list* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  %15 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %16 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %15, i32 0, i32 1
  %17 = load %struct.radius_msg_list*, %struct.radius_msg_list** %16, align 8
  store %struct.radius_msg_list* %17, %struct.radius_msg_list** %5, align 8
  br label %18

18:                                               ; preds = %35, %14
  %19 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %20 = icmp ne %struct.radius_msg_list* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %26 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %21
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %32 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %37 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %36, i32 0, i32 1
  %38 = load %struct.radius_msg_list*, %struct.radius_msg_list** %37, align 8
  store %struct.radius_msg_list* %38, %struct.radius_msg_list** %5, align 8
  br label %18

39:                                               ; preds = %18
  %40 = call i32 @os_get_reltime(%struct.os_reltime* %3)
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %3, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = load i32, i32* @radius_client_timer, align 4
  %54 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %55 = call i32 @eloop_register_timeout(i64 %52, i32 0, i32 %53, %struct.radius_client_data* %54, i32* null)
  %56 = load %struct.radius_client_data*, %struct.radius_client_data** %2, align 8
  %57 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %60 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %3, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %61, %63
  %65 = call i32 @hostapd_logger(i32 %58, i32* null, i32 %59, i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %48, %13
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_client_data*, i32*) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, i32, %struct.radius_client_data*, i32*) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
