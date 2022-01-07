; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_isoc_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_isoc_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32 }
%struct.libusb_transfer = type { i64, i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@LIBUSB_TRANSFER_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_transfer*)* @libusb10_isoc_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libusb10_isoc_proxy(%struct.libusb20_transfer* %0) #0 {
  %2 = alloca %struct.libusb20_transfer*, align 8
  %3 = alloca %struct.libusb_super_transfer*, align 8
  %4 = alloca %struct.libusb_transfer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %2, align 8
  %9 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %10 = call i32 @libusb20_tr_get_status(%struct.libusb20_transfer* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %12 = call %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer* %11)
  store %struct.libusb_super_transfer* %12, %struct.libusb_super_transfer** %3, align 8
  %13 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %14 = call i64 @libusb20_tr_get_actual_length(%struct.libusb20_transfer* %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %16 = call i64 @libusb20_tr_get_max_frames(%struct.libusb20_transfer* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %18 = icmp eq %struct.libusb_super_transfer* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %122

20:                                               ; preds = %1
  %21 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %22 = bitcast %struct.libusb_super_transfer* %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = bitcast i32* %23 to %struct.libusb_transfer*
  store %struct.libusb_transfer* %24, %struct.libusb_transfer** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %27 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %32 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %122

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %41 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %116 [
    i32 129, label %43
    i32 128, label %69
  ]

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %46 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %61, %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @libusb20_tr_get_length(%struct.libusb20_transfer* %52, i64 %53)
  %55 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %56 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %54, i32* %60, align 8
  br label %61

61:                                               ; preds = %51
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %47

64:                                               ; preds = %47
  %65 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %66 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %67 = load i32, i32* @LIBUSB_TRANSFER_COMPLETED, align 4
  %68 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %65, %struct.libusb_super_transfer* %66, i32 %67)
  br label %122

69:                                               ; preds = %38
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %70

70:                                               ; preds = %99, %69
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %70
  %75 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %76 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %77 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %82 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @libusb20_tr_setup_isoc(%struct.libusb20_transfer* %75, i32* %80, i64 %87, i64 %88)
  %90 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %91 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %74
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %7, align 8
  br label %70

102:                                              ; preds = %70
  %103 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %104 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @libusb20_tr_set_total_frames(%struct.libusb20_transfer* %105, i64 %106)
  %108 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %109 = call i32 @libusb20_tr_submit(%struct.libusb20_transfer* %108)
  %110 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %111 = call i32 @libusb20_tr_get_priv_sc0(%struct.libusb20_transfer* %110)
  %112 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %113 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @libusb10_submit_transfer_sub(i32 %111, i32 %114)
  br label %122

116:                                              ; preds = %38
  %117 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %118 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @libusb10_convert_error(i32 %119)
  %121 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %117, %struct.libusb_super_transfer* %118, i32 %120)
  br label %122

122:                                              ; preds = %19, %37, %116, %102, %64
  ret void
}

declare dso_local i32 @libusb20_tr_get_status(%struct.libusb20_transfer*) #1

declare dso_local %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer*) #1

declare dso_local i64 @libusb20_tr_get_actual_length(%struct.libusb20_transfer*) #1

declare dso_local i64 @libusb20_tr_get_max_frames(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_length(%struct.libusb20_transfer*, i64) #1

declare dso_local i32 @libusb10_complete_transfer(%struct.libusb20_transfer*, %struct.libusb_super_transfer*, i32) #1

declare dso_local i32 @libusb20_tr_setup_isoc(%struct.libusb20_transfer*, i32*, i64, i64) #1

declare dso_local i32 @libusb20_tr_set_total_frames(%struct.libusb20_transfer*, i64) #1

declare dso_local i32 @libusb20_tr_submit(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb10_submit_transfer_sub(i32, i32) #1

declare dso_local i32 @libusb20_tr_get_priv_sc0(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb10_convert_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
