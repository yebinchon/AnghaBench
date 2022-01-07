; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_linsysfs_run_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_linsysfs_run_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i8* }
%struct.scsi_host_queue = type { i8*, i8* }
%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PCI_DEV = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s:%02x:%02x.%x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@linsysfs_fill_vendor = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@linsysfs_fill_device = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"subsystem_vendor\00", align 1
@linsysfs_fill_subvendor = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"subsystem_device\00", align 1
@linsysfs_fill_subdevice = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@linsysfs_fill_revid = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@linsysfs_fill_config = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@linsysfs_fill_uevent_pci = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@linsysfs_fill_data = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"/sys/bus/pci\00", align 1
@PCIC_STORAGE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@host_number = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@linsysfs_link_scsi_host = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"proc_name\00", align 1
@linsysfs_scsiname = common dso_local global i32 0, align 4
@scsi_host_q = common dso_local global i32 0, align 4
@scsi_host_next = common dso_local global i32 0, align 4
@DRMN_DEV = common dso_local global i32 0, align 4
@PCIC_DISPLAY = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"226:%d\00", align 1
@linsysfs_fill_vgapci = common dso_local global i32 0, align 4
@linsysfs_fill_uevent_drm = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pfs_node*, %struct.pfs_node*, %struct.pfs_node*, %struct.pfs_node*, i8*, i8*)* @linsysfs_run_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linsysfs_run_bus(i8 signext %0, %struct.pfs_node* %1, %struct.pfs_node* %2, %struct.pfs_node* %3, %struct.pfs_node* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.pfs_node*, align 8
  %10 = alloca %struct.pfs_node*, align 8
  %11 = alloca %struct.pfs_node*, align 8
  %12 = alloca %struct.pfs_node*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.scsi_host_queue*, align 8
  %16 = alloca %struct.pfs_node*, align 8
  %17 = alloca %struct.pfs_node*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.pci_devinfo*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i8 %0, i8* %8, align 1
  store %struct.pfs_node* %1, %struct.pfs_node** %9, align 8
  store %struct.pfs_node* %2, %struct.pfs_node** %10, align 8
  store %struct.pfs_node* %3, %struct.pfs_node** %11, align 8
  store %struct.pfs_node* %4, %struct.pfs_node** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i8* null, i8** %24, align 8
  %30 = load i8*, i8** %13, align 8
  store i8* %30, i8** %28, align 8
  %31 = load i32, i32* @M_TEMP, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i8* @malloc(i32 16, i32 %31, i32 %32)
  store i8* %33, i8** %29, align 8
  %34 = load i8, i8* %8, align 1
  %35 = call signext i8 @device_get_parent(i8 signext %34)
  store i8 %35, i8* %22, align 1
  %36 = load i8, i8* %22, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %304

38:                                               ; preds = %7
  %39 = load i8, i8* %22, align 1
  %40 = call i32* @device_get_devclass(i8 signext %39)
  store i32* %40, i32** %23, align 8
  %41 = load i32*, i32** %23, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32*, i32** %23, align 8
  %45 = call i8* @devclass_get_name(i32* %44)
  store i8* %45, i8** %24, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %24, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %230

49:                                               ; preds = %46
  %50 = load i8*, i8** %24, align 8
  %51 = load i32, i32* @PCI_DEV, align 4
  %52 = call i64 @strcmp(i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %230

54:                                               ; preds = %49
  %55 = load i8, i8* %8, align 1
  %56 = call %struct.pci_devinfo* @device_get_ivars(i8 signext %55)
  store %struct.pci_devinfo* %56, %struct.pci_devinfo** %25, align 8
  %57 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %58 = icmp ne %struct.pci_devinfo* %57, null
  br i1 %58, label %59, label %229

59:                                               ; preds = %54
  %60 = load i32, i32* @MAXPATHLEN, align 4
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = call i8* @malloc(i32 %60, i32 %61, i32 %62)
  store i8* %63, i8** %26, align 8
  %64 = load i32, i32* @MAXPATHLEN, align 4
  %65 = load i32, i32* @M_TEMP, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i8* @malloc(i32 %64, i32 %65, i32 %66)
  store i8* %67, i8** %28, align 8
  %68 = load i8*, i8** %28, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %28, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @strcpy(i8* %70, i8* %71)
  %73 = load i32, i32* @MAXPATHLEN, align 4
  %74 = load i32, i32* @M_TEMP, align 4
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = call i8* @malloc(i32 %73, i32 %74, i32 %75)
  store i8* %76, i8** %27, align 8
  %77 = load i8*, i8** %26, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %26, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %82 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %86 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %90 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %80, i32 %84, i32 %88, i32 %92)
  %94 = load i8*, i8** %28, align 8
  %95 = call i32 @strcat(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i8*, i8** %28, align 8
  %97 = load i8*, i8** %26, align 8
  %98 = call i32 @strcat(i8* %96, i8* %97)
  %99 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %100 = load i8*, i8** %26, align 8
  %101 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %99, i8* %100, i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %101, %struct.pfs_node** %9, align 8
  %102 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %103 = load i32, i32* @PFS_RD, align 4
  %104 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @linsysfs_fill_vendor, i32* null, i32* null, i32* null, i32 %103)
  store %struct.pfs_node* %104, %struct.pfs_node** %17, align 8
  %105 = load i8, i8* %8, align 1
  %106 = sext i8 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %109 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %111 = load i32, i32* @PFS_RD, align 4
  %112 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @linsysfs_fill_device, i32* null, i32* null, i32* null, i32 %111)
  store %struct.pfs_node* %112, %struct.pfs_node** %17, align 8
  %113 = load i8, i8* %8, align 1
  %114 = sext i8 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %117 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %119 = load i32, i32* @PFS_RD, align 4
  %120 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* @linsysfs_fill_subvendor, i32* null, i32* null, i32* null, i32 %119)
  store %struct.pfs_node* %120, %struct.pfs_node** %17, align 8
  %121 = load i8, i8* %8, align 1
  %122 = sext i8 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %125 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %127 = load i32, i32* @PFS_RD, align 4
  %128 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* @linsysfs_fill_subdevice, i32* null, i32* null, i32* null, i32 %127)
  store %struct.pfs_node* %128, %struct.pfs_node** %17, align 8
  %129 = load i8, i8* %8, align 1
  %130 = sext i8 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %133 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %135 = load i32, i32* @PFS_RD, align 4
  %136 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* @linsysfs_fill_revid, i32* null, i32* null, i32* null, i32 %135)
  store %struct.pfs_node* %136, %struct.pfs_node** %17, align 8
  %137 = load i8, i8* %8, align 1
  %138 = sext i8 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %141 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %143 = load i32, i32* @PFS_RD, align 4
  %144 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* @linsysfs_fill_config, i32* null, i32* null, i32* null, i32 %143)
  store %struct.pfs_node* %144, %struct.pfs_node** %17, align 8
  %145 = load i8, i8* %8, align 1
  %146 = sext i8 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %149 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %151 = load i32, i32* @PFS_RD, align 4
  %152 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* @linsysfs_fill_uevent_pci, i32* null, i32* null, i32* null, i32 %151)
  store %struct.pfs_node* %152, %struct.pfs_node** %17, align 8
  %153 = load i8, i8* %8, align 1
  %154 = sext i8 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %157 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %159 = call %struct.pfs_node* @pfs_create_link(%struct.pfs_node* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* @linsysfs_fill_data, i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %159, %struct.pfs_node** %17, align 8
  %160 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %161 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %160, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %161, align 8
  %162 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %163 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PCIC_STORAGE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %222

168:                                              ; preds = %59
  %169 = load i8*, i8** %27, align 8
  %170 = load i32, i32* @host_number, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @host_number, align 4
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %170)
  %173 = load i8*, i8** %28, align 8
  %174 = call i32 @strcat(i8* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i8*, i8** %28, align 8
  %176 = load i8*, i8** %27, align 8
  %177 = call i32 @strcat(i8* %175, i8* %176)
  %178 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %179 = load i8*, i8** %27, align 8
  %180 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %178, i8* %179, i32* null, i32* null, i32* null, i32 0)
  %181 = load i32, i32* @M_DEVBUF, align 4
  %182 = load i32, i32* @M_NOWAIT, align 4
  %183 = call i8* @malloc(i32 16, i32 %181, i32 %182)
  %184 = bitcast i8* %183 to %struct.scsi_host_queue*
  store %struct.scsi_host_queue* %184, %struct.scsi_host_queue** %15, align 8
  %185 = load i8*, i8** %28, align 8
  %186 = call i32 @strlen(i8* %185)
  %187 = add nsw i32 %186, 1
  %188 = load i32, i32* @M_DEVBUF, align 4
  %189 = load i32, i32* @M_NOWAIT, align 4
  %190 = call i8* @malloc(i32 %187, i32 %188, i32 %189)
  %191 = load %struct.scsi_host_queue*, %struct.scsi_host_queue** %15, align 8
  %192 = getelementptr inbounds %struct.scsi_host_queue, %struct.scsi_host_queue* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = load %struct.scsi_host_queue*, %struct.scsi_host_queue** %15, align 8
  %194 = getelementptr inbounds %struct.scsi_host_queue, %struct.scsi_host_queue* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 0
  store i8 0, i8* %196, align 1
  %197 = load i8*, i8** %28, align 8
  %198 = load %struct.scsi_host_queue*, %struct.scsi_host_queue** %15, align 8
  %199 = getelementptr inbounds %struct.scsi_host_queue, %struct.scsi_host_queue* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %28, align 8
  %202 = call i32 @strlen(i8* %201)
  %203 = add nsw i32 %202, 1
  %204 = call i32 @bcopy(i8* %197, i8* %200, i32 %203)
  %205 = load %struct.scsi_host_queue*, %struct.scsi_host_queue** %15, align 8
  %206 = getelementptr inbounds %struct.scsi_host_queue, %struct.scsi_host_queue* %205, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %206, align 8
  %207 = load %struct.pfs_node*, %struct.pfs_node** %10, align 8
  %208 = load i8*, i8** %27, align 8
  %209 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %207, i8* %208, i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %209, %struct.pfs_node** %16, align 8
  %210 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %211 = call %struct.pfs_node* @pfs_create_link(%struct.pfs_node* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @linsysfs_link_scsi_host, i32* null, i32* null, i32* null, i32 0)
  %212 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %213 = load i32, i32* @PFS_RD, align 4
  %214 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* @linsysfs_scsiname, i32* null, i32* null, i32* null, i32 %213)
  %215 = load i8, i8* %8, align 1
  %216 = call i8* @linux_driver_get_name_dev(i8 signext %215)
  %217 = load %struct.scsi_host_queue*, %struct.scsi_host_queue** %15, align 8
  %218 = getelementptr inbounds %struct.scsi_host_queue, %struct.scsi_host_queue* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  %219 = load %struct.scsi_host_queue*, %struct.scsi_host_queue** %15, align 8
  %220 = load i32, i32* @scsi_host_next, align 4
  %221 = call i32 @TAILQ_INSERT_TAIL(i32* @scsi_host_q, %struct.scsi_host_queue* %219, i32 %220)
  br label %222

222:                                              ; preds = %168, %59
  %223 = load i8*, i8** %26, align 8
  %224 = load i32, i32* @M_TEMP, align 4
  %225 = call i32 @free(i8* %223, i32 %224)
  %226 = load i8*, i8** %27, align 8
  %227 = load i32, i32* @M_TEMP, align 4
  %228 = call i32 @free(i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %222, %54
  br label %230

230:                                              ; preds = %229, %49, %46
  %231 = load i8, i8* %8, align 1
  %232 = call i32* @device_get_devclass(i8 signext %231)
  store i32* %232, i32** %23, align 8
  %233 = load i32*, i32** %23, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32*, i32** %23, align 8
  %237 = call i8* @devclass_get_name(i32* %236)
  store i8* %237, i8** %24, align 8
  br label %239

238:                                              ; preds = %230
  store i8* null, i8** %24, align 8
  br label %239

239:                                              ; preds = %238, %235
  %240 = load i8*, i8** %24, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %303

242:                                              ; preds = %239
  %243 = load i8*, i8** %24, align 8
  %244 = load i32, i32* @DRMN_DEV, align 4
  %245 = call i64 @strcmp(i8* %243, i32 %244)
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %303

247:                                              ; preds = %242
  %248 = load i8, i8* %8, align 1
  %249 = call i32 @device_get_unit(i8 signext %248)
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %303

251:                                              ; preds = %247
  %252 = load i8, i8* %22, align 1
  %253 = call %struct.pci_devinfo* @device_get_ivars(i8 signext %252)
  store %struct.pci_devinfo* %253, %struct.pci_devinfo** %25, align 8
  %254 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %255 = icmp ne %struct.pci_devinfo* %254, null
  br i1 %255, label %256, label %302

256:                                              ; preds = %251
  %257 = load %struct.pci_devinfo*, %struct.pci_devinfo** %25, align 8
  %258 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @PCIC_DISPLAY, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %302

263:                                              ; preds = %256
  %264 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %265 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0)
  %266 = load i8*, i8** %29, align 8
  %267 = load i8, i8* %8, align 1
  %268 = call i32 @device_get_unit(i8 signext %267)
  %269 = call i32 (i8*, i8*, ...) @sprintf(i8* %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %268)
  %270 = load %struct.pfs_node*, %struct.pfs_node** %11, align 8
  %271 = load i8*, i8** %29, align 8
  %272 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %270, i8* %271, i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %272, %struct.pfs_node** %16, align 8
  %273 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %274 = load i32, i32* @PFS_RD, align 4
  %275 = call %struct.pfs_node* @pfs_create_link(%struct.pfs_node* %273, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @linsysfs_fill_vgapci, i32* null, i32* null, i32* null, i32 %274)
  store %struct.pfs_node* %275, %struct.pfs_node** %17, align 8
  %276 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %277 = bitcast %struct.pfs_node* %276 to i8*
  %278 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %279 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  %280 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %281 = load i32, i32* @PFS_RD, align 4
  %282 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* @linsysfs_fill_uevent_drm, i32* null, i32* null, i32* null, i32 %281)
  store %struct.pfs_node* %282, %struct.pfs_node** %17, align 8
  %283 = load i8, i8* %8, align 1
  %284 = sext i8 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %287 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %286, i32 0, i32 0
  store i8* %285, i8** %287, align 8
  %288 = load i8*, i8** %29, align 8
  %289 = load i8, i8* %8, align 1
  %290 = call i32 @device_get_unit(i8 signext %289)
  %291 = call i32 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %290)
  %292 = load %struct.pfs_node*, %struct.pfs_node** %12, align 8
  %293 = load i8*, i8** %29, align 8
  %294 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %292, i8* %293, i32* null, i32* null, i32* null, i32 0)
  store %struct.pfs_node* %294, %struct.pfs_node** %16, align 8
  %295 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  %296 = load i32, i32* @PFS_RD, align 4
  %297 = call %struct.pfs_node* @pfs_create_link(%struct.pfs_node* %295, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @linsysfs_fill_vgapci, i32* null, i32* null, i32* null, i32 %296)
  store %struct.pfs_node* %297, %struct.pfs_node** %17, align 8
  %298 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %299 = bitcast %struct.pfs_node* %298 to i8*
  %300 = load %struct.pfs_node*, %struct.pfs_node** %17, align 8
  %301 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %300, i32 0, i32 0
  store i8* %299, i8** %301, align 8
  br label %302

302:                                              ; preds = %263, %256, %251
  br label %303

303:                                              ; preds = %302, %247, %242, %239
  br label %304

304:                                              ; preds = %303, %7
  %305 = load i8, i8* %8, align 1
  %306 = call i32 @device_get_children(i8 signext %305, i8** %21, i32* %19)
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %20, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %342

309:                                              ; preds = %304
  store i32 0, i32* %18, align 4
  br label %310

310:                                              ; preds = %335, %309
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* %19, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %338

314:                                              ; preds = %310
  %315 = load i8*, i8** %21, align 8
  %316 = load i32, i32* %18, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %315, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = icmp ne i8 %319, 0
  br i1 %320, label %321, label %334

321:                                              ; preds = %314
  %322 = load i8*, i8** %21, align 8
  %323 = load i32, i32* %18, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = load %struct.pfs_node*, %struct.pfs_node** %9, align 8
  %328 = load %struct.pfs_node*, %struct.pfs_node** %10, align 8
  %329 = load %struct.pfs_node*, %struct.pfs_node** %11, align 8
  %330 = load %struct.pfs_node*, %struct.pfs_node** %12, align 8
  %331 = load i8*, i8** %28, align 8
  %332 = load i8*, i8** %14, align 8
  %333 = call i32 @linsysfs_run_bus(i8 signext %326, %struct.pfs_node* %327, %struct.pfs_node* %328, %struct.pfs_node* %329, %struct.pfs_node* %330, i8* %331, i8* %332)
  br label %334

334:                                              ; preds = %321, %314
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %18, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %18, align 4
  br label %310

338:                                              ; preds = %310
  %339 = load i8*, i8** %21, align 8
  %340 = load i32, i32* @M_TEMP, align 4
  %341 = call i32 @free(i8* %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %304
  %343 = load i8*, i8** %28, align 8
  %344 = load i8*, i8** %13, align 8
  %345 = icmp ne i8* %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = load i8*, i8** %28, align 8
  %348 = load i32, i32* @M_TEMP, align 4
  %349 = call i32 @free(i8* %347, i32 %348)
  br label %350

350:                                              ; preds = %346, %342
  %351 = load i8*, i8** %29, align 8
  %352 = load i32, i32* @M_TEMP, align 4
  %353 = call i32 @free(i8* %351, i32 %352)
  ret i32 1
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local signext i8 @device_get_parent(i8 signext) #1

declare dso_local i32* @device_get_devclass(i8 signext) #1

declare dso_local i8* @devclass_get_name(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.pfs_node* @pfs_create_dir(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.pfs_node* @pfs_create_file(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local %struct.pfs_node* @pfs_create_link(%struct.pfs_node*, i8*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i8* @linux_driver_get_name_dev(i8 signext) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.scsi_host_queue*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @device_get_unit(i8 signext) #1

declare dso_local i32 @device_get_children(i8 signext, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
