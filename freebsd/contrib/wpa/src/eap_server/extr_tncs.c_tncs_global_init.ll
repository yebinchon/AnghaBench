; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_global_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.tnc_if_imv* }
%struct.tnc_if_imv = type { i32, %struct.tnc_if_imv* }

@tncs_global_data = common dso_local global %struct.TYPE_4__* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TNC: Failed to read TNC configuration\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TNC: Failed to load IMV '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tncs_global_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tnc_if_imv*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tncs_global_data, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %43

6:                                                ; preds = %0
  %7 = call %struct.TYPE_4__* @os_zalloc(i32 8)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** @tncs_global_data, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tncs_global_data, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %43

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tncs_global_data, align 8
  %13 = call i64 @tncs_read_config(%struct.TYPE_4__* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %41

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tncs_global_data, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %20, align 8
  store %struct.tnc_if_imv* %21, %struct.tnc_if_imv** %2, align 8
  br label %22

22:                                               ; preds = %36, %18
  %23 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %2, align 8
  %24 = icmp ne %struct.tnc_if_imv* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %2, align 8
  %27 = call i64 @tncs_load_imv(%struct.tnc_if_imv* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @MSG_ERROR, align 4
  %31 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %2, align 8
  %32 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %41

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %2, align 8
  %38 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %37, i32 0, i32 1
  %39 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %38, align 8
  store %struct.tnc_if_imv* %39, %struct.tnc_if_imv** %2, align 8
  br label %22

40:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %43

41:                                               ; preds = %29, %15
  %42 = call i32 (...) @tncs_global_deinit()
  store i32 -1, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %40, %10, %5
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_4__* @os_zalloc(i32) #1

declare dso_local i64 @tncs_read_config(%struct.TYPE_4__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tncs_load_imv(%struct.tnc_if_imv*) #1

declare dso_local i32 @tncs_global_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
