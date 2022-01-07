; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_ata_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_ata_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_desc_header = type { i32 }
%struct.scsi_sense_ata_ret_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"ATA status: %02x (%s%s%s%s%s%s%s%s), \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BSY \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DF \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SERV \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CORR \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"IDX \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"error: %02x (%s%s%s%s%s%s%s%s), \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ICRC \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"UNC \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"MC \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"IDNF \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"MCR \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ABRT \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"NM \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ILI\00", align 1
@SSD_DESC_ATA_FLAG_EXTEND = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"count: %02x%02x, \00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"LBA: %02x%02x%02x%02x%02x%02x, \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"count: %02x, \00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"LBA: %02x%02x%02x, \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"device: %02x, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_ata_sbuf(%struct.sbuf* %0, %struct.scsi_sense_data* %1, i32 %2, i32* %3, i32 %4, %struct.scsi_inquiry_data* %5, %struct.scsi_sense_desc_header* %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_inquiry_data*, align 8
  %14 = alloca %struct.scsi_sense_desc_header*, align 8
  %15 = alloca %struct.scsi_sense_ata_ret_desc*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_sense_data* %1, %struct.scsi_sense_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.scsi_inquiry_data* %5, %struct.scsi_inquiry_data** %13, align 8
  store %struct.scsi_sense_desc_header* %6, %struct.scsi_sense_desc_header** %14, align 8
  %16 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %17 = bitcast %struct.scsi_sense_desc_header* %16 to %struct.scsi_sense_ata_ret_desc*
  store %struct.scsi_sense_ata_ret_desc* %17, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %18 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %19 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %20 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %30 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %37 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 32
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %44 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %51 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 8
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %57 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %58 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %64 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %65 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %72 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %28, i8* %35, i8* %42, i8* %49, i8* %56, i8* %63, i8* %70, i8* %77)
  %79 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %80 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %146

84:                                               ; preds = %7
  %85 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %86 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %87 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %90 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %97 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 64
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %103 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %104 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 32
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %110 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %111 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 16
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %117 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %118 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 8
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %124 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %125 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %131 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %132 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 2
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %138 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %139 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %145 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %88, i8* %95, i8* %102, i8* %109, i8* %116, i8* %123, i8* %130, i8* %137, i8* %144)
  br label %146

146:                                              ; preds = %84, %7
  %147 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %148 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SSD_DESC_ATA_FLAG_EXTEND, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %146
  %154 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %155 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %156 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %159 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %163 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %164 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %163, i32 0, i32 10
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %167 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %170 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %173 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %176 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %179 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %165, i32 %168, i32 %171, i32 %174, i32 %177, i32 %180)
  br label %199

182:                                              ; preds = %146
  %183 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %184 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %185 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %186)
  %188 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %189 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %190 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %193 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %196 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %191, i32 %194, i32 %197)
  br label %199

199:                                              ; preds = %182, %153
  %200 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %201 = load %struct.scsi_sense_ata_ret_desc*, %struct.scsi_sense_ata_ret_desc** %15, align 8
  %202 = getelementptr inbounds %struct.scsi_sense_ata_ret_desc, %struct.scsi_sense_ata_ret_desc* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %203)
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
