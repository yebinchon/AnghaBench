; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_named_pipe.c_global_close_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_named_pipe.c_global_close_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global_dst = type { i64, %struct.wpa_global_dst*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CTRL: close pipe %p\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_global_dst*)* @global_close_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_close_pipe(%struct.wpa_global_dst* %0) #0 {
  %2 = alloca %struct.wpa_global_dst*, align 8
  store %struct.wpa_global_dst* %0, %struct.wpa_global_dst** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %5 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.wpa_global_dst* %4)
  %6 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @eloop_unregister_event(i64 %15, i32 8)
  %17 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @CloseHandle(i64 %20)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %30 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @CloseHandle(i64 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %35 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %43 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %45, align 8
  br label %54

46:                                               ; preds = %33
  %47 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %48 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %51 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %56 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %61 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %64 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %66, align 8
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %69 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %68, i32 0, i32 1
  %70 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %69, align 8
  %71 = call i32 @os_free(%struct.wpa_global_dst* %70)
  %72 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %2, align 8
  %73 = call i32 @os_free(%struct.wpa_global_dst* %72)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wpa_global_dst*) #1

declare dso_local i32 @eloop_unregister_event(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @os_free(%struct.wpa_global_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
