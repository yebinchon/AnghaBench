; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_send_tear_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_send_tear_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.fst_tear_down = type { i32, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No FST setup to tear down\00", align 1
@FST_ACTION_TEAR_DOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"FST TearDown sent\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to send FST TearDown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fst_session*)* @fst_session_send_tear_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_session_send_tear_down(%struct.fst_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fst_session*, align 8
  %4 = alloca %struct.fst_tear_down, align 4
  %5 = alloca i32, align 4
  store %struct.fst_session* %0, %struct.fst_session** %3, align 8
  %6 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %7 = call i32 @fst_session_is_in_progress(%struct.fst_session* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %11 = load i32, i32* @MSG_ERROR, align 4
  %12 = call i32 @fst_printf_session(%struct.fst_session* %10, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %15 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @WPA_ASSERT(i32 %19)
  %21 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %22 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @WPA_ASSERT(i32 %26)
  %28 = call i32 @os_memset(%struct.fst_tear_down* %4, i32 0, i32 8)
  %29 = load i32, i32* @FST_ACTION_TEAR_DOWN, align 4
  %30 = getelementptr inbounds %struct.fst_tear_down, %struct.fst_tear_down* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %32 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @host_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.fst_tear_down, %struct.fst_tear_down* %4, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @fst_session_send_action(%struct.fst_session* %37, i32 %38, %struct.fst_tear_down* %4, i32 8, i32* null)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %13
  %43 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 @fst_printf_sframe(%struct.fst_session* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %52

47:                                               ; preds = %13
  %48 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32, i32* @MSG_ERROR, align 4
  %51 = call i32 @fst_printf_sframe(%struct.fst_session* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @fst_session_is_in_progress(%struct.fst_session*) #1

declare dso_local i32 @fst_printf_session(%struct.fst_session*, i32, i8*) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32 @os_memset(%struct.fst_tear_down*, i32, i32) #1

declare dso_local i32 @host_to_le32(i32) #1

declare dso_local i32 @fst_session_send_action(%struct.fst_session*, i32, %struct.fst_tear_down*, i32, i32*) #1

declare dso_local i32 @fst_printf_sframe(%struct.fst_session*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
