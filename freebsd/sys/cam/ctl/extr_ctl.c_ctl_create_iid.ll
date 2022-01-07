; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_create_iid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_create_iid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.scsi_transportid_fcp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_transportid_iscsi_port = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_transportid_sas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_transportid_spi = type { i32, i32, i32, i32, i32, i32, i32 }

@SCSI_PROTO_FC = common dso_local global i32 0, align 4
@SCSI_TRN_ISCSI_FORMAT_PORT = common dso_local global i32 0, align 4
@SCSI_PROTO_ISCSI = common dso_local global i32 0, align 4
@SCSI_PROTO_SAS = common dso_local global i32 0, align 4
@SCSI_PROTO_SPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_port*, i32, i32*)* @ctl_create_iid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_create_iid(%struct.ctl_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_transportid_fcp*, align 8
  %10 = alloca %struct.scsi_transportid_iscsi_port*, align 8
  %11 = alloca %struct.scsi_transportid_sas*, align 8
  %12 = alloca %struct.scsi_transportid_spi*, align 8
  store %struct.ctl_port* %0, %struct.ctl_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %14 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %127 [
    i32 130, label %16
    i32 129, label %48
    i32 128, label %95
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.scsi_transportid_fcp*
  store %struct.scsi_transportid_fcp* %18, %struct.scsi_transportid_fcp** %9, align 8
  %19 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %20 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %147

29:                                               ; preds = %16
  %30 = load %struct.scsi_transportid_fcp*, %struct.scsi_transportid_fcp** %9, align 8
  %31 = bitcast %struct.scsi_transportid_fcp* %30 to %struct.scsi_transportid_spi*
  %32 = call i32 @memset(%struct.scsi_transportid_spi* %31, i32 0, i32 28)
  %33 = load i32, i32* @SCSI_PROTO_FC, align 4
  %34 = load %struct.scsi_transportid_fcp*, %struct.scsi_transportid_fcp** %9, align 8
  %35 = getelementptr inbounds %struct.scsi_transportid_fcp, %struct.scsi_transportid_fcp* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %37 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.scsi_transportid_fcp*, %struct.scsi_transportid_fcp** %9, align 8
  %45 = getelementptr inbounds %struct.scsi_transportid_fcp, %struct.scsi_transportid_fcp* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scsi_u64to8b(i32 %43, i32 %46)
  store i32 28, i32* %4, align 4
  br label %147

48:                                               ; preds = %3
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to %struct.scsi_transportid_iscsi_port*
  store %struct.scsi_transportid_iscsi_port* %50, %struct.scsi_transportid_iscsi_port** %10, align 8
  %51 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %52 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %147

61:                                               ; preds = %48
  %62 = load %struct.scsi_transportid_iscsi_port*, %struct.scsi_transportid_iscsi_port** %10, align 8
  %63 = bitcast %struct.scsi_transportid_iscsi_port* %62 to %struct.scsi_transportid_spi*
  %64 = call i32 @memset(%struct.scsi_transportid_spi* %63, i32 0, i32 256)
  %65 = load i32, i32* @SCSI_TRN_ISCSI_FORMAT_PORT, align 4
  %66 = load i32, i32* @SCSI_PROTO_ISCSI, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.scsi_transportid_iscsi_port*, %struct.scsi_transportid_iscsi_port** %10, align 8
  %69 = getelementptr inbounds %struct.scsi_transportid_iscsi_port, %struct.scsi_transportid_iscsi_port* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.scsi_transportid_iscsi_port*, %struct.scsi_transportid_iscsi_port** %10, align 8
  %71 = getelementptr inbounds %struct.scsi_transportid_iscsi_port, %struct.scsi_transportid_iscsi_port* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %74 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @strlcpy(i32 %72, i32* %80, i32 252)
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @min(i32 %83, i32 252)
  %85 = call i32 @roundup2(i32 %84, i32 4)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.scsi_transportid_iscsi_port*, %struct.scsi_transportid_iscsi_port** %10, align 8
  %88 = getelementptr inbounds %struct.scsi_transportid_iscsi_port, %struct.scsi_transportid_iscsi_port* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @scsi_ulto2b(i32 %86, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 28, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %147

95:                                               ; preds = %3
  %96 = load i32*, i32** %7, align 8
  %97 = bitcast i32* %96 to %struct.scsi_transportid_sas*
  store %struct.scsi_transportid_sas* %97, %struct.scsi_transportid_sas** %11, align 8
  %98 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %99 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %147

108:                                              ; preds = %95
  %109 = load %struct.scsi_transportid_sas*, %struct.scsi_transportid_sas** %11, align 8
  %110 = bitcast %struct.scsi_transportid_sas* %109 to %struct.scsi_transportid_spi*
  %111 = call i32 @memset(%struct.scsi_transportid_spi* %110, i32 0, i32 28)
  %112 = load i32, i32* @SCSI_PROTO_SAS, align 4
  %113 = load %struct.scsi_transportid_sas*, %struct.scsi_transportid_sas** %11, align 8
  %114 = getelementptr inbounds %struct.scsi_transportid_sas, %struct.scsi_transportid_sas* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %116 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.scsi_transportid_sas*, %struct.scsi_transportid_sas** %11, align 8
  %124 = getelementptr inbounds %struct.scsi_transportid_sas, %struct.scsi_transportid_sas* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @scsi_u64to8b(i32 %122, i32 %125)
  store i32 28, i32* %4, align 4
  br label %147

127:                                              ; preds = %3
  %128 = load i32*, i32** %7, align 8
  %129 = bitcast i32* %128 to %struct.scsi_transportid_spi*
  store %struct.scsi_transportid_spi* %129, %struct.scsi_transportid_spi** %12, align 8
  %130 = load %struct.scsi_transportid_spi*, %struct.scsi_transportid_spi** %12, align 8
  %131 = call i32 @memset(%struct.scsi_transportid_spi* %130, i32 0, i32 28)
  %132 = load i32, i32* @SCSI_PROTO_SPI, align 4
  %133 = load %struct.scsi_transportid_spi*, %struct.scsi_transportid_spi** %12, align 8
  %134 = getelementptr inbounds %struct.scsi_transportid_spi, %struct.scsi_transportid_spi* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.scsi_transportid_spi*, %struct.scsi_transportid_spi** %12, align 8
  %137 = getelementptr inbounds %struct.scsi_transportid_spi, %struct.scsi_transportid_spi* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @scsi_ulto2b(i32 %135, i32 %138)
  %140 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %141 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.scsi_transportid_spi*, %struct.scsi_transportid_spi** %12, align 8
  %144 = getelementptr inbounds %struct.scsi_transportid_spi, %struct.scsi_transportid_spi* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @scsi_ulto2b(i32 %142, i32 %145)
  store i32 28, i32* %4, align 4
  br label %147

147:                                              ; preds = %127, %108, %107, %61, %60, %29, %28
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @memset(%struct.scsi_transportid_spi*, i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32*, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
