; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_define_int_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_define_int_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i64, i8*, i8*, i32 }

@AAC_FLAGS_SYNC_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"using line interrupts\0A\00", align 1
@AAC_HWIF_SRC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"alloc msi failed - err=%d; will use INTx\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"using MSI interrupts\0A\00", align 1
@AAC_MAX_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"alloc msix failed - msi_count=%d, err=%d; will try MSI\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"using MSI-X interrupts (%u vectors)\0A\00", align 1
@PCIY_MSIX = common dso_local global i32 0, align 4
@AAC_PCI_MSI_ENABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"using legacy interrupts\0A\00", align 1
@AAC_ENABLE_MSIX = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_DEBUG_B = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"msi_enabled %d vector_cap %d max_fibs %d max_msix %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_define_int_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_define_int_mode(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %9 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AAC_FLAGS_SYNC_MODE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %26 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  br label %212

27:                                               ; preds = %1
  %28 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %27
  %33 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AAC_HWIF_SRC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pci_alloc_msi(i32 %39, i32* %5)
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @pci_release_msi(i32 %46)
  br label %52

48:                                               ; preds = %38
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %51 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %66 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %68 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %71 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %212

72:                                               ; preds = %27
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @pci_msix_count(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @AAC_MAX_MSIX, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @AAC_MAX_MSIX, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %72
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %83 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %88 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @pci_alloc_msix(i32 %94, i32* %5)
  store i32 %95, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @pci_release_msi(i32 %102)
  br label %111

104:                                              ; preds = %93
  %105 = load i8*, i8** @TRUE, align 8
  %106 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %107 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  %112 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %133, label %116

116:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @pci_alloc_msi(i32 %117, i32* %5)
  store i32 %118, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @pci_release_msi(i32 %124)
  br label %132

126:                                              ; preds = %116
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %129 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %126, %120
  br label %133

133:                                              ; preds = %132, %111
  %134 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %135 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %163

138:                                              ; preds = %133
  %139 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %140 = load i32, i32* @PCIY_MSIX, align 4
  %141 = call i32 @aac_find_pci_capability(%struct.aac_softc* %139, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 2
  %148 = call i32 @pci_read_config(i32 %145, i32 %147, i32 2)
  br label %150

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %144
  %151 = phi i32 [ %148, %144 ], [ 0, %149 ]
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @AAC_PCI_MSI_ENABLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @pci_release_msi(i32 %157)
  %159 = load i8*, i8** @FALSE, align 8
  %160 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %161 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %156, %150
  br label %163

163:                                              ; preds = %162, %133
  %164 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %165 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %164, i32 0, i32 5
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %3, align 4
  %170 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %171 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %172 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  br label %187

173:                                              ; preds = %163
  %174 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %175 = load i32, i32* @AAC_ENABLE_MSIX, align 4
  %176 = call i32 @AAC_ACCESS_DEVREG(%struct.aac_softc* %174, i32 %175)
  %177 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %178 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %185 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %173
  br label %187

187:                                              ; preds = %186, %168
  %188 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %189 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %192 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sdiv i32 %190, %193
  %195 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %196 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %198 = load i8*, i8** @HBA_FLAGS_DBG_DEBUG_B, align 8
  %199 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %200 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %199, i32 0, i32 5
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %203 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %206 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %209 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @fwprintf(%struct.aac_softc* %197, i8* %198, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %201, i32 %204, i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %187, %64, %17
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @aac_find_pci_capability(%struct.aac_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @AAC_ACCESS_DEVREG(%struct.aac_softc*, i32) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
