; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_get_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_get_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.tncs_data* }
%struct.tncs_data = type { i64, %struct.tncs_data* }

@tncs_global_data = common dso_local global %struct.TYPE_2__* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TNC: Connection ID %lu not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tncs_data* (i64)* @tncs_get_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tncs_data* @tncs_get_conn(i64 %0) #0 {
  %2 = alloca %struct.tncs_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tncs_data*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.tncs_data* null, %struct.tncs_data** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tncs_global_data, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tncs_data*, %struct.tncs_data** %10, align 8
  store %struct.tncs_data* %11, %struct.tncs_data** %4, align 8
  br label %12

12:                                               ; preds = %23, %8
  %13 = load %struct.tncs_data*, %struct.tncs_data** %4, align 8
  %14 = icmp ne %struct.tncs_data* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.tncs_data*, %struct.tncs_data** %4, align 8
  %17 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.tncs_data*, %struct.tncs_data** %4, align 8
  store %struct.tncs_data* %22, %struct.tncs_data** %2, align 8
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.tncs_data*, %struct.tncs_data** %4, align 8
  %25 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %24, i32 0, i32 1
  %26 = load %struct.tncs_data*, %struct.tncs_data** %25, align 8
  store %struct.tncs_data* %26, %struct.tncs_data** %4, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %29)
  store %struct.tncs_data* null, %struct.tncs_data** %2, align 8
  br label %31

31:                                               ; preds = %27, %21, %7
  %32 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  ret %struct.tncs_data* %32
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
