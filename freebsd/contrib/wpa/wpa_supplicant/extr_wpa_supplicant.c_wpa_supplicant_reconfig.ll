; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_reconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { %struct.wpa_supplicant* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Signal %d received - reconfiguring\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not reopen debug log file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @wpa_supplicant_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_reconfig(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_global*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wpa_global*
  store %struct.wpa_global* %8, %struct.wpa_global** %5, align 8
  %9 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %9, i32 0, i32 0
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  store %struct.wpa_supplicant* %11, %struct.wpa_supplicant** %6, align 8
  br label %12

12:                                               ; preds = %27, %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %14 = icmp ne %struct.wpa_supplicant* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @wpa_dbg(%struct.wpa_supplicant* %16, i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %21 = call i64 @wpa_supplicant_reload_configuration(%struct.wpa_supplicant* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %25 = call i32 @wpa_supplicant_terminate_proc(%struct.wpa_global* %24)
  br label %26

26:                                               ; preds = %23, %15
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %29, align 8
  store %struct.wpa_supplicant* %30, %struct.wpa_supplicant** %6, align 8
  br label %12

31:                                               ; preds = %12
  %32 = call i64 (...) @wpa_debug_reopen_file()
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i32) #1

declare dso_local i64 @wpa_supplicant_reload_configuration(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_terminate_proc(%struct.wpa_global*) #1

declare dso_local i64 @wpa_debug_reopen_file(...) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
