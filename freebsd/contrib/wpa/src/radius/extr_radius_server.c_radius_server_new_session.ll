; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_new_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_new_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_session = type { %struct.radius_session*, i64, %struct.radius_client*, %struct.radius_server_data* }
%struct.radius_server_data = type { i64, i32 }
%struct.radius_client = type { %struct.radius_session* }

@RADIUS_MAX_SESSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Maximum number of existing session - no room for a new session\00", align 1
@RADIUS_SESSION_TIMEOUT = common dso_local global i32 0, align 4
@radius_server_session_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_session* (%struct.radius_server_data*, %struct.radius_client*)* @radius_server_new_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_session* @radius_server_new_session(%struct.radius_server_data* %0, %struct.radius_client* %1) #0 {
  %3 = alloca %struct.radius_session*, align 8
  %4 = alloca %struct.radius_server_data*, align 8
  %5 = alloca %struct.radius_client*, align 8
  %6 = alloca %struct.radius_session*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %4, align 8
  store %struct.radius_client* %1, %struct.radius_client** %5, align 8
  %7 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %8 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RADIUS_MAX_SESSION, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store %struct.radius_session* null, %struct.radius_session** %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = call %struct.radius_session* @os_zalloc(i32 32)
  store %struct.radius_session* %15, %struct.radius_session** %6, align 8
  %16 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %17 = icmp eq %struct.radius_session* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.radius_session* null, %struct.radius_session** %3, align 8
  br label %51

19:                                               ; preds = %14
  %20 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %21 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %22 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %21, i32 0, i32 3
  store %struct.radius_server_data* %20, %struct.radius_server_data** %22, align 8
  %23 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %24 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %25 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %24, i32 0, i32 2
  store %struct.radius_client* %23, %struct.radius_client** %25, align 8
  %26 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %27 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %32 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %34 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %33, i32 0, i32 0
  %35 = load %struct.radius_session*, %struct.radius_session** %34, align 8
  %36 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %37 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %36, i32 0, i32 0
  store %struct.radius_session* %35, %struct.radius_session** %37, align 8
  %38 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %39 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %40 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %39, i32 0, i32 0
  store %struct.radius_session* %38, %struct.radius_session** %40, align 8
  %41 = load i32, i32* @RADIUS_SESSION_TIMEOUT, align 4
  %42 = load i32, i32* @radius_server_session_timeout, align 4
  %43 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %44 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %45 = call i32 @eloop_register_timeout(i32 %41, i32 0, i32 %42, %struct.radius_server_data* %43, %struct.radius_session* %44)
  %46 = load %struct.radius_server_data*, %struct.radius_server_data** %4, align 8
  %47 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  store %struct.radius_session* %50, %struct.radius_session** %3, align 8
  br label %51

51:                                               ; preds = %19, %18, %12
  %52 = load %struct.radius_session*, %struct.radius_session** %3, align 8
  ret %struct.radius_session* %52
}

declare dso_local i32 @RADIUS_DEBUG(i8*) #1

declare dso_local %struct.radius_session* @os_zalloc(i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.radius_server_data*, %struct.radius_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
