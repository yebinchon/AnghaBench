; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_bulk_intr_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_bulk_intr_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32, i32, i32 }
%struct.libusb_transfer = type { i32, i32, i32, i32 }

@LIBUSB_TRANSFER_SHORT_NOT_OK = common dso_local global i32 0, align 4
@LIBUSB_TRANSFER_ERROR = common dso_local global i32 0, align 4
@LIBUSB_TRANSFER_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_transfer*)* @libusb10_bulk_intr_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libusb10_bulk_intr_proxy(%struct.libusb20_transfer* %0) #0 {
  %2 = alloca %struct.libusb20_transfer*, align 8
  %3 = alloca %struct.libusb_super_transfer*, align 8
  %4 = alloca %struct.libusb_transfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %2, align 8
  %9 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %10 = call i32 @libusb20_tr_get_status(%struct.libusb20_transfer* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %12 = call %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer* %11)
  store %struct.libusb_super_transfer* %12, %struct.libusb_super_transfer** %3, align 8
  %13 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %14 = call i32 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %16 = call i32 @libusb20_tr_get_actual_length(%struct.libusb20_transfer* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %18 = icmp eq %struct.libusb_super_transfer* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %120

20:                                               ; preds = %1
  %21 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %22 = bitcast %struct.libusb_super_transfer* %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 12
  %24 = bitcast i32* %23 to %struct.libusb_transfer*
  store %struct.libusb_transfer* %24, %struct.libusb_transfer** %4, align 8
  %25 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %26 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %114 [
    i32 129, label %29
    i32 128, label %67
  ]

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %32 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %36 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LIBUSB_TRANSFER_SHORT_NOT_OK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %47 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %48 = load i32, i32* @LIBUSB_TRANSFER_ERROR, align 4
  %49 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %46, %struct.libusb_super_transfer* %47, i32 %48)
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %52 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %53 = load i32, i32* @LIBUSB_TRANSFER_COMPLETED, align 4
  %54 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %51, %struct.libusb_super_transfer* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %120

56:                                               ; preds = %29
  %57 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %58 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %63 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %64 = load i32, i32* @LIBUSB_TRANSFER_COMPLETED, align 4
  %65 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %62, %struct.libusb_super_transfer* %63, i32 %64)
  br label %120

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %20, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %70 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %75 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %79 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %80 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %84 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @libusb20_tr_setup_bulk(%struct.libusb20_transfer* %78, i32 %81, i32 %82, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %89 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %92 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %97 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %101 = call i32 @libusb20_tr_submit(%struct.libusb20_transfer* %100)
  %102 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %103 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %77
  %107 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %108 = call i32 @libusb20_tr_get_priv_sc0(%struct.libusb20_transfer* %107)
  %109 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %110 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @libusb10_submit_transfer_sub(i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %106, %77
  br label %120

114:                                              ; preds = %20
  %115 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %116 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @libusb10_convert_error(i32 %117)
  %119 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %115, %struct.libusb_super_transfer* %116, i32 %118)
  br label %120

120:                                              ; preds = %19, %114, %113, %61, %55
  ret void
}

declare dso_local i32 @libusb20_tr_get_status(%struct.libusb20_transfer*) #1

declare dso_local %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_actual_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb10_complete_transfer(%struct.libusb20_transfer*, %struct.libusb_super_transfer*, i32) #1

declare dso_local i32 @libusb20_tr_setup_bulk(%struct.libusb20_transfer*, i32, i32, i32) #1

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
