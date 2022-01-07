; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_adjust_cdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfe_adjust_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_accept_tio = type { i32 }
%struct.scsi_rw_6 = type { i32, i32 }
%struct.scsi_rw_10 = type { i32, i32 }
%struct.scsi_rw_12 = type { i32, i32 }
%struct.scsi_rw_16 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_accept_tio*, i32)* @ctlfe_adjust_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctlfe_adjust_cdb(%struct.ccb_accept_tio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccb_accept_tio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.scsi_rw_6*, align 8
  %11 = alloca %struct.scsi_rw_10*, align 8
  %12 = alloca %struct.scsi_rw_12*, align 8
  %13 = alloca %struct.scsi_rw_16*, align 8
  store %struct.ccb_accept_tio* %0, %struct.ccb_accept_tio** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %4, align 8
  %15 = call i32* @atio_cdb_ptr(%struct.ccb_accept_tio* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 9
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %132 [
    i32 132, label %21
    i32 128, label %21
    i32 135, label %51
    i32 131, label %51
    i32 134, label %78
    i32 130, label %78
    i32 133, label %105
    i32 129, label %105
  ]

21:                                               ; preds = %2, %2
  %22 = load i32*, i32** %9, align 8
  %23 = bitcast i32* %22 to %struct.scsi_rw_6*
  store %struct.scsi_rw_6* %23, %struct.scsi_rw_6** %10, align 8
  %24 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %10, align 8
  %25 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scsi_3btoul(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 2097151
  store i32 %29, i32* %6, align 4
  %30 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %10, align 8
  %31 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 256, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %10, align 8
  %45 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scsi_ulto3b(i32 %43, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %10, align 8
  %50 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %133

51:                                               ; preds = %2, %2
  %52 = load i32*, i32** %9, align 8
  %53 = bitcast i32* %52 to %struct.scsi_rw_10*
  store %struct.scsi_rw_10* %53, %struct.scsi_rw_10** %11, align 8
  %54 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %11, align 8
  %55 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @scsi_4btoul(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %11, align 8
  %59 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_2btoul(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %11, align 8
  %70 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @scsi_ulto4b(i32 %68, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %11, align 8
  %75 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @scsi_ulto2b(i32 %73, i32 %76)
  br label %133

78:                                               ; preds = %2, %2
  %79 = load i32*, i32** %9, align 8
  %80 = bitcast i32* %79 to %struct.scsi_rw_12*
  store %struct.scsi_rw_12* %80, %struct.scsi_rw_12** %12, align 8
  %81 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %12, align 8
  %82 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @scsi_4btoul(i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %12, align 8
  %86 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @scsi_4btoul(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %12, align 8
  %97 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @scsi_ulto4b(i32 %95, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %12, align 8
  %102 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @scsi_ulto4b(i32 %100, i32 %103)
  br label %133

105:                                              ; preds = %2, %2
  %106 = load i32*, i32** %9, align 8
  %107 = bitcast i32* %106 to %struct.scsi_rw_16*
  store %struct.scsi_rw_16* %107, %struct.scsi_rw_16** %13, align 8
  %108 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %13, align 8
  %109 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @scsi_8btou64(i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %13, align 8
  %113 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @scsi_4btoul(i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %13, align 8
  %124 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @scsi_u64to8b(i32 %122, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %13, align 8
  %129 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @scsi_ulto4b(i32 %127, i32 %130)
  br label %133

132:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %134

133:                                              ; preds = %105, %78, %51, %36
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %132
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32* @atio_cdb_ptr(%struct.ccb_accept_tio*) #1

declare dso_local i32 @scsi_3btoul(i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
