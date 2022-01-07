; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_notify_signal_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_notify_signal_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgscan_simple_data = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.os_reltime = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"bgscan simple: signal level changed (above=%d current_signal=%d current_noise=%d current_txrate=%d))\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"bgscan simple: Start using short bgscan interval\00", align 1
@bgscan_simple_timeout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"bgscan simple: Start using long bgscan interval\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"bgscan simple: Trigger immediate scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @bgscan_simple_notify_signal_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgscan_simple_notify_signal_change(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bgscan_simple_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.os_reltime, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.bgscan_simple_data*
  store %struct.bgscan_simple_data* %15, %struct.bgscan_simple_data** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %17 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %20 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %25 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %5
  br label %157

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %37 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %40 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %100, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %50 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %53 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = call i32 @os_get_reltime(%struct.os_reltime* %13)
  %55 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %58 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = icmp sgt i64 %56, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %46
  %64 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %65 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %68 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %99

72:                                               ; preds = %63, %46
  %73 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %74 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %78 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %84 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = icmp sgt i64 %80, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %72
  %89 = load i32, i32* @bgscan_simple_timeout, align 4
  %90 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %91 = call i32 @eloop_cancel_timeout(i32 %89, %struct.bgscan_simple_data* %90, i32* null)
  %92 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %93 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @bgscan_simple_timeout, align 4
  %96 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %97 = call i32 @eloop_register_timeout(i64 %94, i32 0, i32 %95, %struct.bgscan_simple_data* %96, i32* null)
  br label %98

98:                                               ; preds = %88, %72
  br label %99

99:                                               ; preds = %98, %71
  br label %145

100:                                              ; preds = %43, %29
  %101 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %102 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %105 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %115 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %118 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* @bgscan_simple_timeout, align 4
  %120 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %121 = call i32 @eloop_cancel_timeout(i32 %119, %struct.bgscan_simple_data* %120, i32* null)
  %122 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %123 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @bgscan_simple_timeout, align 4
  %126 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %127 = call i32 @eloop_register_timeout(i64 %124, i32 0, i32 %125, %struct.bgscan_simple_data* %126, i32* null)
  br label %144

128:                                              ; preds = %108, %100
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = call i32 @os_get_reltime(%struct.os_reltime* %13)
  %133 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %136 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 10
  %140 = icmp sgt i64 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  store i32 1, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %131
  br label %143

143:                                              ; preds = %142, %128
  br label %144

144:                                              ; preds = %143, %111
  br label %145

145:                                              ; preds = %144, %99
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* @bgscan_simple_timeout, align 4
  %152 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %153 = call i32 @eloop_cancel_timeout(i32 %151, %struct.bgscan_simple_data* %152, i32* null)
  %154 = load i32, i32* @bgscan_simple_timeout, align 4
  %155 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %11, align 8
  %156 = call i32 @eloop_register_timeout(i64 0, i32 0, i32 %154, %struct.bgscan_simple_data* %155, i32* null)
  br label %157

157:                                              ; preds = %28, %148, %145
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.bgscan_simple_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, i32, %struct.bgscan_simple_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
