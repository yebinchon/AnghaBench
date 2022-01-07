; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_session_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_session_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32 }
%struct.radius_session = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Timing out authentication session 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @radius_server_session_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_server_session_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radius_server_data*, align 8
  %6 = alloca %struct.radius_session*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.radius_server_data*
  store %struct.radius_server_data* %8, %struct.radius_server_data** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.radius_session*
  store %struct.radius_session* %10, %struct.radius_session** %6, align 8
  %11 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %12 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.radius_server_data*, %struct.radius_server_data** %5, align 8
  %16 = load %struct.radius_session*, %struct.radius_session** %6, align 8
  %17 = call i32 @radius_server_session_remove(%struct.radius_server_data* %15, %struct.radius_session* %16)
  ret void
}

declare dso_local i32 @RADIUS_DEBUG(i8*, i32) #1

declare dso_local i32 @radius_server_session_remove(%struct.radius_server_data*, %struct.radius_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
