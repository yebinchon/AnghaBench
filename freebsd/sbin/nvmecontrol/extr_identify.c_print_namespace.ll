; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_identify.c_print_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_identify.c_print_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i64, i64, i64 }

@UINT128_DIG = common dso_local global i32 0, align 4
@NVME_NS_DATA_NSFEAT_THIN_PROV_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_NSFEAT_THIN_PROV_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FLBAS_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Size:                        %lld blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Capacity:                    %lld blocks\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Utilization:                 %lld blocks\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Thin Provisioning:           %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Supported\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Not Supported\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Number of LBA Formats:       %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Current LBA Format:          LBA Format #%02d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Data Protection Caps:        %s%s%s%s%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NVME_NS_DATA_DPC_MD_END_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPC_MD_END_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"Last Bytes, \00", align 1
@NVME_NS_DATA_DPC_MD_START_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPC_MD_START_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"First Bytes, \00", align 1
@NVME_NS_DATA_DPC_PIT3_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPC_PIT3_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"Type 3, \00", align 1
@NVME_NS_DATA_DPC_PIT2_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPC_PIT2_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"Type 2, \00", align 1
@NVME_NS_DATA_DPC_PIT1_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"Type 1\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Data Protection Settings:    \00", align 1
@NVME_NS_DATA_DPS_PIT_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_PIT_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"Type %d, %s Bytes\0A\00", align 1
@NVME_NS_DATA_DPS_MD_START_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DPS_MD_START_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"First\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Last\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Not Enabled\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Multi-Path I/O Capabilities: %s%s\0A\00", align 1
@NVME_NS_DATA_NMIC_MAY_BE_SHARED_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_NMIC_MAY_BE_SHARED_MASK = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"May be shared\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"Reservation Capabilities:    %s%s%s%s%s%s%s%s%s\0A\00", align 1
@NVME_NS_DATA_RESCAP_IEKEY13_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_IEKEY13_MASK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"IEKEY13, \00", align 1
@NVME_NS_DATA_RESCAP_EX_AC_AR_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_EX_AC_AR_MASK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"EX_AC_AR, \00", align 1
@NVME_NS_DATA_RESCAP_WR_EX_AR_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_WR_EX_AR_MASK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"WR_EX_AR, \00", align 1
@NVME_NS_DATA_RESCAP_EX_AC_RO_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_EX_AC_RO_MASK = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"EX_AC_RO, \00", align 1
@NVME_NS_DATA_RESCAP_WR_EX_RO_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_WR_EX_RO_MASK = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"WR_EX_RO, \00", align 1
@NVME_NS_DATA_RESCAP_EX_AC_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_EX_AC_MASK = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"EX_AC, \00", align 1
@NVME_NS_DATA_RESCAP_WR_EX_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_WR_EX_MASK = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"WR_EX, \00", align 1
@NVME_NS_DATA_RESCAP_PTPL_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_RESCAP_PTPL_MASK = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"PTPL\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Format Progress Indicator:   \00", align 1
@NVME_NS_DATA_FPI_SUPP_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FPI_SUPP_MASK = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [14 x i8] c"%u%% remains\0A\00", align 1
@NVME_NS_DATA_FPI_PERC_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_FPI_PERC_MASK = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [15 x i8] c"Not Supported\0A\00", align 1
@NVME_NS_DATA_DLFEAT_READ_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DLFEAT_READ_MASK = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [42 x i8] c"Deallocate Logical Block:    Read %s%s%s\0A\00", align 1
@NVME_NS_DATA_DLFEAT_READ_NR = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"Not Reported\00", align 1
@NVME_NS_DATA_DLFEAT_READ_00 = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"00h\00", align 1
@NVME_NS_DATA_DLFEAT_READ_FF = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"FFh\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@NVME_NS_DATA_DLFEAT_DWZ_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DLFEAT_DWZ_MASK = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [13 x i8] c", Write Zero\00", align 1
@NVME_NS_DATA_DLFEAT_GCRC_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_DLFEAT_GCRC_MASK = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [12 x i8] c", Guard CRC\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Optimal I/O Boundary:        %u blocks\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"NVM Capacity:                %s bytes\0A\00", align 1
@NVME_NS_DATA_NSFEAT_NPVALID_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_NSFEAT_NPVALID_MASK = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [39 x i8] c"Preferred Write Granularity: %u blocks\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Preferred Write Alignment:   %u blocks\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Preferred Deallocate Granul: %u blocks\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Preferred Deallocate Align:  %u blocks\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Optimal Write Size:          %u blocks\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Globally Unique Identifier:  \00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"IEEE EUI64:                  \00", align 1
@NVME_NS_DATA_LBAF_LBADS_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_LBAF_LBADS_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_LBAF_MS_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_LBAF_MS_MASK = common dso_local global i32 0, align 4
@NVME_NS_DATA_LBAF_RP_SHIFT = common dso_local global i32 0, align 4
@NVME_NS_DATA_LBAF_RP_MASK = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [71 x i8] c"LBA Format #%02d: Data Size: %5d  Metadata Size: %5d  Performance: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"Best\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"Better\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Good\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Degraded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_namespace(%struct.nvme_namespace_data* %0) #0 {
  %2 = alloca %struct.nvme_namespace_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvme_namespace_data* %0, %struct.nvme_namespace_data** %2, align 8
  %14 = load i32, i32* @UINT128_DIG, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NVME_NS_DATA_NSFEAT_THIN_PROV_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* @NVME_NS_DATA_NSFEAT_THIN_PROV_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @NVME_NS_DATA_FLBAS_FORMAT_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %34 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %33, i32 0, i32 21
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %38 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %37, i32 0, i32 20
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %42 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %41, i32 0, i32 19
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %58 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %63 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %64 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NVME_NS_DATA_DPC_MD_END_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32, i32* @NVME_NS_DATA_DPC_MD_END_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %73 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %74 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NVME_NS_DATA_DPC_MD_START_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* @NVME_NS_DATA_DPC_MD_START_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %83 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %84 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NVME_NS_DATA_DPC_PIT3_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* @NVME_NS_DATA_DPC_PIT3_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %93 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %94 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NVME_NS_DATA_DPC_PIT2_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* @NVME_NS_DATA_DPC_PIT2_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %103 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %104 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NVME_NS_DATA_DPC_PIT2_MASK, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* @NVME_NS_DATA_DPC_PIT1_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %62, i8* %72, i8* %82, i8* %92, i8* %102, i8* %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %115 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %116 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @NVME_NS_DATA_DPS_PIT_SHIFT, align 4
  %119 = ashr i32 %117, %118
  %120 = load i32, i32* @NVME_NS_DATA_DPS_PIT_MASK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %1
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %127 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NVME_NS_DATA_DPS_MD_START_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = load i32, i32* @NVME_NS_DATA_DPS_MD_START_MASK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %125, i8* %135)
  br label %139

137:                                              ; preds = %1
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %124
  %140 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %141 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %146 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %147 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @NVME_NS_DATA_NMIC_MAY_BE_SHARED_SHIFT, align 4
  %150 = ashr i32 %148, %149
  %151 = load i32, i32* @NVME_NS_DATA_NMIC_MAY_BE_SHARED_MASK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i8* %145, i8* %155)
  %157 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %158 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %163 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %164 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NVME_NS_DATA_RESCAP_IEKEY13_SHIFT, align 4
  %167 = ashr i32 %165, %166
  %168 = load i32, i32* @NVME_NS_DATA_RESCAP_IEKEY13_MASK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %173 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %174 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @NVME_NS_DATA_RESCAP_EX_AC_AR_SHIFT, align 4
  %177 = ashr i32 %175, %176
  %178 = load i32, i32* @NVME_NS_DATA_RESCAP_EX_AC_AR_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %183 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %184 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NVME_NS_DATA_RESCAP_WR_EX_AR_SHIFT, align 4
  %187 = ashr i32 %185, %186
  %188 = load i32, i32* @NVME_NS_DATA_RESCAP_WR_EX_AR_MASK, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %193 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %194 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @NVME_NS_DATA_RESCAP_EX_AC_RO_SHIFT, align 4
  %197 = ashr i32 %195, %196
  %198 = load i32, i32* @NVME_NS_DATA_RESCAP_EX_AC_RO_MASK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %203 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %204 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @NVME_NS_DATA_RESCAP_WR_EX_RO_SHIFT, align 4
  %207 = ashr i32 %205, %206
  %208 = load i32, i32* @NVME_NS_DATA_RESCAP_WR_EX_RO_MASK, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %213 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %214 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @NVME_NS_DATA_RESCAP_EX_AC_SHIFT, align 4
  %217 = ashr i32 %215, %216
  %218 = load i32, i32* @NVME_NS_DATA_RESCAP_EX_AC_MASK, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %223 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %224 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @NVME_NS_DATA_RESCAP_WR_EX_SHIFT, align 4
  %227 = ashr i32 %225, %226
  %228 = load i32, i32* @NVME_NS_DATA_RESCAP_WR_EX_MASK, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %233 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %234 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @NVME_NS_DATA_RESCAP_PTPL_SHIFT, align 4
  %237 = ashr i32 %235, %236
  %238 = load i32, i32* @NVME_NS_DATA_RESCAP_PTPL_MASK, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i8* %162, i8* %172, i8* %182, i8* %192, i8* %202, i8* %212, i8* %222, i8* %232, i8* %242)
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0))
  %245 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %246 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @NVME_NS_DATA_FPI_SUPP_SHIFT, align 4
  %249 = ashr i32 %247, %248
  %250 = load i32, i32* @NVME_NS_DATA_FPI_SUPP_MASK, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %139
  %254 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %255 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @NVME_NS_DATA_FPI_PERC_SHIFT, align 4
  %258 = ashr i32 %256, %257
  %259 = load i32, i32* @NVME_NS_DATA_FPI_PERC_MASK, align 4
  %260 = and i32 %258, %259
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i32 %260)
  br label %264

262:                                              ; preds = %139
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  br label %264

264:                                              ; preds = %262, %253
  %265 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %266 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @NVME_NS_DATA_DLFEAT_READ_SHIFT, align 4
  %269 = ashr i32 %267, %268
  %270 = load i32, i32* @NVME_NS_DATA_DLFEAT_READ_MASK, align 4
  %271 = and i32 %269, %270
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* @NVME_NS_DATA_DLFEAT_READ_NR, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %264
  br label %289

276:                                              ; preds = %264
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* @NVME_NS_DATA_DLFEAT_READ_00, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %287

281:                                              ; preds = %276
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* @NVME_NS_DATA_DLFEAT_READ_FF, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0)
  br label %287

287:                                              ; preds = %281, %280
  %288 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), %280 ], [ %286, %281 ]
  br label %289

289:                                              ; preds = %287, %275
  %290 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), %275 ], [ %288, %287 ]
  %291 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %292 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @NVME_NS_DATA_DLFEAT_DWZ_SHIFT, align 4
  %295 = ashr i32 %293, %294
  %296 = load i32, i32* @NVME_NS_DATA_DLFEAT_DWZ_MASK, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %301 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %302 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @NVME_NS_DATA_DLFEAT_GCRC_SHIFT, align 4
  %305 = ashr i32 %303, %304
  %306 = load i32, i32* @NVME_NS_DATA_DLFEAT_GCRC_MASK, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0), i8* %290, i8* %300, i8* %310)
  %312 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %313 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i32 %314)
  %316 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %317 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %316, i32 0, i32 18
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @to128(i32 %318)
  %320 = trunc i64 %16 to i32
  %321 = call i8* @uint128_to_str(i32 %319, i8* %18, i32 %320)
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), i8* %321)
  %323 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %324 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @NVME_NS_DATA_NSFEAT_NPVALID_SHIFT, align 4
  %327 = ashr i32 %325, %326
  %328 = load i32, i32* @NVME_NS_DATA_NSFEAT_NPVALID_MASK, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %357

331:                                              ; preds = %289
  %332 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %333 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %332, i32 0, i32 10
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, 1
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i32 %335)
  %337 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %338 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %337, i32 0, i32 11
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0), i32 %340)
  %342 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %343 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %342, i32 0, i32 12
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, 1
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i32 %345)
  %347 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %348 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %347, i32 0, i32 13
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i32 %350)
  %352 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %353 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %352, i32 0, i32 14
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, 1
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i64 0, i64 0), i32 %355)
  br label %357

357:                                              ; preds = %331, %289
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %359

359:                                              ; preds = %372, %357
  %360 = load i32, i32* %5, align 4
  %361 = sext i32 %360 to i64
  %362 = icmp ult i64 %361, 8
  br i1 %362, label %363, label %375

363:                                              ; preds = %359
  %364 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %365 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %364, i32 0, i32 15
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %5, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %370)
  br label %372

372:                                              ; preds = %363
  %373 = load i32, i32* %5, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %5, align 4
  br label %359

375:                                              ; preds = %359
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %378

378:                                              ; preds = %391, %375
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = icmp ult i64 %380, 8
  br i1 %381, label %382, label %394

382:                                              ; preds = %378
  %383 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %384 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %383, i32 0, i32 16
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %389)
  br label %391

391:                                              ; preds = %382
  %392 = load i32, i32* %5, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %5, align 4
  br label %378

394:                                              ; preds = %378
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %396

396:                                              ; preds = %446, %394
  %397 = load i32, i32* %5, align 4
  %398 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %399 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = icmp sle i32 %397, %400
  br i1 %401, label %402, label %449

402:                                              ; preds = %396
  %403 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %404 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %403, i32 0, i32 17
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %5, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %6, align 4
  %410 = load i32, i32* %6, align 4
  %411 = load i32, i32* @NVME_NS_DATA_LBAF_LBADS_SHIFT, align 4
  %412 = ashr i32 %410, %411
  %413 = load i32, i32* @NVME_NS_DATA_LBAF_LBADS_MASK, align 4
  %414 = and i32 %412, %413
  store i32 %414, i32* %7, align 4
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* @NVME_NS_DATA_LBAF_MS_SHIFT, align 4
  %417 = ashr i32 %415, %416
  %418 = load i32, i32* @NVME_NS_DATA_LBAF_MS_MASK, align 4
  %419 = and i32 %417, %418
  store i32 %419, i32* %8, align 4
  %420 = load i32, i32* %6, align 4
  %421 = load i32, i32* @NVME_NS_DATA_LBAF_RP_SHIFT, align 4
  %422 = ashr i32 %420, %421
  %423 = load i32, i32* @NVME_NS_DATA_LBAF_RP_MASK, align 4
  %424 = and i32 %422, %423
  store i32 %424, i32* %9, align 4
  %425 = load i32, i32* %5, align 4
  %426 = load i32, i32* %7, align 4
  %427 = shl i32 1, %426
  %428 = load i32, i32* %8, align 4
  %429 = load i32, i32* %9, align 4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %402
  br label %443

432:                                              ; preds = %402
  %433 = load i32, i32* %9, align 4
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  br label %441

436:                                              ; preds = %432
  %437 = load i32, i32* %9, align 4
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0)
  br label %441

441:                                              ; preds = %436, %435
  %442 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), %435 ], [ %440, %436 ]
  br label %443

443:                                              ; preds = %441, %431
  %444 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), %431 ], [ %442, %441 ]
  %445 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.52, i64 0, i64 0), i32 %425, i32 %427, i32 %428, i8* %444)
  br label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %5, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %5, align 4
  br label %396

449:                                              ; preds = %396
  %450 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %450)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @uint128_to_str(i32, i8*, i32) #2

declare dso_local i32 @to128(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
