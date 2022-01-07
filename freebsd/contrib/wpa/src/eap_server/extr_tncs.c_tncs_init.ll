; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.tncs_data*, i32, i32 }
%struct.tncs_data = type { %struct.tncs_data*, i64, i32 }

@tncs_global_data = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tncs_data* @tncs_init() #0 {
  %1 = alloca %struct.tncs_data*, align 8
  %2 = alloca %struct.tncs_data*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %4 = icmp eq %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.tncs_data* null, %struct.tncs_data** %1, align 8
  br label %33

6:                                                ; preds = %0
  %7 = call %struct.tncs_data* @os_zalloc(i32 24)
  store %struct.tncs_data* %7, %struct.tncs_data** %2, align 8
  %8 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %9 = icmp eq %struct.tncs_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store %struct.tncs_data* null, %struct.tncs_data** %1, align 8
  br label %33

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %16 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = sext i32 %19 to i64
  %22 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %23 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.tncs_data*, %struct.tncs_data** %25, align 8
  %27 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %28 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %27, i32 0, i32 0
  store %struct.tncs_data* %26, %struct.tncs_data** %28, align 8
  %29 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.tncs_data* %29, %struct.tncs_data** %31, align 8
  %32 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  store %struct.tncs_data* %32, %struct.tncs_data** %1, align 8
  br label %33

33:                                               ; preds = %11, %10, %5
  %34 = load %struct.tncs_data*, %struct.tncs_data** %1, align 8
  ret %struct.tncs_data* %34
}

declare dso_local %struct.tncs_data* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
