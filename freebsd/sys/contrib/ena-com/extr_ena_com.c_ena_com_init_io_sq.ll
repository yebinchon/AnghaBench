; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_init_io_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_init_io_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_10__, i32, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.ena_com_create_io_ctx = type { i32 }
%struct.ena_com_io_sq = type { i32, i64, i64, i64, i64, i32, i64, i64, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_11__, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i64 0, align 8
@ENA_COM_BOUNCE_BUFFER_CNTRL_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"bounce buffer memory allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_sq*)* @ena_com_init_io_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_init_io_sq(%struct.ena_com_dev* %0, %struct.ena_com_create_io_ctx* %1, %struct.ena_com_io_sq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_com_create_io_ctx*, align 8
  %7 = alloca %struct.ena_com_io_sq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_com_create_io_ctx* %1, %struct.ena_com_create_io_ctx** %6, align 8
  store %struct.ena_com_io_sq* %2, %struct.ena_com_io_sq** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %11 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %10, i32 0, i32 11
  %12 = call i32 @memset(%struct.TYPE_8__* %11, i32 0, i32 12)
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %14 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %17 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %16, i32 0, i32 13
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %19 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i64 4, i64 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %27 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %29 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %37 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %40 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %42 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %3
  %47 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %48 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %52 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %56 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %60 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %59, i32 0, i32 11
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ENA_MEM_ALLOC_COHERENT_NODE(i32 %49, i64 %50, i32 %54, i32 %58, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %69 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %46
  %74 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %75 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %79 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %83 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %82, i32 0, i32 11
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %87 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ENA_MEM_ALLOC_COHERENT(i32 %76, i64 %77, i32 %81, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %73, %46
  %92 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %93 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %92, i32 0, i32 11
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = call i32 @ena_trc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %99, i32* %4, align 4
  br label %215

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %3
  %102 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %103 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %208

107:                                              ; preds = %101
  %108 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %109 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %113 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %112, i32 0, i32 10
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load i64, i64* @ENA_COM_BOUNCE_BUFFER_CNTRL_CNT, align 8
  %116 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %117 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %120 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %123 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %122, i32 0, i32 10
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %127 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = mul i64 %125, %129
  store i64 %130, i64* %8, align 8
  %131 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %132 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %136 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %6, align 8
  %140 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @ENA_MEM_ALLOC_NODE(i32 %133, i64 %134, i32 %138, i32 %141, i32 %142)
  %144 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %145 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %144, i32 0, i32 10
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %107
  %150 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %151 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @ENA_MEM_ALLOC(i32 %152, i64 %153)
  %155 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %156 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  br label %158

158:                                              ; preds = %149, %107
  %159 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %160 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %159, i32 0, i32 10
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %158
  %165 = call i32 @ena_trc_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %166, i32* %4, align 4
  br label %215

167:                                              ; preds = %158
  %168 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %169 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %168, i32 0, i32 8
  %170 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %171 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %170, i32 0, i32 0
  %172 = call i32 @memcpy(%struct.TYPE_9__* %169, %struct.TYPE_10__* %171, i32 24)
  %173 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %174 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %173, i32 0, i32 10
  %175 = call %struct.TYPE_8__* @ena_com_get_next_bounce_buffer(%struct.TYPE_11__* %174)
  %176 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %177 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  store %struct.TYPE_8__* %175, %struct.TYPE_8__** %178, align 8
  %179 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %180 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %184 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @memset(%struct.TYPE_8__* %182, i32 0, i32 %186)
  %188 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %189 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %188, i32 0, i32 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %193 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %192, i32 0, i32 9
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %196 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %167
  %201 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %202 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %206 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %205, i32 0, i32 4
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %167
  br label %208

208:                                              ; preds = %207, %101
  %209 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %210 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %209, i32 0, i32 7
  store i64 0, i64* %210, align 8
  %211 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %212 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %211, i32 0, i32 6
  store i64 0, i64* %212, align 8
  %213 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %214 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %213, i32 0, i32 5
  store i32 1, i32* %214, align 8
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %208, %164, %97
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT_NODE(i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC_COHERENT(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ena_trc_err(i8*) #1

declare dso_local i32 @ENA_MEM_ALLOC_NODE(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ENA_MEM_ALLOC(i32, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_8__* @ena_com_get_next_bounce_buffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
