; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_op_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_op_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_cmd = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"SOFT_RESET\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NOP FLUSHQUEUE\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NOP AUTOPOLL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"CFA_REQUEST_EXTENDED_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DSM TRIM\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DSM\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"DSM_XL TRIM\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DSM_XL\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"DEVICE_RESET\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"REQUEST_SENSE_DATA_EXT\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"GET_PHYSICAL_ELEMENT_STATUS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"READ48\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"READ_DMA48\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"READ_DMA_QUEUED48\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"READ_NATIVE_MAX_ADDRESS48\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"READ_MUL48\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"READ_STREAM_DMA48\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"READ_STREAM48\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"READ_LOG_EXT\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"WRITE48\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"WRITE_DMA48\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"WRITE_DMA_QUEUED48\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"SET_MAX_ADDRESS48\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"WRITE_MUL48\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"WRITE_STREAM_DMA48\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"WRITE_STREAM48\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"WRITE_DMA_FUA48\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"WRITE_DMA_QUEUED_FUA48\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"WRITE_LOG_EXT\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"READ_VERIFY\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"READ_VERIFY48\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"ZERO_EXT TRIM\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ZERO_EXT\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"WRITE_UNCORRECTABLE48 PSEUDO\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"WRITE_UNCORRECTABLE48 FLAGGED\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"WRITE_UNCORRECTABLE48\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"READ_LOG_DMA_EXT\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ZAC_MANAGEMENT_IN\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"CONFIGURE_STREAM\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"WRITE_LOG_DMA_EXT\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"TRUSTED_NON_DATA\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"TRUSTED_RECEIVE\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"TRUSTED_RECEIVE_DMA\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"TRUSTED_SEND\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"TRUSTED_SEND_DMA\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"READ_FPDMA_QUEUED\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"WRITE_FPDMA_QUEUED\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"NCQ_NON_DATA ABORT NCQ QUEUE\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"NCQ_NON_DATA DEADLINE HANDLING\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"NCQ_NON_DATA HYBRID DEMOTE BY SIZE\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"NCQ_NON_DATA HYBRID CHANGE BY LBA RANGE\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"NCQ_NON_DATA HYBRID CONTROL\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"NCQ_NON_DATA SET FEATURES\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"NCQ_NON_DATA ZERO EXT\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"NCQ_NON_DATA ZAC MANAGEMENT OUT\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"NCQ_NON_DATA\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"SEND_FPDMA_QUEUED DATA SET MANAGEMENT\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"SEND_FPDMA_QUEUED HYBRID EVICT\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"SEND_FPDMA_QUEUED WRITE LOG DMA EXT\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"SEND_FPDMA_QUEUED ZAC MANAGEMENT OUT\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"SEND_FPDMA_QUEUED DATA SET MANAGEMENT XL\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"SEND_FPDMA_QUEUED\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"RECEIVE_FPDMA_QUEUED READ LOG DMA EXT\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"RECEIVE_FPDMA_QUEUED ZAC MANAGEMENT IN\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"RECEIVE_FPDMA_QUEUED\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"SEP_ATTN IDENTIFY\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"SEP_ATTN READ BUFFER\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"SEP_ATTN RECEIVE DIAGNOSTIC RESULTS\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"SEP_ATTN WRITE BUFFER\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"SEP_ATTN SEND DIAGNOSTIC\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"SEP_ATTN\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"SET_DATE_TIME_EXT\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"GET_NATIVE_MAX_ADDRESS_EXT\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"SET_ACCESSIBLE_MAX_ADDRESS_EXT\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"FREEZE_ACCESSIBLE_MAX_ADDRESS_EXT\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"ACCESSIBLE_MAX_ADDRESS_CONFIGURATION\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"REMOVE_ELEMENT_AND_TRUNCATE\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"CFA_TRANSLATE_SECTOR\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"EXECUTE_DEVICE_DIAGNOSTIC\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"DOWNLOAD_MICROCODE\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"DOWNLOAD_MICROCODE_DMA\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"ZAC_MANAGEMENT_OUT\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"PACKET\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"ATAPI_IDENTIFY\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"SERVICE\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"SMART READ ATTR VALUES\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"SMART READ ATTR THRESHOLDS\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"SMART SAVE ATTR VALUES\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"SMART EXECUTE OFFLINE IMMEDIATE\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"SMART READ LOG\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"SMART WRITE LOG\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"SMART ENABLE OPERATION\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"SMART DISABLE OPERATION\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"SMART RETURN STATUS\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"SMART\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"DEVICE CONFIGURATION\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"SET_SECTOR_CONFIGURATION_EXT\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"SANITIZE_STATUS_EXT\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"CRYPTO_SCRAMBLE_EXT\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"BLOCK_ERASE_EXT\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"OVERWRITE_EXT\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"SANITIZE_FREEZE_LOCK_EXT\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"SANITIZE_ANTIFREEZE_LOCK_EXT\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"SANITIZE_DEVICE\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"CFA_ERASE\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"READ_MUL\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"WRITE_MUL\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"SET_MULTI\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"READ_DMA_QUEUED\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"READ_DMA\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"WRITE_DMA\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"WRITE_DMA_QUEUED\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"CFA_WRITE_MULTIPLE_WITHOUT_ERASE\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"WRITE_MUL_FUA48\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"CHECK_MEDIA_CARD_TYPE\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"GET_MEDIA_STATUS\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"MEDIA_LOCK\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"MEDIA_UNLOCK\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"STANDBY_IMMEDIATE\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"IDLE_IMMEDIATE\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"STANDBY\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"READ_BUFFER/PM\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"CHECK_POWER_MODE\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"FLUSHCACHE\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"WRITE_BUFFER/PM\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"READ_BUFFER_DMA\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"FLUSHCACHE48\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"WRITE_BUFFER_DMA\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"ATA_IDENTIFY\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"MEDIA_EJECT\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE WCACHE\00", align 1
@.str.137 = private unnamed_addr constant [30 x i8] c"SETFEATURES SET TRANSFER MODE\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"SETFEATURES ENABLE APM\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"SETFEATURES ENABLE PUIS\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"SETFEATURES SPIN-UP\00", align 1
@.str.141 = private unnamed_addr constant [37 x i8] c"SETFEATURES ENABLE WRITE READ VERIFY\00", align 1
@.str.142 = private unnamed_addr constant [39 x i8] c"SETFEATURES ENABLE DEVICE LIFE CONTROL\00", align 1
@.str.143 = private unnamed_addr constant [32 x i8] c"SETFEATURES ENABLE SATA FEATURE\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"SETFEATURES ENABLE FREEFALL CONTROL\00", align 1
@.str.145 = private unnamed_addr constant [40 x i8] c"SETFEATURES SET MAX HOST INT SECT TIMES\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"SETFEATURES SET RATE BASIS\00", align 1
@.str.147 = private unnamed_addr constant [38 x i8] c"SETFEATURES EXTENDED POWER CONDITIONS\00", align 1
@.str.148 = private unnamed_addr constant [41 x i8] c"SETFEATURES ADVANCED BACKGROUD OPERATION\00", align 1
@.str.149 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE RCACHE\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE RELIRQ\00", align 1
@.str.151 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE SRVIRQ\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"SETFEATURES LONG PHYS SECT ALIGN ERC\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"SETFEATURES DSN\00", align 1
@.str.154 = private unnamed_addr constant [29 x i8] c"SETFEATURES DISABLE DEFAULTS\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE WCACHE\00", align 1
@.str.156 = private unnamed_addr constant [24 x i8] c"SETFEATURES DISABLE APM\00", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"SETFEATURES DISABLE PUIS\00", align 1
@.str.158 = private unnamed_addr constant [38 x i8] c"SETFEATURES DISABLE WRITE READ VERIFY\00", align 1
@.str.159 = private unnamed_addr constant [40 x i8] c"SETFEATURES DISABLE DEVICE LIFE CONTROL\00", align 1
@.str.160 = private unnamed_addr constant [33 x i8] c"SETFEATURES DISABLE SATA FEATURE\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE RCACHE\00", align 1
@.str.162 = private unnamed_addr constant [37 x i8] c"SETFEATURES DISABLE FREEFALL CONTROL\00", align 1
@.str.163 = private unnamed_addr constant [33 x i8] c"SETFEATURES SENSE DATA REPORTING\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"SETFEATURES NCQ SENSE DATA RETURN\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"SETFEATURES ENABLE DEFAULTS\00", align 1
@.str.166 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE RELIRQ\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE SRVIRQ\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"SETFEATURES\00", align 1
@.str.169 = private unnamed_addr constant [22 x i8] c"SECURITY_SET_PASSWORD\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"SECURITY_UNLOCK\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"SECURITY_ERASE_PREPARE\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"SECURITY_ERASE_UNIT\00", align 1
@.str.173 = private unnamed_addr constant [21 x i8] c"SECURITY_FREEZE_LOCK\00", align 1
@.str.174 = private unnamed_addr constant [26 x i8] c"SECURITY_DISABLE_PASSWORD\00", align 1
@.str.175 = private unnamed_addr constant [24 x i8] c"READ_NATIVE_MAX_ADDRESS\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"SET_MAX_ADDRESS\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ata_op_string(%struct.ata_cmd* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ata_cmd*, align 8
  store %struct.ata_cmd* %0, %struct.ata_cmd** %3, align 8
  %4 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %5 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %251

10:                                               ; preds = %1
  %11 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %250 [
    i32 0, label %14
    i32 3, label %21
    i32 6, label %22
    i32 7, label %28
    i32 8, label %34
    i32 11, label %35
    i32 18, label %36
    i32 32, label %37
    i32 36, label %38
    i32 37, label %39
    i32 38, label %40
    i32 39, label %41
    i32 41, label %42
    i32 42, label %43
    i32 43, label %44
    i32 47, label %45
    i32 48, label %46
    i32 52, label %47
    i32 53, label %48
    i32 54, label %49
    i32 55, label %50
    i32 57, label %51
    i32 58, label %52
    i32 59, label %53
    i32 61, label %54
    i32 62, label %55
    i32 63, label %56
    i32 64, label %57
    i32 66, label %58
    i32 68, label %59
    i32 69, label %65
    i32 71, label %72
    i32 74, label %73
    i32 81, label %74
    i32 87, label %75
    i32 91, label %76
    i32 92, label %77
    i32 93, label %78
    i32 94, label %79
    i32 95, label %80
    i32 96, label %81
    i32 97, label %82
    i32 99, label %83
    i32 100, label %97
    i32 101, label %108
    i32 103, label %116
    i32 112, label %131
    i32 119, label %132
    i32 120, label %133
    i32 124, label %141
    i32 135, label %142
    i32 144, label %143
    i32 146, label %144
    i32 147, label %145
    i32 154, label %146
    i32 160, label %147
    i32 161, label %148
    i32 162, label %149
    i32 176, label %150
    i32 177, label %164
    i32 178, label %165
    i32 180, label %166
    i32 192, label %177
    i32 196, label %178
    i32 197, label %179
    i32 198, label %180
    i32 199, label %181
    i32 200, label %182
    i32 202, label %183
    i32 204, label %184
    i32 205, label %185
    i32 206, label %186
    i32 209, label %187
    i32 218, label %188
    i32 222, label %189
    i32 223, label %190
    i32 224, label %191
    i32 225, label %192
    i32 226, label %193
    i32 227, label %194
    i32 228, label %195
    i32 229, label %196
    i32 230, label %197
    i32 231, label %198
    i32 232, label %199
    i32 233, label %200
    i32 234, label %201
    i32 235, label %202
    i32 236, label %203
    i32 237, label %204
    i32 239, label %205
    i32 241, label %242
    i32 242, label %243
    i32 243, label %244
    i32 244, label %245
    i32 245, label %246
    i32 246, label %247
    i32 248, label %248
    i32 249, label %249
  ]

14:                                               ; preds = %10
  %15 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %20 [
    i32 0, label %18
    i32 1, label %19
  ]

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %251

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %251

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %251

21:                                               ; preds = %10
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %251

22:                                               ; preds = %10
  %23 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 1, label %26
  ]

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %251

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %251

28:                                               ; preds = %10
  %29 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %33 [
    i32 1, label %32
  ]

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %251

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %251

34:                                               ; preds = %10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %251

35:                                               ; preds = %10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %251

36:                                               ; preds = %10
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %251

37:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %251

38:                                               ; preds = %10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %251

39:                                               ; preds = %10
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %251

40:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %251

41:                                               ; preds = %10
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %251

42:                                               ; preds = %10
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %251

43:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %251

44:                                               ; preds = %10
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %251

45:                                               ; preds = %10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %251

46:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %251

47:                                               ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %251

48:                                               ; preds = %10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %251

49:                                               ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %251

50:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %251

51:                                               ; preds = %10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %251

52:                                               ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %251

53:                                               ; preds = %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %251

54:                                               ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %251

55:                                               ; preds = %10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %251

56:                                               ; preds = %10
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %251

57:                                               ; preds = %10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %251

58:                                               ; preds = %10
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %251

59:                                               ; preds = %10
  %60 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %61 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %64 [
    i32 1, label %63
  ]

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %251

64:                                               ; preds = %59
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %251

65:                                               ; preds = %10
  %66 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %71 [
    i32 85, label %69
    i32 170, label %70
  ]

69:                                               ; preds = %65
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %251

70:                                               ; preds = %65
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %251

71:                                               ; preds = %65
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %251

72:                                               ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %251

73:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %251

74:                                               ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %251

75:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %251

76:                                               ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %251

77:                                               ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %251

78:                                               ; preds = %10
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %251

79:                                               ; preds = %10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %251

80:                                               ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %251

81:                                               ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %251

82:                                               ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %251

83:                                               ; preds = %10
  %84 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %85 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  switch i32 %87, label %96 [
    i32 0, label %88
    i32 1, label %89
    i32 2, label %90
    i32 3, label %91
    i32 4, label %92
    i32 5, label %93
    i32 6, label %94
    i32 7, label %95
  ]

88:                                               ; preds = %83
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %251

89:                                               ; preds = %83
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %251

90:                                               ; preds = %83
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %251

91:                                               ; preds = %83
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %251

92:                                               ; preds = %83
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %251

93:                                               ; preds = %83
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %251

94:                                               ; preds = %83
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %251

95:                                               ; preds = %83
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %251

96:                                               ; preds = %83
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %251

97:                                               ; preds = %10
  %98 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %99 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 15
  switch i32 %101, label %107 [
    i32 0, label %102
    i32 1, label %103
    i32 2, label %104
    i32 3, label %105
    i32 4, label %106
  ]

102:                                              ; preds = %97
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %251

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %251

104:                                              ; preds = %97
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %251

105:                                              ; preds = %97
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %251

106:                                              ; preds = %97
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %251

107:                                              ; preds = %97
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %251

108:                                              ; preds = %10
  %109 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %110 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 15
  switch i32 %112, label %115 [
    i32 1, label %113
    i32 2, label %114
  ]

113:                                              ; preds = %108
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %251

114:                                              ; preds = %108
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %251

115:                                              ; preds = %108
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i8** %2, align 8
  br label %251

116:                                              ; preds = %10
  %117 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 236
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i64 0, i64 0), i8** %2, align 8
  br label %251

122:                                              ; preds = %116
  %123 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %124 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %130 [
    i32 0, label %126
    i32 2, label %127
    i32 128, label %128
    i32 130, label %129
  ]

126:                                              ; preds = %122
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i64 0, i64 0), i8** %2, align 8
  br label %251

127:                                              ; preds = %122
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i64 0, i64 0), i8** %2, align 8
  br label %251

128:                                              ; preds = %122
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0), i8** %2, align 8
  br label %251

129:                                              ; preds = %122
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i64 0, i64 0), i8** %2, align 8
  br label %251

130:                                              ; preds = %122
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0), i8** %2, align 8
  br label %251

131:                                              ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8** %2, align 8
  br label %251

132:                                              ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8** %2, align 8
  br label %251

133:                                              ; preds = %10
  %134 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %135 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %140 [
    i32 0, label %137
    i32 1, label %138
    i32 2, label %139
  ]

137:                                              ; preds = %133
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0), i8** %2, align 8
  br label %251

138:                                              ; preds = %133
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0), i8** %2, align 8
  br label %251

139:                                              ; preds = %133
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.78, i64 0, i64 0), i8** %2, align 8
  br label %251

140:                                              ; preds = %133
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.79, i64 0, i64 0), i8** %2, align 8
  br label %251

141:                                              ; preds = %10
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i64 0, i64 0), i8** %2, align 8
  br label %251

142:                                              ; preds = %10
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i64 0, i64 0), i8** %2, align 8
  br label %251

143:                                              ; preds = %10
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.82, i64 0, i64 0), i8** %2, align 8
  br label %251

144:                                              ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0), i8** %2, align 8
  br label %251

145:                                              ; preds = %10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i64 0, i64 0), i8** %2, align 8
  br label %251

146:                                              ; preds = %10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i64 0, i64 0), i8** %2, align 8
  br label %251

147:                                              ; preds = %10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8** %2, align 8
  br label %251

148:                                              ; preds = %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i64 0, i64 0), i8** %2, align 8
  br label %251

149:                                              ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i8** %2, align 8
  br label %251

150:                                              ; preds = %10
  %151 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %152 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %163 [
    i32 208, label %154
    i32 209, label %155
    i32 211, label %156
    i32 212, label %157
    i32 213, label %158
    i32 214, label %159
    i32 216, label %160
    i32 217, label %161
    i32 218, label %162
  ]

154:                                              ; preds = %150
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i64 0, i64 0), i8** %2, align 8
  br label %251

155:                                              ; preds = %150
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.90, i64 0, i64 0), i8** %2, align 8
  br label %251

156:                                              ; preds = %150
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8** %2, align 8
  br label %251

157:                                              ; preds = %150
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.92, i64 0, i64 0), i8** %2, align 8
  br label %251

158:                                              ; preds = %150
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i64 0, i64 0), i8** %2, align 8
  br label %251

159:                                              ; preds = %150
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i64 0, i64 0), i8** %2, align 8
  br label %251

160:                                              ; preds = %150
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0), i8** %2, align 8
  br label %251

161:                                              ; preds = %150
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.96, i64 0, i64 0), i8** %2, align 8
  br label %251

162:                                              ; preds = %150
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i64 0, i64 0), i8** %2, align 8
  br label %251

163:                                              ; preds = %150
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i8** %2, align 8
  br label %251

164:                                              ; preds = %10
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i64 0, i64 0), i8** %2, align 8
  br label %251

165:                                              ; preds = %10
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i64 0, i64 0), i8** %2, align 8
  br label %251

166:                                              ; preds = %10
  %167 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %168 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %176 [
    i32 0, label %170
    i32 17, label %171
    i32 18, label %172
    i32 20, label %173
    i32 32, label %174
    i32 64, label %175
  ]

170:                                              ; preds = %166
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0), i8** %2, align 8
  br label %251

171:                                              ; preds = %166
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0), i8** %2, align 8
  br label %251

172:                                              ; preds = %166
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i8** %2, align 8
  br label %251

173:                                              ; preds = %166
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i64 0, i64 0), i8** %2, align 8
  br label %251

174:                                              ; preds = %166
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i64 0, i64 0), i8** %2, align 8
  br label %251

175:                                              ; preds = %166
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i64 0, i64 0), i8** %2, align 8
  br label %251

176:                                              ; preds = %166
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i64 0, i64 0), i8** %2, align 8
  br label %251

177:                                              ; preds = %10
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i64 0, i64 0), i8** %2, align 8
  br label %251

178:                                              ; preds = %10
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i64 0, i64 0), i8** %2, align 8
  br label %251

179:                                              ; preds = %10
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i64 0, i64 0), i8** %2, align 8
  br label %251

180:                                              ; preds = %10
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i64 0, i64 0), i8** %2, align 8
  br label %251

181:                                              ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i64 0, i64 0), i8** %2, align 8
  br label %251

182:                                              ; preds = %10
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i64 0, i64 0), i8** %2, align 8
  br label %251

183:                                              ; preds = %10
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i64 0, i64 0), i8** %2, align 8
  br label %251

184:                                              ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i64 0, i64 0), i8** %2, align 8
  br label %251

185:                                              ; preds = %10
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.116, i64 0, i64 0), i8** %2, align 8
  br label %251

186:                                              ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i64 0, i64 0), i8** %2, align 8
  br label %251

187:                                              ; preds = %10
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.118, i64 0, i64 0), i8** %2, align 8
  br label %251

188:                                              ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.119, i64 0, i64 0), i8** %2, align 8
  br label %251

189:                                              ; preds = %10
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i64 0, i64 0), i8** %2, align 8
  br label %251

190:                                              ; preds = %10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i64 0, i64 0), i8** %2, align 8
  br label %251

191:                                              ; preds = %10
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i64 0, i64 0), i8** %2, align 8
  br label %251

192:                                              ; preds = %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i64 0, i64 0), i8** %2, align 8
  br label %251

193:                                              ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), i8** %2, align 8
  br label %251

194:                                              ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0), i8** %2, align 8
  br label %251

195:                                              ; preds = %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.126, i64 0, i64 0), i8** %2, align 8
  br label %251

196:                                              ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i64 0, i64 0), i8** %2, align 8
  br label %251

197:                                              ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i64 0, i64 0), i8** %2, align 8
  br label %251

198:                                              ; preds = %10
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i64 0, i64 0), i8** %2, align 8
  br label %251

199:                                              ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i64 0, i64 0), i8** %2, align 8
  br label %251

200:                                              ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i8** %2, align 8
  br label %251

201:                                              ; preds = %10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i64 0, i64 0), i8** %2, align 8
  br label %251

202:                                              ; preds = %10
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.133, i64 0, i64 0), i8** %2, align 8
  br label %251

203:                                              ; preds = %10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i64 0, i64 0), i8** %2, align 8
  br label %251

204:                                              ; preds = %10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i64 0, i64 0), i8** %2, align 8
  br label %251

205:                                              ; preds = %10
  %206 = load %struct.ata_cmd*, %struct.ata_cmd** %3, align 8
  %207 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  switch i32 %208, label %241 [
    i32 2, label %209
    i32 3, label %210
    i32 5, label %211
    i32 6, label %212
    i32 7, label %213
    i32 11, label %214
    i32 12, label %215
    i32 16, label %216
    i32 65, label %217
    i32 67, label %218
    i32 69, label %219
    i32 74, label %220
    i32 80, label %221
    i32 85, label %222
    i32 93, label %223
    i32 94, label %224
    i32 98, label %225
    i32 99, label %226
    i32 102, label %227
    i32 130, label %228
    i32 133, label %229
    i32 134, label %230
    i32 139, label %231
    i32 140, label %232
    i32 144, label %233
    i32 170, label %234
    i32 193, label %235
    i32 195, label %236
    i32 196, label %237
    i32 204, label %238
    i32 221, label %239
    i32 222, label %240
  ]

209:                                              ; preds = %205
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.136, i64 0, i64 0), i8** %2, align 8
  br label %251

210:                                              ; preds = %205
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.137, i64 0, i64 0), i8** %2, align 8
  br label %251

211:                                              ; preds = %205
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.138, i64 0, i64 0), i8** %2, align 8
  br label %251

212:                                              ; preds = %205
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.139, i64 0, i64 0), i8** %2, align 8
  br label %251

213:                                              ; preds = %205
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i64 0, i64 0), i8** %2, align 8
  br label %251

214:                                              ; preds = %205
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.141, i64 0, i64 0), i8** %2, align 8
  br label %251

215:                                              ; preds = %205
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.142, i64 0, i64 0), i8** %2, align 8
  br label %251

216:                                              ; preds = %205
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.143, i64 0, i64 0), i8** %2, align 8
  br label %251

217:                                              ; preds = %205
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.144, i64 0, i64 0), i8** %2, align 8
  br label %251

218:                                              ; preds = %205
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.145, i64 0, i64 0), i8** %2, align 8
  br label %251

219:                                              ; preds = %205
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.146, i64 0, i64 0), i8** %2, align 8
  br label %251

220:                                              ; preds = %205
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.147, i64 0, i64 0), i8** %2, align 8
  br label %251

221:                                              ; preds = %205
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.148, i64 0, i64 0), i8** %2, align 8
  br label %251

222:                                              ; preds = %205
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.149, i64 0, i64 0), i8** %2, align 8
  br label %251

223:                                              ; preds = %205
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.150, i64 0, i64 0), i8** %2, align 8
  br label %251

224:                                              ; preds = %205
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.151, i64 0, i64 0), i8** %2, align 8
  br label %251

225:                                              ; preds = %205
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.152, i64 0, i64 0), i8** %2, align 8
  br label %251

226:                                              ; preds = %205
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i64 0, i64 0), i8** %2, align 8
  br label %251

227:                                              ; preds = %205
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.154, i64 0, i64 0), i8** %2, align 8
  br label %251

228:                                              ; preds = %205
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i64 0, i64 0), i8** %2, align 8
  br label %251

229:                                              ; preds = %205
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.156, i64 0, i64 0), i8** %2, align 8
  br label %251

230:                                              ; preds = %205
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.157, i64 0, i64 0), i8** %2, align 8
  br label %251

231:                                              ; preds = %205
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.158, i64 0, i64 0), i8** %2, align 8
  br label %251

232:                                              ; preds = %205
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.159, i64 0, i64 0), i8** %2, align 8
  br label %251

233:                                              ; preds = %205
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i64 0, i64 0), i8** %2, align 8
  br label %251

234:                                              ; preds = %205
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.161, i64 0, i64 0), i8** %2, align 8
  br label %251

235:                                              ; preds = %205
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.162, i64 0, i64 0), i8** %2, align 8
  br label %251

236:                                              ; preds = %205
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i64 0, i64 0), i8** %2, align 8
  br label %251

237:                                              ; preds = %205
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i64 0, i64 0), i8** %2, align 8
  br label %251

238:                                              ; preds = %205
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.165, i64 0, i64 0), i8** %2, align 8
  br label %251

239:                                              ; preds = %205
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.166, i64 0, i64 0), i8** %2, align 8
  br label %251

240:                                              ; preds = %205
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i64 0, i64 0), i8** %2, align 8
  br label %251

241:                                              ; preds = %205
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.168, i64 0, i64 0), i8** %2, align 8
  br label %251

242:                                              ; preds = %10
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.169, i64 0, i64 0), i8** %2, align 8
  br label %251

243:                                              ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.170, i64 0, i64 0), i8** %2, align 8
  br label %251

244:                                              ; preds = %10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.171, i64 0, i64 0), i8** %2, align 8
  br label %251

245:                                              ; preds = %10
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.172, i64 0, i64 0), i8** %2, align 8
  br label %251

246:                                              ; preds = %10
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.173, i64 0, i64 0), i8** %2, align 8
  br label %251

247:                                              ; preds = %10
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.174, i64 0, i64 0), i8** %2, align 8
  br label %251

248:                                              ; preds = %10
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.175, i64 0, i64 0), i8** %2, align 8
  br label %251

249:                                              ; preds = %10
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.176, i64 0, i64 0), i8** %2, align 8
  br label %251

250:                                              ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i64 0, i64 0), i8** %2, align 8
  br label %251

251:                                              ; preds = %250, %249, %248, %247, %246, %245, %244, %243, %242, %241, %240, %239, %238, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %209, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %132, %131, %130, %129, %128, %127, %126, %121, %115, %114, %113, %107, %106, %105, %104, %103, %102, %96, %95, %94, %93, %92, %91, %90, %89, %88, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %64, %63, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %27, %26, %21, %20, %19, %18, %9
  %252 = load i8*, i8** %2, align 8
  ret i8* %252
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
