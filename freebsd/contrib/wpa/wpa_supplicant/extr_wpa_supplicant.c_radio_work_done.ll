; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_work_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i32, i32, i32, %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32 }
%struct.os_reltime = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Radio work '%s'@%p %s in %ld.%06ld seconds\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"canceled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radio_work_done(%struct.wpa_radio_work* %0) #0 {
  %2 = alloca %struct.wpa_radio_work*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.os_reltime, align 4
  %5 = alloca %struct.os_reltime, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %2, align 8
  %7 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %7, i32 0, i32 3
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %9, %struct.wpa_supplicant** %3, align 8
  %10 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = call i32 @os_get_reltime(%struct.os_reltime* %4)
  %14 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %14, i32 0, i32 2
  %16 = call i32 @os_reltime_sub(%struct.os_reltime* %4, i32* %15, %struct.os_reltime* %5)
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %20 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %27 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpa_dbg(%struct.wpa_supplicant* %17, i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.wpa_radio_work* %22, i8* %26, i32 %28, i32 %30)
  %32 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %33 = call i32 @radio_work_free(%struct.wpa_radio_work* %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = call i32 @radio_work_check_next(%struct.wpa_supplicant* %37)
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, i32*, %struct.os_reltime*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i32, %struct.wpa_radio_work*, i8*, i32, i32) #1

declare dso_local i32 @radio_work_free(%struct.wpa_radio_work*) #1

declare dso_local i32 @radio_work_check_next(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
