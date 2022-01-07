; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_eap_pending_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_eap_pending_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { %struct.radius_client* }
%struct.radius_client = type { %struct.radius_session*, %struct.radius_client* }
%struct.radius_session = type { i8*, i32, i32, i32, i32, %struct.radius_msg*, %struct.radius_session* }
%struct.radius_msg = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"No session matched callback ctx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_server_eap_pending_cb(%struct.radius_server_data* %0, i8* %1) #0 {
  %3 = alloca %struct.radius_server_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radius_client*, align 8
  %6 = alloca %struct.radius_session*, align 8
  %7 = alloca %struct.radius_session*, align 8
  %8 = alloca %struct.radius_msg*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.radius_session* null, %struct.radius_session** %7, align 8
  %9 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %10 = icmp eq %struct.radius_server_data* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %90

12:                                               ; preds = %2
  %13 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %14 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %13, i32 0, i32 0
  %15 = load %struct.radius_client*, %struct.radius_client** %14, align 8
  store %struct.radius_client* %15, %struct.radius_client** %5, align 8
  br label %16

16:                                               ; preds = %49, %12
  %17 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %18 = icmp ne %struct.radius_client* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %21 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %20, i32 0, i32 0
  %22 = load %struct.radius_session*, %struct.radius_session** %21, align 8
  store %struct.radius_session* %22, %struct.radius_session** %6, align 8
  br label %23

23:                                               ; preds = %40, %19
  %24 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %25 = icmp ne %struct.radius_session* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %28 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %34 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %33, i32 0, i32 5
  %35 = load %struct.radius_msg*, %struct.radius_msg** %34, align 8
  %36 = icmp ne %struct.radius_msg* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  store %struct.radius_session* %38, %struct.radius_session** %7, align 8
  br label %44

39:                                               ; preds = %32, %26
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %42 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %41, i32 0, i32 6
  %43 = load %struct.radius_session*, %struct.radius_session** %42, align 8
  store %struct.radius_session* %43, %struct.radius_session** %6, align 8
  br label %23

44:                                               ; preds = %37, %23
  %45 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %46 = icmp ne %struct.radius_session* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %53

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %51 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %50, i32 0, i32 1
  %52 = load %struct.radius_client*, %struct.radius_client** %51, align 8
  store %struct.radius_client* %52, %struct.radius_client** %5, align 8
  br label %16

53:                                               ; preds = %47, %16
  %54 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %55 = icmp eq %struct.radius_session* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %90

58:                                               ; preds = %53
  %59 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %60 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %59, i32 0, i32 5
  %61 = load %struct.radius_msg*, %struct.radius_msg** %60, align 8
  store %struct.radius_msg* %61, %struct.radius_msg** %8, align 8
  %62 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %63 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %62, i32 0, i32 5
  store %struct.radius_msg* null, %struct.radius_msg** %63, align 8
  %64 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %65 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @eap_sm_pending_cb(i8* %66)
  %68 = load %struct.radius_server_data*, %struct.radius_server_data** %3, align 8
  %69 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %70 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %71 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %70, i32 0, i32 4
  %72 = bitcast i32* %71 to %struct.sockaddr*
  %73 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %74 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.radius_client*, %struct.radius_client** %5, align 8
  %77 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %78 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %81 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.radius_session*, %struct.radius_session** %7, align 8
  %84 = call i32 @radius_server_request(%struct.radius_server_data* %68, %struct.radius_msg* %69, %struct.sockaddr* %72, i32 %75, %struct.radius_client* %76, i32 %79, i32 %82, %struct.radius_session* %83)
  %85 = icmp eq i32 %84, -2
  br i1 %85, label %86, label %87

86:                                               ; preds = %58
  br label %90

87:                                               ; preds = %58
  %88 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %89 = call i32 @radius_msg_free(%struct.radius_msg* %88)
  br label %90

90:                                               ; preds = %87, %86, %56, %11
  ret void
}

declare dso_local i32 @RADIUS_DEBUG(i8*) #1

declare dso_local i32 @eap_sm_pending_cb(i8*) #1

declare dso_local i32 @radius_server_request(%struct.radius_server_data*, %struct.radius_msg*, %struct.sockaddr*, i32, %struct.radius_client*, i32, i32, %struct.radius_session*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
