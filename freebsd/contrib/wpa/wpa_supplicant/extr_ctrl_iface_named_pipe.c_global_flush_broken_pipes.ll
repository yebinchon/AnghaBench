; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_named_pipe.c_global_flush_broken_pipes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_named_pipe.c_global_flush_broken_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_global_priv = type { %struct.wpa_global_dst* }
%struct.wpa_global_dst = type { i32, i32, %struct.wpa_global_dst* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL: closing broken pipe %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctrl_iface_global_priv*)* @global_flush_broken_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_flush_broken_pipes(%struct.ctrl_iface_global_priv* %0) #0 {
  %2 = alloca %struct.ctrl_iface_global_priv*, align 8
  %3 = alloca %struct.wpa_global_dst*, align 8
  %4 = alloca %struct.wpa_global_dst*, align 8
  store %struct.ctrl_iface_global_priv* %0, %struct.ctrl_iface_global_priv** %2, align 8
  %5 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %5, i32 0, i32 0
  %7 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %6, align 8
  store %struct.wpa_global_dst* %7, %struct.wpa_global_dst** %3, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %3, align 8
  %10 = icmp ne %struct.wpa_global_dst* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %12, i32 0, i32 2
  %14 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %13, align 8
  store %struct.wpa_global_dst* %14, %struct.wpa_global_dst** %4, align 8
  %15 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_global_dst, %struct.wpa_global_dst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ctrl_broken_pipe(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %11
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %3, align 8
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.wpa_global_dst* %25)
  %27 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %3, align 8
  %28 = call i32 @global_close_pipe(%struct.wpa_global_dst* %27)
  br label %29

29:                                               ; preds = %23, %11
  %30 = load %struct.wpa_global_dst*, %struct.wpa_global_dst** %4, align 8
  store %struct.wpa_global_dst* %30, %struct.wpa_global_dst** %3, align 8
  br label %8

31:                                               ; preds = %8
  ret void
}

declare dso_local i64 @ctrl_broken_pipe(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wpa_global_dst*) #1

declare dso_local i32 @global_close_pipe(%struct.wpa_global_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
