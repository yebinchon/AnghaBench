; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_ssid_postfix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_ssid_postfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"New SSID postfix: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_set_ssid_postfix(%struct.p2p_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @wpa_ssid_txt(i32* %9, i64 %10)
  %12 = call i32 @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %38

24:                                               ; preds = %20
  %25 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @os_memcpy(i32 %29, i32* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %24, %23, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i32) #1

declare dso_local i32 @wpa_ssid_txt(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
