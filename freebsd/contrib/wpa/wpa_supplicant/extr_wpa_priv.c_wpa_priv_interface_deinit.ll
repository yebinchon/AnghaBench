; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_interface_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_interface_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i64, %struct.wpa_priv_interface*, %struct.wpa_priv_interface*, %struct.wpa_priv_interface*, i64*, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i64)*, i32 (i64)* }

@WPA_PRIV_MAX_L2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*)* @wpa_priv_interface_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %0) #0 {
  %2 = alloca %struct.wpa_priv_interface*, align 8
  %3 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %2, align 8
  %4 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (i64)*, i32 (i64)** %12, align 8
  %14 = icmp ne i32 (i64)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %17 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %16, i32 0, i32 6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i64)*, i32 (i64)** %19, align 8
  %21 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = call i32 %20(i64 %23)
  br label %25

25:                                               ; preds = %15, %8
  %26 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i64)*, i32 (i64)** %34, align 8
  %36 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %37 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 %35(i64 %38)
  br label %40

40:                                               ; preds = %30, %25
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %43 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %48 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @eloop_unregister_read_sock(i64 %49)
  %51 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %52 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @close(i64 %53)
  %55 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %56 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %55, i32 0, i32 1
  %57 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %56, align 8
  %58 = call i32 @unlink(%struct.wpa_priv_interface* %57)
  br label %59

59:                                               ; preds = %46, %41
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @WPA_PRIV_MAX_L2, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %66 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %75 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %74, i32 0, i32 4
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @l2_packet_deinit(i64 %80)
  br label %82

82:                                               ; preds = %73, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %88 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %87, i32 0, i32 3
  %89 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %88, align 8
  %90 = call i32 @os_free(%struct.wpa_priv_interface* %89)
  %91 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %92 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %91, i32 0, i32 2
  %93 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %92, align 8
  %94 = call i32 @os_free(%struct.wpa_priv_interface* %93)
  %95 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %96 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %95, i32 0, i32 1
  %97 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %96, align 8
  %98 = call i32 @os_free(%struct.wpa_priv_interface* %97)
  %99 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %2, align 8
  %100 = call i32 @os_free(%struct.wpa_priv_interface* %99)
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @unlink(%struct.wpa_priv_interface*) #1

declare dso_local i32 @l2_packet_deinit(i64) #1

declare dso_local i32 @os_free(%struct.wpa_priv_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
