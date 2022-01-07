; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_init_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_pp_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i8*, i64, i32, i8*, i64, i32*, i32, %struct.ibv_xrcd_init_attr*, i32, i32, i8*, i8*, i8* }
%struct.ibv_xrcd_init_attr = type { i32, i32, i32, i64, i8*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ibv_srq_init_attr_ex = type { i32, i32, i32, i64, i8*, i64, i32, %struct.TYPE_3__ }
%struct.ibv_port_attr = type { i64, i32 }

@ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to open device\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get port info\0A\00", align 1
@IBV_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't get local LID\0A\00", align 1
@page_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't allocate work buf.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Couldn't create completion channel\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't allocate PD\0A\00", align 1
@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Couldn't register MR\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"/tmp/xrc_domain\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [65 x i8] c"Couldn't create the file for the XRC Domain but not stopping %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IBV_XRCD_INIT_ATTR_FD = common dso_local global i32 0, align 4
@IBV_XRCD_INIT_ATTR_OFLAGS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Couldn't Open the XRC Domain %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Couldn't create recv CQ\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Couldn't request CQ notification\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Couldn't create send CQ\0A\00", align 1
@IBV_SRQ_INIT_ATTR_TYPE = common dso_local global i32 0, align 4
@IBV_SRQ_INIT_ATTR_XRCD = common dso_local global i32 0, align 4
@IBV_SRQ_INIT_ATTR_CQ = common dso_local global i32 0, align 4
@IBV_SRQ_INIT_ATTR_PD = common dso_local global i32 0, align 4
@IBV_SRQT_XRC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Couldn't create SRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pp_init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_init_ctx(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ibv_srq_init_attr_ex, align 8
  %5 = alloca %struct.ibv_xrcd_init_attr, align 8
  %6 = alloca %struct.ibv_port_attr, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %8 = call i8* @calloc(i32 %7, i32 1)
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 17), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %10 = call i8* @calloc(i32 %9, i32 1)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 16), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %12 = call i8* @calloc(i32 %11, i32 1)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 15), align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 17), align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 16), align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 15), align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %1
  store i32 1, i32* %2, align 4
  br label %192

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @open_device(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

29:                                               ; preds = %22
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 14), align 4
  %32 = call i64 @pp_get_port_info(i32 %30, i32 %31, %struct.ibv_port_attr* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 13), align 8
  %40 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IBV_LINK_LAYER_ETHERNET, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 13), align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

50:                                               ; preds = %44, %37
  %51 = load i32, i32* @page_size, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %53 = call %struct.ibv_xrcd_init_attr* @memalign(i32 %51, i32 %52)
  store %struct.ibv_xrcd_init_attr* %53, %struct.ibv_xrcd_init_attr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 12), align 8
  %54 = load %struct.ibv_xrcd_init_attr*, %struct.ibv_xrcd_init_attr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 12), align 8
  %55 = icmp ne %struct.ibv_xrcd_init_attr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

59:                                               ; preds = %50
  %60 = load %struct.ibv_xrcd_init_attr*, %struct.ibv_xrcd_init_attr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 12), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %62 = call i32 @memset(%struct.ibv_xrcd_init_attr* %60, i32 0, i32 %61)
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 9), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %67 = call i32* @ibv_create_comp_channel(i32 %66)
  store i32* %67, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 10), align 8
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 10), align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %76 = call i64 @ibv_alloc_pd(i32 %75)
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

82:                                               ; preds = %74
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 8
  %84 = load %struct.ibv_xrcd_init_attr*, %struct.ibv_xrcd_init_attr** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 12), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %86 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %87 = call i32 @ibv_reg_mr(i64 %83, %struct.ibv_xrcd_init_attr* %84, i32 %85, i32 %86)
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 11), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 11), align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

93:                                               ; preds = %82
  %94 = load i32, i32* @O_RDONLY, align 4
  %95 = load i32, i32* @O_CREAT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @S_IRUSR, align 4
  %98 = load i32, i32* @S_IRGRP, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %96, i32 %99)
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i32, i32* @stderr, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  br label %107

107:                                              ; preds = %103, %93
  %108 = call i32 @memset(%struct.ibv_xrcd_init_attr* %5, i32 0, i32 56)
  %109 = load i32, i32* @IBV_XRCD_INIT_ATTR_FD, align 4
  %110 = load i32, i32* @IBV_XRCD_INIT_ATTR_OFLAGS, align 4
  %111 = or i32 %109, %110
  %112 = getelementptr inbounds %struct.ibv_xrcd_init_attr, %struct.ibv_xrcd_init_attr* %5, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  %114 = getelementptr inbounds %struct.ibv_xrcd_init_attr, %struct.ibv_xrcd_init_attr* %5, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @O_CREAT, align 4
  %116 = getelementptr inbounds %struct.ibv_xrcd_init_attr, %struct.ibv_xrcd_init_attr* %5, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %118 = call i64 @ibv_open_xrcd(i32 %117, %struct.ibv_xrcd_init_attr* %5)
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 6), align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 6), align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %107
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  store i32 1, i32* %2, align 4
  br label %192

125:                                              ; preds = %107
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 10), align 8
  %129 = call i8* @ibv_create_cq(i32 %126, i32 %127, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), i32* %128, i32 0)
  store i8* %129, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), align 8
  %130 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

135:                                              ; preds = %125
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 9), align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), align 8
  %140 = call i64 @ibv_req_notify_cq(i8* %139, i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %135
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %149 = call i8* @ibv_create_cq(i32 %147, i32 %148, i8** null, i32* null, i32 0)
  store i8* %149, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 8), align 8
  %150 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 8), align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

155:                                              ; preds = %146
  %156 = bitcast %struct.ibv_srq_init_attr_ex* %4 to %struct.ibv_xrcd_init_attr*
  %157 = call i32 @memset(%struct.ibv_xrcd_init_attr* %156, i32 0, i32 56)
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  %159 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 1, i32* %162, align 4
  %163 = load i32, i32* @IBV_SRQ_INIT_ATTR_TYPE, align 4
  %164 = load i32, i32* @IBV_SRQ_INIT_ATTR_XRCD, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @IBV_SRQ_INIT_ATTR_CQ, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @IBV_SRQ_INIT_ATTR_PD, align 4
  %169 = or i32 %167, %168
  %170 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 0
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* @IBV_SRQT_XRC, align 4
  %172 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 6
  store i32 %171, i32* %172, align 8
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 6), align 8
  %174 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 5
  store i64 %173, i64* %174, align 8
  %175 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), align 8
  %176 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 4
  store i8* %175, i8** %176, align 8
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 8
  %178 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %4, i32 0, i32 3
  store i64 %177, i64* %178, align 8
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %180 = bitcast %struct.ibv_srq_init_attr_ex* %4 to %struct.ibv_xrcd_init_attr*
  %181 = call i32 @ibv_create_srq_ex(i32 %179, %struct.ibv_xrcd_init_attr* %180)
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %155
  %185 = load i32, i32* @stderr, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %192

187:                                              ; preds = %155
  %188 = call i64 (...) @create_qps()
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 1, i32* %2, align 4
  br label %192

191:                                              ; preds = %187
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %190, %184, %152, %142, %132, %121, %90, %79, %70, %56, %47, %34, %26, %21
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @open_device(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @pp_get_port_info(i32, i32, %struct.ibv_port_attr*) #1

declare dso_local %struct.ibv_xrcd_init_attr* @memalign(i32, i32) #1

declare dso_local i32 @memset(%struct.ibv_xrcd_init_attr*, i32, i32) #1

declare dso_local i32* @ibv_create_comp_channel(i32) #1

declare dso_local i64 @ibv_alloc_pd(i32) #1

declare dso_local i32 @ibv_reg_mr(i64, %struct.ibv_xrcd_init_attr*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @ibv_open_xrcd(i32, %struct.ibv_xrcd_init_attr*) #1

declare dso_local i8* @ibv_create_cq(i32, i32, i8**, i32*, i32) #1

declare dso_local i64 @ibv_req_notify_cq(i8*, i32) #1

declare dso_local i32 @ibv_create_srq_ex(i32, %struct.ibv_xrcd_init_attr*) #1

declare dso_local i64 @create_qps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
