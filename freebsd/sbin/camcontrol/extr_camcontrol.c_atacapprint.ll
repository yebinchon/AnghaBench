; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atacapprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atacapprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32, i8*, i8*, i8*, i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"protocol              \00", align 1
@ATA_PROTO_CFA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"CFA\00", align 1
@ATA_PROTO_ATAPI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ATAPI\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s8-ACS\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ACS-%d %s\00", align 1
@ATA_SATA_GEN3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c" SATA 3.x\0A\00", align 1
@ATA_SATA_GEN2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c" SATA 2.x\0A\00", align 1
@ATA_SATA_GEN1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c" SATA 1.x\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" SATA\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"device model          %.40s\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"firmware revision     %.8s\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"serial number         %.20s\0A\00", align 1
@ATA_SUPPORT_64BITWWN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"WWN                   %04x%04x%04x%04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"additional product id %.8s\0A\00", align 1
@ATA_SUPPORT_MEDIASN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"media serial number   %.30s\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"cylinders             %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"heads                 %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"sectors/track         %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"sector size           logical %u, physical %lu, offset %lu\0A\00", align 1
@ATA_SUPPORT_CFA = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"CFA supported\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"LBA%ssupported         \00", align 1
@ATA_SUPPORT_LBA = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" not \00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"%d sectors\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"LBA48%ssupported       \00", align 1
@ATA_SUPPORT_ADDRESS48 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"%ju sectors\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"PIO supported         PIO\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ATA_SUPPORT_IORDY = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c" w/o IORDY\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"DMA%ssupported         \00", align 1
@ATA_SUPPORT_DMA = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"WDMA\00", align 1
@ATA_FLAG_88 = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [5 x i8] c"UDMA\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"media RPM             non-rotating\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"media RPM             %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Zoned-Device Commands \00", align 1
@ATA_SUPPORT_ZONE_MASK = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"device managed\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"host aware\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@.str.48 = private unnamed_addr constant [73 x i8] c"\0AFeature                      Support  Enabled   Value           Vendor\0A\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"read ahead                     %s\09%s\0A\00", align 1
@ATA_SUPPORT_LOOKAHEAD = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"write cache                    %s\09%s\0A\00", align 1
@ATA_SUPPORT_WRITECACHE = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [38 x i8] c"flush cache                    %s\09%s\0A\00", align 1
@ATA_SUPPORT_FLUSHCACHE = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [32 x i8] c"Native Command Queuing (NCQ)   \00", align 1
@ATA_SUPPORT_NCQ = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [14 x i8] c"yes\09\09%d tags\0A\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"NCQ Priority Information       %s\0A\00", align 1
@ATA_SUPPORT_NCQ_PRIO = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [35 x i8] c"NCQ Non-Data Command           %s\0A\00", align 1
@ATA_SUPPORT_NCQ_NON_DATA = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [35 x i8] c"NCQ Streaming                  %s\0A\00", align 1
@ATA_SUPPORT_NCQ_STREAM = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [35 x i8] c"Receive & Send FPDMA Queued    %s\0A\00", align 1
@ATA_SUPPORT_RCVSND_FPDMA_QUEUED = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [35 x i8] c"NCQ Autosense                  %s\0A\00", align 1
@ATA_SUPPORT_NCQ_AUTOSENSE = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [38 x i8] c"SMART                          %s\09%s\0A\00", align 1
@ATA_SUPPORT_SMART = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [38 x i8] c"security                       %s\09%s\0A\00", align 1
@ATA_SUPPORT_SECURITY = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [38 x i8] c"power management               %s\09%s\0A\00", align 1
@ATA_SUPPORT_POWERMGT = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [38 x i8] c"microcode download             %s\09%s\0A\00", align 1
@ATA_SUPPORT_MICROCODE = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [37 x i8] c"advanced power management      %s\09%s\00", align 1
@ATA_SUPPORT_APM = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [12 x i8] c"\09%d/0x%02X\0A\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"automatic acoustic management  %s\09%s\00", align 1
@ATA_SUPPORT_AUTOACOUSTIC = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [22 x i8] c"\09%d/0x%02X\09%d/0x%02X\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"media status notification      %s\09%s\0A\00", align 1
@ATA_SUPPORT_NOTIFY = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [38 x i8] c"power-up in Standby            %s\09%s\0A\00", align 1
@ATA_SUPPORT_STANDBY = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [37 x i8] c"write-read-verify              %s\09%s\00", align 1
@ATA_SUPPORT_WRITEREADVERIFY = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [10 x i8] c"\09%d/0x%x\0A\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"unload                         %s\09%s\0A\00", align 1
@ATA_SUPPORT_UNLOAD = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [38 x i8] c"general purpose logging        %s\09%s\0A\00", align 1
@ATA_SUPPORT_GENLOG = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [38 x i8] c"free-fall                      %s\09%s\0A\00", align 1
@ATA_SUPPORT_FREEFALL = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [38 x i8] c"sense data reporting           %s\09%s\0A\00", align 1
@ATA_SUPPORT_SENSE_REPORT = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [38 x i8] c"extended power conditions      %s\09%s\0A\00", align 1
@ATA_SUPPORT_EPC = common dso_local global i32 0, align 4
@.str.78 = private unnamed_addr constant [38 x i8] c"device statistics notification %s\09%s\0A\00", align 1
@ATA_SUPPORT_DSN = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [32 x i8] c"Data Set Management (DSM/TRIM) \00", align 1
@ATA_SUPPORT_DSM_TRIM = common dso_local global i32 0, align 4
@.str.80 = private unnamed_addr constant [5 x i8] c"yes\0A\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"DSM - max 512byte blocks       \00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"yes              not specified\0A\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"yes              %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"DSM - deterministic read       \00", align 1
@ATA_SUPPORT_DRAT = common dso_local global i32 0, align 4
@ATA_SUPPORT_RZAT = common dso_local global i32 0, align 4
@.str.85 = private unnamed_addr constant [25 x i8] c"yes              zeroed\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"yes              any value\0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"Trusted Computing              %s\0A\00", align 1
@ATA_SUPPORT_TCG = common dso_local global i32 0, align 4
@.str.88 = private unnamed_addr constant [35 x i8] c"encrypts all user data         %s\0A\00", align 1
@ATA_ENCRYPTS_ALL_USER_DATA = common dso_local global i32 0, align 4
@.str.89 = private unnamed_addr constant [32 x i8] c"Sanitize                       \00", align 1
@ATA_SUPPORT_SANITIZE = common dso_local global i32 0, align 4
@.str.90 = private unnamed_addr constant [13 x i8] c"yes\09\09%s%s%s\0A\00", align 1
@ATA_SUPPORT_BLOCK_ERASE_EXT = common dso_local global i32 0, align 4
@.str.91 = private unnamed_addr constant [8 x i8] c"block, \00", align 1
@.str.92 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATA_SUPPORT_OVERWRITE_EXT = common dso_local global i32 0, align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"overwrite, \00", align 1
@ATA_SUPPORT_CRYPTO_SCRAMBLE_EXT = common dso_local global i32 0, align 4
@.str.94 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@.str.95 = private unnamed_addr constant [35 x i8] c"Sanitize - commands allowed    %s\0A\00", align 1
@ATA_SUPPORT_SANITIZE_ALLOWED = common dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [35 x i8] c"Sanitize - antifreeze lock     %s\0A\00", align 1
@ATA_SUPPORT_ANTIFREEZE_LOCK_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_params*)* @atacapprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atacapprint(%struct.ata_params* %0) #0 {
  %2 = alloca %struct.ata_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_params* %0, %struct.ata_params** %2, align 8
  %6 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %7 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %6, i32 0, i32 37
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %11 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %10, i32 0, i32 36
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 16
  %15 = or i32 %9, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %17 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %16, i32 0, i32 35
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %21 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %20, i32 0, i32 34
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 16
  %25 = or i32 %19, %24
  %26 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %27 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %26, i32 0, i32 33
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 32
  %31 = or i32 %25, %30
  %32 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %33 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %32, i32 0, i32 32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 48
  %37 = or i32 %31, %36
  store i32 %37, i32* %5, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %41 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ATA_PROTO_CFA, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  br label %55

46:                                               ; preds = %1
  %47 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %48 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATA_PROTO_ATAPI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %55

55:                                               ; preds = %46, %45
  %56 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %45 ], [ %54, %46 ]
  store i8* %56, i8** %3, align 8
  %57 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %58 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %57, i32 0, i32 31
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ata_version(i32 %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %97

65:                                               ; preds = %55
  %66 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %67 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %66, i32 0, i32 31
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ata_version(i32 %68)
  %70 = icmp sle i32 %69, 7
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %74 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %73, i32 0, i32 31
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ata_version(i32 %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %76)
  br label %96

78:                                               ; preds = %65
  %79 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %80 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %79, i32 0, i32 31
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ata_version(i32 %81)
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  br label %95

87:                                               ; preds = %78
  %88 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %89 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %88, i32 0, i32 31
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ata_version(i32 %90)
  %92 = sub nsw i32 %91, 7
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %92, i8* %93)
  br label %95

95:                                               ; preds = %87, %84
  br label %96

96:                                               ; preds = %95, %71
  br label %97

97:                                               ; preds = %96, %62
  %98 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %99 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %97
  %103 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %104 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 65535
  br i1 %106, label %107, label %139

107:                                              ; preds = %102
  %108 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %109 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ATA_SATA_GEN3, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %138

116:                                              ; preds = %107
  %117 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %118 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ATA_SATA_GEN2, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %137

125:                                              ; preds = %116
  %126 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %127 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ATA_SATA_GEN1, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %136

134:                                              ; preds = %125
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %132
  br label %137

137:                                              ; preds = %136, %123
  br label %138

138:                                              ; preds = %137, %114
  br label %141

139:                                              ; preds = %102, %97
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %138
  %142 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %143 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* %144)
  %146 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %147 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %148)
  %150 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %151 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %152)
  %154 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %155 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %154, i32 0, i32 27
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ATA_SUPPORT_64BITWWN, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %141
  %162 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %163 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %168 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %173 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %178 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %166, i32 %171, i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %161, %141
  %184 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %185 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %184, i32 0, i32 6
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %186)
  %188 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %189 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %188, i32 0, i32 27
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ATA_SUPPORT_MEDIASN, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %183
  %196 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %197 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %196, i32 0, i32 7
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %195, %183
  %201 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %202 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %203)
  %205 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %206 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %205, i32 0, i32 9
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %207)
  %209 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %210 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %211)
  %213 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %214 = call i32 @ata_logical_sector_size(%struct.ata_params* %213)
  %215 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %216 = call i64 @ata_physical_sector_size(%struct.ata_params* %215)
  %217 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %218 = call i64 @ata_logical_sector_offset(%struct.ata_params* %217)
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0), i32 %214, i64 %216, i64 %218)
  %220 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %221 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @ATA_PROTO_CFA, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %233, label %225

225:                                              ; preds = %200
  %226 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %227 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %226, i32 0, i32 28
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ATA_SUPPORT_CFA, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225, %200
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %225
  %236 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %237 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %236, i32 0, i32 11
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @ATA_SUPPORT_LBA, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* %243)
  %245 = load i32, i32* %4, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %235
  %248 = load i32, i32* %4, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 %248)
  br label %252

250:                                              ; preds = %235
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %247
  %253 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %254 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %253, i32 0, i32 28
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8* %261)
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %252
  %266 = load i32, i32* %5, align 4
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %266)
  br label %270

268:                                              ; preds = %252
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %265
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %272 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %273 = call i32 @ata_max_pmode(%struct.ata_params* %272)
  switch i32 %273, label %282 [
    i32 130, label %274
    i32 131, label %276
    i32 132, label %278
    i32 133, label %280
  ]

274:                                              ; preds = %270
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  br label %284

276:                                              ; preds = %270
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %284

278:                                              ; preds = %270
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %284

280:                                              ; preds = %270
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %284

282:                                              ; preds = %270
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %280, %278, %276, %274
  %285 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %286 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @ATA_SUPPORT_IORDY, align 4
  %289 = and i32 %287, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %284
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %284
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %295 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %296 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %295, i32 0, i32 11
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @ATA_SUPPORT_DMA, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i8* %302)
  %304 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %305 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %304, i32 0, i32 11
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @ATA_SUPPORT_DMA, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %424

310:                                              ; preds = %293
  %311 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %312 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 8
  %314 = and i32 %313, 255
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %345

316:                                              ; preds = %310
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %318 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %319 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %318, i32 0, i32 12
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %343

325:                                              ; preds = %316
  %326 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %327 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %326, i32 0, i32 12
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, 2
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %325
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %342

333:                                              ; preds = %325
  %334 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %335 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 8
  %337 = and i32 %336, 1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %333
  br label %342

342:                                              ; preds = %341, %331
  br label %343

343:                                              ; preds = %342, %323
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %345

345:                                              ; preds = %343, %310
  %346 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %347 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %346, i32 0, i32 13
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @ATA_FLAG_88, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %423

352:                                              ; preds = %345
  %353 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %354 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %353, i32 0, i32 14
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, 255
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %423

358:                                              ; preds = %352
  %359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0))
  %360 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %361 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %360, i32 0, i32 14
  %362 = load i32, i32* %361, align 8
  %363 = and i32 %362, 64
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %358
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  br label %421

367:                                              ; preds = %358
  %368 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %369 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %368, i32 0, i32 14
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, 32
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %367
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  br label %420

375:                                              ; preds = %367
  %376 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %377 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %376, i32 0, i32 14
  %378 = load i32, i32* %377, align 8
  %379 = and i32 %378, 16
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %375
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  br label %419

383:                                              ; preds = %375
  %384 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %385 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %384, i32 0, i32 14
  %386 = load i32, i32* %385, align 8
  %387 = and i32 %386, 8
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %383
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %418

391:                                              ; preds = %383
  %392 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %393 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %392, i32 0, i32 14
  %394 = load i32, i32* %393, align 8
  %395 = and i32 %394, 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %391
  %398 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %417

399:                                              ; preds = %391
  %400 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %401 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %400, i32 0, i32 14
  %402 = load i32, i32* %401, align 8
  %403 = and i32 %402, 2
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %399
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %416

407:                                              ; preds = %399
  %408 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %409 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %408, i32 0, i32 14
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %407
  %414 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %415

415:                                              ; preds = %413, %407
  br label %416

416:                                              ; preds = %415, %405
  br label %417

417:                                              ; preds = %416, %397
  br label %418

418:                                              ; preds = %417, %389
  br label %419

419:                                              ; preds = %418, %381
  br label %420

420:                                              ; preds = %419, %373
  br label %421

421:                                              ; preds = %420, %365
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %352, %345
  br label %424

424:                                              ; preds = %423, %293
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %426 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %427 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %426, i32 0, i32 15
  %428 = load i32, i32* %427, align 4
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %432

430:                                              ; preds = %424
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0))
  br label %448

432:                                              ; preds = %424
  %433 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %434 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %433, i32 0, i32 15
  %435 = load i32, i32* %434, align 4
  %436 = icmp sge i32 %435, 1025
  br i1 %436, label %437, label %447

437:                                              ; preds = %432
  %438 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %439 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %438, i32 0, i32 15
  %440 = load i32, i32* %439, align 4
  %441 = icmp sle i32 %440, 65534
  br i1 %441, label %442, label %447

442:                                              ; preds = %437
  %443 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %444 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %443, i32 0, i32 15
  %445 = load i32, i32* %444, align 4
  %446 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i32 %445)
  br label %447

447:                                              ; preds = %442, %437, %432
  br label %448

448:                                              ; preds = %447, %430
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0))
  %450 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %451 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %450, i32 0, i32 16
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @ATA_SUPPORT_ZONE_MASK, align 4
  %454 = and i32 %452, %453
  switch i32 %454, label %459 [
    i32 129, label %455
    i32 128, label %457
  ]

455:                                              ; preds = %448
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0))
  br label %461

457:                                              ; preds = %448
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  br label %461

459:                                              ; preds = %448
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  br label %461

461:                                              ; preds = %459, %457, %455
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.48, i64 0, i64 0))
  %463 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %464 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %463, i32 0, i32 28
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @ATA_SUPPORT_LOOKAHEAD, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  %470 = zext i1 %469 to i64
  %471 = select i1 %469, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %472 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %473 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %472, i32 0, i32 27
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @ATA_SUPPORT_LOOKAHEAD, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  %479 = zext i1 %478 to i64
  %480 = select i1 %478, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i64 0, i64 0), i8* %471, i8* %480)
  %482 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %483 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %482, i32 0, i32 28
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @ATA_SUPPORT_WRITECACHE, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %491 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %492 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %491, i32 0, i32 27
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @ATA_SUPPORT_WRITECACHE, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  %498 = zext i1 %497 to i64
  %499 = select i1 %497, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i64 0, i64 0), i8* %490, i8* %499)
  %501 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %502 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %501, i32 0, i32 28
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %510 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %511 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %510, i32 0, i32 27
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE, align 4
  %515 = and i32 %513, %514
  %516 = icmp ne i32 %515, 0
  %517 = zext i1 %516 to i64
  %518 = select i1 %516, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %519 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0), i8* %509, i8* %518)
  %520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i64 0, i64 0))
  %521 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %522 = call i64 @atasata(%struct.ata_params* %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %583

524:                                              ; preds = %461
  %525 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %526 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @ATA_SUPPORT_NCQ, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %583

531:                                              ; preds = %524
  %532 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %533 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %532, i32 0, i32 30
  %534 = load i32, i32* %533, align 8
  %535 = call i32 @ATA_QUEUE_LEN(i32 %534)
  %536 = add nsw i32 %535, 1
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0), i32 %536)
  %538 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %539 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* @ATA_SUPPORT_NCQ_PRIO, align 4
  %542 = and i32 %540, %541
  %543 = icmp ne i32 %542, 0
  %544 = zext i1 %543 to i64
  %545 = select i1 %543, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %546 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i64 0, i64 0), i8* %545)
  %547 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %548 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %547, i32 0, i32 17
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* @ATA_SUPPORT_NCQ_NON_DATA, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  %553 = zext i1 %552 to i64
  %554 = select i1 %552, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* %554)
  %556 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %557 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %556, i32 0, i32 17
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* @ATA_SUPPORT_NCQ_STREAM, align 4
  %560 = and i32 %558, %559
  %561 = icmp ne i32 %560, 0
  %562 = zext i1 %561 to i64
  %563 = select i1 %561, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %564 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i8* %563)
  %565 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %566 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %565, i32 0, i32 17
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @ATA_SUPPORT_RCVSND_FPDMA_QUEUED, align 4
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  %571 = zext i1 %570 to i64
  %572 = select i1 %570, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %573 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i8* %572)
  %574 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %575 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %574, i32 0, i32 18
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* @ATA_SUPPORT_NCQ_AUTOSENSE, align 4
  %578 = and i32 %576, %577
  %579 = icmp ne i32 %578, 0
  %580 = zext i1 %579 to i64
  %581 = select i1 %579, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %582 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0), i8* %581)
  br label %585

583:                                              ; preds = %524, %461
  %584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  br label %585

585:                                              ; preds = %583, %531
  %586 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %587 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %586, i32 0, i32 28
  %588 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* @ATA_SUPPORT_SMART, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  %593 = zext i1 %592 to i64
  %594 = select i1 %592, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %595 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %596 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %595, i32 0, i32 27
  %597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* @ATA_SUPPORT_SMART, align 4
  %600 = and i32 %598, %599
  %601 = icmp ne i32 %600, 0
  %602 = zext i1 %601 to i64
  %603 = select i1 %601, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %604 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i64 0, i64 0), i8* %594, i8* %603)
  %605 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %606 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %605, i32 0, i32 28
  %607 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %606, i32 0, i32 1
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @ATA_SUPPORT_SECURITY, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  %612 = zext i1 %611 to i64
  %613 = select i1 %611, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %614 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %615 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %614, i32 0, i32 27
  %616 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* @ATA_SUPPORT_SECURITY, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  %621 = zext i1 %620 to i64
  %622 = select i1 %620, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %623 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i64 0, i64 0), i8* %613, i8* %622)
  %624 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %625 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %624, i32 0, i32 28
  %626 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %629 = and i32 %627, %628
  %630 = icmp ne i32 %629, 0
  %631 = zext i1 %630 to i64
  %632 = select i1 %630, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %633 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %634 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %633, i32 0, i32 27
  %635 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  %640 = zext i1 %639 to i64
  %641 = select i1 %639, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %642 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i64 0, i64 0), i8* %632, i8* %641)
  %643 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %644 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %643, i32 0, i32 28
  %645 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  %647 = load i32, i32* @ATA_SUPPORT_MICROCODE, align 4
  %648 = and i32 %646, %647
  %649 = icmp ne i32 %648, 0
  %650 = zext i1 %649 to i64
  %651 = select i1 %649, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %652 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %653 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %652, i32 0, i32 27
  %654 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %653, i32 0, i32 2
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* @ATA_SUPPORT_MICROCODE, align 4
  %657 = and i32 %655, %656
  %658 = icmp ne i32 %657, 0
  %659 = zext i1 %658 to i64
  %660 = select i1 %658, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %661 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i64 0, i64 0), i8* %651, i8* %660)
  %662 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %663 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %662, i32 0, i32 28
  %664 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = load i32, i32* @ATA_SUPPORT_APM, align 4
  %667 = and i32 %665, %666
  %668 = icmp ne i32 %667, 0
  %669 = zext i1 %668 to i64
  %670 = select i1 %668, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %671 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %672 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %671, i32 0, i32 27
  %673 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %672, i32 0, i32 2
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @ATA_SUPPORT_APM, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  %678 = zext i1 %677 to i64
  %679 = select i1 %677, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %680 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0), i8* %670, i8* %679)
  %681 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %682 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %681, i32 0, i32 28
  %683 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = load i32, i32* @ATA_SUPPORT_APM, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %698

688:                                              ; preds = %585
  %689 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %690 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %689, i32 0, i32 19
  %691 = load i32, i32* %690, align 4
  %692 = and i32 %691, 255
  %693 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %694 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %693, i32 0, i32 19
  %695 = load i32, i32* %694, align 4
  %696 = and i32 %695, 255
  %697 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 %692, i32 %696)
  br label %700

698:                                              ; preds = %585
  %699 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %700

700:                                              ; preds = %698, %688
  %701 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %702 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %701, i32 0, i32 28
  %703 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = load i32, i32* @ATA_SUPPORT_AUTOACOUSTIC, align 4
  %706 = and i32 %704, %705
  %707 = icmp ne i32 %706, 0
  %708 = zext i1 %707 to i64
  %709 = select i1 %707, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %710 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %711 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %710, i32 0, i32 27
  %712 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %711, i32 0, i32 2
  %713 = load i32, i32* %712, align 4
  %714 = load i32, i32* @ATA_SUPPORT_AUTOACOUSTIC, align 4
  %715 = and i32 %713, %714
  %716 = icmp ne i32 %715, 0
  %717 = zext i1 %716 to i64
  %718 = select i1 %716, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %719 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.67, i64 0, i64 0), i8* %709, i8* %718)
  %720 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %721 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %720, i32 0, i32 28
  %722 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = load i32, i32* @ATA_SUPPORT_AUTOACOUSTIC, align 4
  %725 = and i32 %723, %724
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %745

727:                                              ; preds = %700
  %728 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %729 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %728, i32 0, i32 29
  %730 = load i32, i32* %729, align 4
  %731 = call i32 @ATA_ACOUSTIC_CURRENT(i32 %730)
  %732 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %733 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %732, i32 0, i32 29
  %734 = load i32, i32* %733, align 4
  %735 = call i32 @ATA_ACOUSTIC_CURRENT(i32 %734)
  %736 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %737 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %736, i32 0, i32 29
  %738 = load i32, i32* %737, align 4
  %739 = call i32 @ATA_ACOUSTIC_VENDOR(i32 %738)
  %740 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %741 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %740, i32 0, i32 29
  %742 = load i32, i32* %741, align 4
  %743 = call i32 @ATA_ACOUSTIC_VENDOR(i32 %742)
  %744 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 %731, i32 %735, i32 %739, i32 %743)
  br label %747

745:                                              ; preds = %700
  %746 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %747

747:                                              ; preds = %745, %727
  %748 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %749 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %748, i32 0, i32 28
  %750 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 8
  %752 = load i32, i32* @ATA_SUPPORT_NOTIFY, align 4
  %753 = and i32 %751, %752
  %754 = icmp ne i32 %753, 0
  %755 = zext i1 %754 to i64
  %756 = select i1 %754, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %757 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %758 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %757, i32 0, i32 27
  %759 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %758, i32 0, i32 2
  %760 = load i32, i32* %759, align 4
  %761 = load i32, i32* @ATA_SUPPORT_NOTIFY, align 4
  %762 = and i32 %760, %761
  %763 = icmp ne i32 %762, 0
  %764 = zext i1 %763 to i64
  %765 = select i1 %763, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %766 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i64 0, i64 0), i8* %756, i8* %765)
  %767 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %768 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %767, i32 0, i32 28
  %769 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %768, i32 0, i32 0
  %770 = load i32, i32* %769, align 8
  %771 = load i32, i32* @ATA_SUPPORT_STANDBY, align 4
  %772 = and i32 %770, %771
  %773 = icmp ne i32 %772, 0
  %774 = zext i1 %773 to i64
  %775 = select i1 %773, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %776 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %777 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %776, i32 0, i32 27
  %778 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %777, i32 0, i32 2
  %779 = load i32, i32* %778, align 4
  %780 = load i32, i32* @ATA_SUPPORT_STANDBY, align 4
  %781 = and i32 %779, %780
  %782 = icmp ne i32 %781, 0
  %783 = zext i1 %782 to i64
  %784 = select i1 %782, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %785 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i64 0, i64 0), i8* %775, i8* %784)
  %786 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %787 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %786, i32 0, i32 20
  %788 = load i32, i32* %787, align 8
  %789 = load i32, i32* @ATA_SUPPORT_WRITEREADVERIFY, align 4
  %790 = and i32 %788, %789
  %791 = icmp ne i32 %790, 0
  %792 = zext i1 %791 to i64
  %793 = select i1 %791, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %794 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %795 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %794, i32 0, i32 21
  %796 = load i32, i32* %795, align 4
  %797 = load i32, i32* @ATA_SUPPORT_WRITEREADVERIFY, align 4
  %798 = and i32 %796, %797
  %799 = icmp ne i32 %798, 0
  %800 = zext i1 %799 to i64
  %801 = select i1 %799, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %802 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i64 0, i64 0), i8* %793, i8* %801)
  %803 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %804 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %803, i32 0, i32 20
  %805 = load i32, i32* %804, align 8
  %806 = load i32, i32* @ATA_SUPPORT_WRITEREADVERIFY, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %817

809:                                              ; preds = %747
  %810 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %811 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %810, i32 0, i32 22
  %812 = load i32, i32* %811, align 8
  %813 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %814 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %813, i32 0, i32 22
  %815 = load i32, i32* %814, align 8
  %816 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i32 %812, i32 %815)
  br label %819

817:                                              ; preds = %747
  %818 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %819

819:                                              ; preds = %817, %809
  %820 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %821 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %820, i32 0, i32 28
  %822 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %821, i32 0, i32 2
  %823 = load i32, i32* %822, align 8
  %824 = load i32, i32* @ATA_SUPPORT_UNLOAD, align 4
  %825 = and i32 %823, %824
  %826 = icmp ne i32 %825, 0
  %827 = zext i1 %826 to i64
  %828 = select i1 %826, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %829 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %830 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %829, i32 0, i32 27
  %831 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %830, i32 0, i32 0
  %832 = load i32, i32* %831, align 4
  %833 = load i32, i32* @ATA_SUPPORT_UNLOAD, align 4
  %834 = and i32 %832, %833
  %835 = icmp ne i32 %834, 0
  %836 = zext i1 %835 to i64
  %837 = select i1 %835, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %838 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i64 0, i64 0), i8* %828, i8* %837)
  %839 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %840 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %839, i32 0, i32 28
  %841 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %840, i32 0, i32 2
  %842 = load i32, i32* %841, align 8
  %843 = load i32, i32* @ATA_SUPPORT_GENLOG, align 4
  %844 = and i32 %842, %843
  %845 = icmp ne i32 %844, 0
  %846 = zext i1 %845 to i64
  %847 = select i1 %845, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %848 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %849 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %848, i32 0, i32 27
  %850 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 4
  %852 = load i32, i32* @ATA_SUPPORT_GENLOG, align 4
  %853 = and i32 %851, %852
  %854 = icmp ne i32 %853, 0
  %855 = zext i1 %854 to i64
  %856 = select i1 %854, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %857 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.74, i64 0, i64 0), i8* %847, i8* %856)
  %858 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %859 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %858, i32 0, i32 20
  %860 = load i32, i32* %859, align 8
  %861 = load i32, i32* @ATA_SUPPORT_FREEFALL, align 4
  %862 = and i32 %860, %861
  %863 = icmp ne i32 %862, 0
  %864 = zext i1 %863 to i64
  %865 = select i1 %863, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %866 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %867 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %866, i32 0, i32 21
  %868 = load i32, i32* %867, align 4
  %869 = load i32, i32* @ATA_SUPPORT_FREEFALL, align 4
  %870 = and i32 %868, %869
  %871 = icmp ne i32 %870, 0
  %872 = zext i1 %871 to i64
  %873 = select i1 %871, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %874 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.75, i64 0, i64 0), i8* %865, i8* %873)
  %875 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %876 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %875, i32 0, i32 20
  %877 = load i32, i32* %876, align 8
  %878 = load i32, i32* @ATA_SUPPORT_SENSE_REPORT, align 4
  %879 = and i32 %877, %878
  %880 = icmp ne i32 %879, 0
  %881 = zext i1 %880 to i64
  %882 = select i1 %880, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %883 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %884 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %883, i32 0, i32 21
  %885 = load i32, i32* %884, align 4
  %886 = load i32, i32* @ATA_SUPPORT_SENSE_REPORT, align 4
  %887 = and i32 %885, %886
  %888 = icmp ne i32 %887, 0
  %889 = zext i1 %888 to i64
  %890 = select i1 %888, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %891 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.76, i64 0, i64 0), i8* %882, i8* %890)
  %892 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %893 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %892, i32 0, i32 20
  %894 = load i32, i32* %893, align 8
  %895 = load i32, i32* @ATA_SUPPORT_EPC, align 4
  %896 = and i32 %894, %895
  %897 = icmp ne i32 %896, 0
  %898 = zext i1 %897 to i64
  %899 = select i1 %897, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %900 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %901 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %900, i32 0, i32 21
  %902 = load i32, i32* %901, align 4
  %903 = load i32, i32* @ATA_SUPPORT_EPC, align 4
  %904 = and i32 %902, %903
  %905 = icmp ne i32 %904, 0
  %906 = zext i1 %905 to i64
  %907 = select i1 %905, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %908 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i64 0, i64 0), i8* %899, i8* %907)
  %909 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %910 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %909, i32 0, i32 20
  %911 = load i32, i32* %910, align 8
  %912 = load i32, i32* @ATA_SUPPORT_DSN, align 4
  %913 = and i32 %911, %912
  %914 = icmp ne i32 %913, 0
  %915 = zext i1 %914 to i64
  %916 = select i1 %914, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %917 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %918 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %917, i32 0, i32 21
  %919 = load i32, i32* %918, align 4
  %920 = load i32, i32* @ATA_SUPPORT_DSN, align 4
  %921 = and i32 %919, %920
  %922 = icmp ne i32 %921, 0
  %923 = zext i1 %922 to i64
  %924 = select i1 %922, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %925 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i64 0, i64 0), i8* %916, i8* %924)
  %926 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0))
  %927 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %928 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %927, i32 0, i32 23
  %929 = load i32, i32* %928, align 4
  %930 = load i32, i32* @ATA_SUPPORT_DSM_TRIM, align 4
  %931 = and i32 %929, %930
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %933, label %970

933:                                              ; preds = %819
  %934 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0))
  %935 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i64 0, i64 0))
  %936 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %937 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %936, i32 0, i32 24
  %938 = load i32, i32* %937, align 8
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %942

940:                                              ; preds = %933
  %941 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i64 0, i64 0))
  br label %947

942:                                              ; preds = %933
  %943 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %944 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %943, i32 0, i32 24
  %945 = load i32, i32* %944, align 8
  %946 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i64 0, i64 0), i32 %945)
  br label %947

947:                                              ; preds = %942, %940
  %948 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i64 0, i64 0))
  %949 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %950 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %949, i32 0, i32 16
  %951 = load i32, i32* %950, align 8
  %952 = load i32, i32* @ATA_SUPPORT_DRAT, align 4
  %953 = and i32 %951, %952
  %954 = icmp ne i32 %953, 0
  br i1 %954, label %955, label %967

955:                                              ; preds = %947
  %956 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %957 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %956, i32 0, i32 16
  %958 = load i32, i32* %957, align 8
  %959 = load i32, i32* @ATA_SUPPORT_RZAT, align 4
  %960 = and i32 %958, %959
  %961 = icmp ne i32 %960, 0
  br i1 %961, label %962, label %964

962:                                              ; preds = %955
  %963 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i64 0, i64 0))
  br label %966

964:                                              ; preds = %955
  %965 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i64 0, i64 0))
  br label %966

966:                                              ; preds = %964, %962
  br label %969

967:                                              ; preds = %947
  %968 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  br label %969

969:                                              ; preds = %967, %966
  br label %972

970:                                              ; preds = %819
  %971 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  br label %972

972:                                              ; preds = %970, %969
  %973 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %974 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %973, i32 0, i32 25
  %975 = load i32, i32* %974, align 4
  %976 = and i32 %975, 49152
  %977 = icmp eq i32 %976, 16384
  br i1 %977, label %978, label %985

978:                                              ; preds = %972
  %979 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %980 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %979, i32 0, i32 25
  %981 = load i32, i32* %980, align 4
  %982 = load i32, i32* @ATA_SUPPORT_TCG, align 4
  %983 = and i32 %981, %982
  %984 = icmp ne i32 %983, 0
  br label %985

985:                                              ; preds = %978, %972
  %986 = phi i1 [ false, %972 ], [ %984, %978 ]
  %987 = zext i1 %986 to i64
  %988 = select i1 %986, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %989 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0), i8* %988)
  %990 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %991 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %990, i32 0, i32 16
  %992 = load i32, i32* %991, align 8
  %993 = load i32, i32* @ATA_ENCRYPTS_ALL_USER_DATA, align 4
  %994 = and i32 %992, %993
  %995 = icmp ne i32 %994, 0
  %996 = zext i1 %995 to i64
  %997 = select i1 %995, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %998 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.88, i64 0, i64 0), i8* %997)
  %999 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.89, i64 0, i64 0))
  %1000 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %1001 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %1000, i32 0, i32 26
  %1002 = load i32, i32* %1001, align 8
  %1003 = load i32, i32* @ATA_SUPPORT_SANITIZE, align 4
  %1004 = and i32 %1002, %1003
  %1005 = icmp ne i32 %1004, 0
  br i1 %1005, label %1006, label %1050

1006:                                             ; preds = %985
  %1007 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %1008 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %1007, i32 0, i32 26
  %1009 = load i32, i32* %1008, align 8
  %1010 = load i32, i32* @ATA_SUPPORT_BLOCK_ERASE_EXT, align 4
  %1011 = and i32 %1009, %1010
  %1012 = icmp ne i32 %1011, 0
  %1013 = zext i1 %1012 to i64
  %1014 = select i1 %1012, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0)
  %1015 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %1016 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %1015, i32 0, i32 26
  %1017 = load i32, i32* %1016, align 8
  %1018 = load i32, i32* @ATA_SUPPORT_OVERWRITE_EXT, align 4
  %1019 = and i32 %1017, %1018
  %1020 = icmp ne i32 %1019, 0
  %1021 = zext i1 %1020 to i64
  %1022 = select i1 %1020, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0)
  %1023 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %1024 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %1023, i32 0, i32 26
  %1025 = load i32, i32* %1024, align 8
  %1026 = load i32, i32* @ATA_SUPPORT_CRYPTO_SCRAMBLE_EXT, align 4
  %1027 = and i32 %1025, %1026
  %1028 = icmp ne i32 %1027, 0
  %1029 = zext i1 %1028 to i64
  %1030 = select i1 %1028, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0)
  %1031 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i8* %1014, i8* %1022, i8* %1030)
  %1032 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %1033 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %1032, i32 0, i32 26
  %1034 = load i32, i32* %1033, align 8
  %1035 = load i32, i32* @ATA_SUPPORT_SANITIZE_ALLOWED, align 4
  %1036 = and i32 %1034, %1035
  %1037 = icmp ne i32 %1036, 0
  %1038 = zext i1 %1037 to i64
  %1039 = select i1 %1037, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %1040 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.95, i64 0, i64 0), i8* %1039)
  %1041 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %1042 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %1041, i32 0, i32 26
  %1043 = load i32, i32* %1042, align 8
  %1044 = load i32, i32* @ATA_SUPPORT_ANTIFREEZE_LOCK_EXT, align 4
  %1045 = and i32 %1043, %1044
  %1046 = icmp ne i32 %1045, 0
  %1047 = zext i1 %1046 to i64
  %1048 = select i1 %1046, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)
  %1049 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.96, i64 0, i64 0), i8* %1048)
  br label %1052

1050:                                             ; preds = %985
  %1051 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0))
  br label %1052

1052:                                             ; preds = %1050, %1006
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ata_version(i32) #1

declare dso_local i32 @ata_logical_sector_size(%struct.ata_params*) #1

declare dso_local i64 @ata_physical_sector_size(%struct.ata_params*) #1

declare dso_local i64 @ata_logical_sector_offset(%struct.ata_params*) #1

declare dso_local i32 @ata_max_pmode(%struct.ata_params*) #1

declare dso_local i64 @atasata(%struct.ata_params*) #1

declare dso_local i32 @ATA_QUEUE_LEN(i32) #1

declare dso_local i32 @ATA_ACOUSTIC_CURRENT(i32) #1

declare dso_local i32 @ATA_ACOUSTIC_VENDOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
