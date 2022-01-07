; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_work_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_work_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.wpa_radio_work*, %struct.wpa_radio_work* }
%struct.TYPE_3__ = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Freeing radio work '%s'@%p (started=%d) that is marked as scan_work\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"radio_work_free('%s'@%p): num_active_works --> %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*)* @radio_work_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radio_work_free(%struct.wpa_radio_work* %0) #0 {
  %2 = alloca %struct.wpa_radio_work*, align 8
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %2, align 8
  %3 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %6, align 8
  %8 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %9 = icmp eq %struct.wpa_radio_work* %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %19 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %20 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @wpa_dbg(%struct.TYPE_4__* %13, i32 %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.wpa_radio_work* %18, i64 %21)
  %23 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %26, align 8
  br label %27

27:                                               ; preds = %10, %1
  %28 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %29 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %42 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %46 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %49 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %50 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @wpa_dbg(%struct.TYPE_4__* %43, i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %47, %struct.wpa_radio_work* %48, i64 %55)
  br label %57

57:                                               ; preds = %32, %27
  %58 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %59 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %58, i32 0, i32 0
  %60 = call i32 @dl_list_del(i32* %59)
  %61 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %2, align 8
  %62 = call i32 @os_free(%struct.wpa_radio_work* %61)
  ret void
}

declare dso_local i32 @wpa_dbg(%struct.TYPE_4__*, i32, i8*, i32, %struct.wpa_radio_work*, i64) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @os_free(%struct.wpa_radio_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
