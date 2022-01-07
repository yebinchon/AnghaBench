; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.aac_softc* }
%struct.aac_softc = type { i32* }
%struct.thread = type { i32 }
%union.aac_statrequest = type { i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_IOCTL_COMMANDS_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"FSACTL_SENDFIB\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"FSACTL_SEND_RAW_SRB\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"FSACTL_AIF_THREAD\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"FSACTL_OPEN_GET_ADAPTER_FIB\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"FSACTL_GET_NEXT_ADAPTER_FIB\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"FSACTL_CLOSE_GET_ADAPTER_FIB\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"FSACTL_MINIPORT_REV_CHECK\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"FSACTL_QUERY_DISK\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"FSACTL_GET_PCI_INFO\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"FSACTL_GET_FEATURES\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"unsupported cmd 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @aac_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %union.aac_statrequest*, align 8
  %12 = alloca %struct.aac_softc*, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %8, align 8
  %15 = inttoptr i64 %14 to %union.aac_statrequest*
  store %union.aac_statrequest* %15, %union.aac_statrequest** %11, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.aac_softc*, %struct.aac_softc** %17, align 8
  store %struct.aac_softc* %18, %struct.aac_softc** %12, align 8
  %19 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %20 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %21 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %19, i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %146 [
    i32 155, label %23
    i32 130, label %41
    i32 129, label %41
    i32 136, label %45
    i32 135, label %45
    i32 128, label %52
    i32 134, label %56
    i32 151, label %63
    i32 145, label %63
    i32 132, label %68
    i32 138, label %72
    i32 147, label %79
    i32 141, label %83
    i32 150, label %90
    i32 144, label %94
    i32 133, label %101
    i32 139, label %105
    i32 131, label %112
    i32 137, label %116
    i32 149, label %123
    i32 143, label %123
    i32 146, label %124
    i32 140, label %128
    i32 148, label %135
    i32 142, label %139
  ]

23:                                               ; preds = %5
  %24 = load %union.aac_statrequest*, %union.aac_statrequest** %11, align 8
  %25 = bitcast %union.aac_statrequest* %24 to i64*
  %26 = load i64, i64* %25, align 8
  switch i64 %26, label %38 [
    i64 153, label %27
    i64 152, label %27
    i64 154, label %27
  ]

27:                                               ; preds = %23, %23, %23
  %28 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %union.aac_statrequest*, %union.aac_statrequest** %11, align 8
  %32 = bitcast %union.aac_statrequest* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load %union.aac_statrequest*, %union.aac_statrequest** %11, align 8
  %36 = bitcast %union.aac_statrequest* %35 to i32*
  %37 = call i32 @bcopy(i32* %34, i32* %36, i32 4)
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOENT, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %27
  br label %152

41:                                               ; preds = %5, %5
  %42 = load i64, i64* %8, align 8
  %43 = inttoptr i64 %42 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %5, %5, %41
  %46 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %47 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %48 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %46, i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @aac_ioctl_sendfib(%struct.aac_softc* %49, i64 %50)
  store i32 %51, i32* %13, align 4
  br label %152

52:                                               ; preds = %5
  %53 = load i64, i64* %8, align 8
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %5, %52
  %57 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %58 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %59 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %57, i8* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @aac_ioctl_send_raw_srb(%struct.aac_softc* %60, i64 %61)
  store i32 %62, i32* %13, align 4
  br label %152

63:                                               ; preds = %5, %5
  %64 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %65 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %66 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %64, i8* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %13, align 4
  br label %152

68:                                               ; preds = %5
  %69 = load i64, i64* %8, align 8
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %5, %68
  %73 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %74 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %75 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %73, i8* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @aac_open_aif(%struct.aac_softc* %76, i64 %77)
  store i32 %78, i32* %13, align 4
  br label %152

79:                                               ; preds = %5
  %80 = load i64, i64* %8, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %5, %79
  %84 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %85 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %86 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %84, i8* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @aac_getnext_aif(%struct.aac_softc* %87, i64 %88)
  store i32 %89, i32* %13, align 4
  br label %152

90:                                               ; preds = %5
  %91 = load i64, i64* %8, align 8
  %92 = inttoptr i64 %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %5, %90
  %95 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %96 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %97 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %95, i8* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %98 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @aac_close_aif(%struct.aac_softc* %98, i64 %99)
  store i32 %100, i32* %13, align 4
  br label %152

101:                                              ; preds = %5
  %102 = load i64, i64* %8, align 8
  %103 = inttoptr i64 %102 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %5, %101
  %106 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %107 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %108 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %106, i8* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @aac_rev_check(%struct.aac_softc* %109, i64 %110)
  store i32 %111, i32* %13, align 4
  br label %152

112:                                              ; preds = %5
  %113 = load i64, i64* %8, align 8
  %114 = inttoptr i64 %113 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %8, align 8
  br label %116

116:                                              ; preds = %5, %112
  %117 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %118 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %119 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %117, i8* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %120 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @aac_query_disk(%struct.aac_softc* %120, i64 %121)
  store i32 %122, i32* %13, align 4
  br label %152

123:                                              ; preds = %5, %5
  store i32 0, i32* %13, align 4
  br label %152

124:                                              ; preds = %5
  %125 = load i64, i64* %8, align 8
  %126 = inttoptr i64 %125 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %8, align 8
  br label %128

128:                                              ; preds = %5, %124
  %129 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %130 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %131 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %129, i8* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %132 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @aac_get_pci_info(%struct.aac_softc* %132, i64 %133)
  store i32 %134, i32* %13, align 4
  br label %152

135:                                              ; preds = %5
  %136 = load i64, i64* %8, align 8
  %137 = inttoptr i64 %136 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %8, align 8
  br label %139

139:                                              ; preds = %5, %135
  %140 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %141 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %142 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %140, i8* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %143 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @aac_supported_features(%struct.aac_softc* %143, i64 %144)
  store i32 %145, i32* %13, align 4
  br label %152

146:                                              ; preds = %5
  %147 = load %struct.aac_softc*, %struct.aac_softc** %12, align 8
  %148 = load i8*, i8** @HBA_FLAGS_DBG_IOCTL_COMMANDS_B, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %147, i8* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %146, %139, %128, %123, %116, %105, %94, %83, %72, %63, %56, %45, %40
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, ...) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @aac_ioctl_sendfib(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_ioctl_send_raw_srb(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_open_aif(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_getnext_aif(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_close_aif(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_rev_check(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_query_disk(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_get_pci_info(%struct.aac_softc*, i64) #1

declare dso_local i32 @aac_supported_features(%struct.aac_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
