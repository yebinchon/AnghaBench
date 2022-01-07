; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_ctrl_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb10_ctrl_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32 }
%struct.libusb_super_transfer = type { i32, i32, i32 }
%struct.libusb_transfer = type { i32, i32, i32, i32 }

@LIBUSB_TRANSFER_SHORT_NOT_OK = common dso_local global i32 0, align 4
@LIBUSB_TRANSFER_ERROR = common dso_local global i32 0, align 4
@LIBUSB_TRANSFER_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_transfer*)* @libusb10_ctrl_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libusb10_ctrl_proxy(%struct.libusb20_transfer* %0) #0 {
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
  br label %146

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
  switch i32 %28, label %140 [
    i32 129, label %29
    i32 128, label %71
  ]

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %32 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %36 = call i32 @libusb20_tr_get_length(%struct.libusb20_transfer* %35, i32 0)
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %40 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LIBUSB_TRANSFER_SHORT_NOT_OK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %51 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %52 = load i32, i32* @LIBUSB_TRANSFER_ERROR, align 4
  %53 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %50, %struct.libusb_super_transfer* %51, i32 %52)
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %56 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %57 = load i32, i32* @LIBUSB_TRANSFER_COMPLETED, align 4
  %58 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %55, %struct.libusb_super_transfer* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %146

60:                                               ; preds = %29
  %61 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %62 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %67 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %68 = load i32, i32* @LIBUSB_TRANSFER_COMPLETED, align 4
  %69 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %66, %struct.libusb_super_transfer* %67, i32 %68)
  br label %146

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %20, %70
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %74 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %79 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 129
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %86 = call i32 @libusb20_tr_set_length(%struct.libusb20_transfer* %85, i32 0, i32 0)
  br label %95

87:                                               ; preds = %81
  %88 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %89 = call i32 @libusb20_tr_set_length(%struct.libusb20_transfer* %88, i32 8, i32 0)
  %90 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %91 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %92 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @libusb20_tr_set_buffer(%struct.libusb20_transfer* %90, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @libusb20_tr_set_length(%struct.libusb20_transfer* %99, i32 %100, i32 1)
  %102 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %103 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %104 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @libusb20_tr_set_buffer(%struct.libusb20_transfer* %102, i32 %105, i32 1)
  %107 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %108 = call i32 @libusb20_tr_set_total_frames(%struct.libusb20_transfer* %107, i32 2)
  br label %112

109:                                              ; preds = %95
  %110 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %111 = call i32 @libusb20_tr_set_total_frames(%struct.libusb20_transfer* %110, i32 1)
  br label %112

112:                                              ; preds = %109, %98
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %115 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %118 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %123 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %127 = call i32 @libusb20_tr_submit(%struct.libusb20_transfer* %126)
  %128 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %129 = getelementptr inbounds %struct.libusb_super_transfer, %struct.libusb_super_transfer* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %112
  %133 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %134 = call i32 @libusb20_tr_get_priv_sc0(%struct.libusb20_transfer* %133)
  %135 = load %struct.libusb_transfer*, %struct.libusb_transfer** %4, align 8
  %136 = getelementptr inbounds %struct.libusb_transfer, %struct.libusb_transfer* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @libusb10_submit_transfer_sub(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %132, %112
  br label %146

140:                                              ; preds = %20
  %141 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %2, align 8
  %142 = load %struct.libusb_super_transfer*, %struct.libusb_super_transfer** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @libusb10_convert_error(i32 %143)
  %145 = call i32 @libusb10_complete_transfer(%struct.libusb20_transfer* %141, %struct.libusb_super_transfer* %142, i32 %144)
  br label %146

146:                                              ; preds = %19, %140, %139, %65, %59
  ret void
}

declare dso_local i32 @libusb20_tr_get_status(%struct.libusb20_transfer*) #1

declare dso_local %struct.libusb_super_transfer* @libusb20_tr_get_priv_sc1(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_max_total_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_actual_length(%struct.libusb20_transfer*) #1

declare dso_local i32 @libusb20_tr_get_length(%struct.libusb20_transfer*, i32) #1

declare dso_local i32 @libusb10_complete_transfer(%struct.libusb20_transfer*, %struct.libusb_super_transfer*, i32) #1

declare dso_local i32 @libusb20_tr_set_length(%struct.libusb20_transfer*, i32, i32) #1

declare dso_local i32 @libusb20_tr_set_buffer(%struct.libusb20_transfer*, i32, i32) #1

declare dso_local i32 @libusb20_tr_set_total_frames(%struct.libusb20_transfer*, i32) #1

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
