; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_notify_signal_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_learn.c_bgscan_learn_notify_signal_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_learn_data = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.os_reltime = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"bgscan learn: signal level changed (above=%d current_signal=%d current_noise=%d current_txrate=%d)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"bgscan learn: Start using short bgscan interval\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"bgscan learn: Start using long bgscan interval\00", align 1
@bgscan_learn_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"bgscan learn: Trigger immediate scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @bgscan_learn_notify_signal_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgscan_learn_notify_signal_change(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bgscan_learn_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.os_reltime, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.bgscan_learn_data*
  store %struct.bgscan_learn_data* %15, %struct.bgscan_learn_data** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %17 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %20 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %25 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %5
  br label %122

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %37 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %40 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %50 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %53 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = call i32 @os_get_reltime(%struct.os_reltime* %13)
  %55 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %58 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = icmp sgt i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %63, %46
  br label %110

65:                                               ; preds = %43, %29
  %66 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %67 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %70 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %80 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %83 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @bgscan_learn_timeout, align 4
  %85 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %86 = call i32 @eloop_cancel_timeout(i32 %84, %struct.bgscan_learn_data* %85, i32* null)
  %87 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %88 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @bgscan_learn_timeout, align 4
  %91 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %92 = call i32 @eloop_register_timeout(i64 %89, i32 0, i32 %90, %struct.bgscan_learn_data* %91, i32* null)
  br label %109

93:                                               ; preds = %73, %65
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = call i32 @os_get_reltime(%struct.os_reltime* %13)
  %98 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %101 = getelementptr inbounds %struct.bgscan_learn_data, %struct.bgscan_learn_data* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 10
  %105 = icmp sgt i64 %99, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %96
  br label %108

108:                                              ; preds = %107, %93
  br label %109

109:                                              ; preds = %108, %76
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @bgscan_learn_timeout, align 4
  %117 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %118 = call i32 @eloop_cancel_timeout(i32 %116, %struct.bgscan_learn_data* %117, i32* null)
  %119 = load i32, i32* @bgscan_learn_timeout, align 4
  %120 = load %struct.bgscan_learn_data*, %struct.bgscan_learn_data** %11, align 8
  %121 = call i32 @eloop_register_timeout(i64 0, i32 0, i32 %119, %struct.bgscan_learn_data* %120, i32* null)
  br label %122

122:                                              ; preds = %28, %113, %110
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.bgscan_learn_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, i32, %struct.bgscan_learn_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
