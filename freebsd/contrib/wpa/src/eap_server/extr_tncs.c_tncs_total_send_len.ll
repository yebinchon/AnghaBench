; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_total_send_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_total_send_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TNC_MAX_IMV_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tncs_total_send_len(%struct.tncs_data* %0) #0 {
  %2 = alloca %struct.tncs_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.tncs_data* %0, %struct.tncs_data** %2, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TNC_MAX_IMV_ID, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %11 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %25 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %30 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @os_strlen(i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @os_strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
