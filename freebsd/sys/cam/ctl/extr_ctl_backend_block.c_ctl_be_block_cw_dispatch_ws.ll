; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch_ws.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32, %struct.ctl_be_lun, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io.0*)* }
%struct.ctl_be_block_io = type opaque
%struct.ctl_be_lun = type { i32, i32, i32 }
%struct.ctl_be_block_io.0 = type opaque
%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ctl_be_block_io.1 = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ctl_lba_len_flags = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@SWS_LBDATA = common dso_local global i32 0, align 4
@SWS_UNMAP = common dso_local global i32 0, align 4
@SWS_ANCHOR = common dso_local global i32 0, align 4
@SWS_NDOB = common dso_local global i32 0, align 4
@BIO_DELETE = common dso_local global i32 0, align 4
@DEVSTAT_FREE = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@DEVSTAT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"WRITE SAME at LBA %jx len %u\0A\00", align 1
@CTLBLK_MAX_SEGS = common dso_local global i32 0, align 4
@CTLBLK_MAX_SEG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"segment %d addr %p len %zd\0A\00", align 1
@ctl_be_block_cw_done_ws = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %union.ctl_io*)* @ctl_be_block_cw_dispatch_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_cw_dispatch_ws(%struct.ctl_be_block_lun* %0, %union.ctl_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %struct.ctl_be_lun*, align 8
  %6 = alloca %struct.ctl_be_block_io.1*, align 8
  %7 = alloca %struct.ctl_lba_len_flags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %union.ctl_io* %1, %union.ctl_io** %4, align 8
  %17 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %17, i32 0, i32 2
  store %struct.ctl_be_lun* %18, %struct.ctl_be_lun** %5, align 8
  %19 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %21 = call %struct.TYPE_6__* @PRIV(%union.ctl_io* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ctl_be_block_io.1*
  store %struct.ctl_be_block_io.1* %24, %struct.ctl_be_block_io.1** %6, align 8
  %25 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %26 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ctl_lba_len_flags* @ARGS(i32 %27)
  store %struct.ctl_lba_len_flags* %28, %struct.ctl_lba_len_flags** %7, align 8
  %29 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %30 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SWS_LBDATA, align 4
  %33 = load i32, i32* @SWS_UNMAP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SWS_ANCHOR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SWS_NDOB, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %31, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %2
  %43 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %44 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SWS_UNMAP, align 4
  %47 = load i32, i32* @SWS_ANCHOR, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %52, i32 0, i32 3
  %54 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io.0*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io.0*)** %53, align 8
  %55 = icmp eq i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io.0*)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %2
  %57 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %58 = call i32 @ctl_free_beio(%struct.ctl_be_block_io.1* %57)
  %59 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_5__*
  %61 = call i32 @ctl_set_invalid_field(%struct.TYPE_5__* %60, i32 1, i32 1, i32 1, i32 0, i32 0)
  %62 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %63 = call i32 @ctl_config_write_done(%union.ctl_io* %62)
  br label %368

64:                                               ; preds = %51, %42
  %65 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %66 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SWS_UNMAP, align 4
  %69 = load i32, i32* @SWS_ANCHOR, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %64
  %74 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %75 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %78 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %82 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %84 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %88 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %92 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @BIO_DELETE, align 4
  %94 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %95 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @DEVSTAT_FREE, align 4
  %97 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %98 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %100 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %99, i32 0, i32 3
  %101 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io.0*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io.0*)** %100, align 8
  %102 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %103 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %104 = bitcast %struct.ctl_be_block_io.1* %103 to %struct.ctl_be_block_io.0*
  %105 = call i32 %101(%struct.ctl_be_block_lun* %102, %struct.ctl_be_block_io.0* %104)
  br label %368

106:                                              ; preds = %64
  %107 = load i32, i32* @BIO_WRITE, align 4
  %108 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %109 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @DEVSTAT_WRITE, align 4
  %111 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %112 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %114 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %117 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %115, i64 %118)
  %120 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %121 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %124 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %122, %126
  store i32 %127, i32* %10, align 4
  %128 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %129 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %106
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %136 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %139 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %137, %141
  %143 = sub nsw i32 %134, %142
  store i32 %143, i32* %11, align 4
  br label %145

144:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %144, %133
  %146 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %147 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %151 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  store i32 %153, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %323, %145
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @CTLBLK_MAX_SEGS, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = icmp sgt i32 %159, 0
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi i1 [ false, %154 ], [ %160, %158 ]
  br i1 %162, label %163, label %326

163:                                              ; preds = %161
  %164 = load i32, i32* @CTLBLK_MAX_SEG, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @MIN(i32 %164, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %169 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %167, %170
  br i1 %171, label %172, label %204

172:                                              ; preds = %163
  %173 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %174 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %175, %176
  %178 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %179 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %177, %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %11, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load i32, i32* %10, align 4
  %187 = srem i32 %185, %186
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %172
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %14, align 4
  br label %203

195:                                              ; preds = %172
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %198 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = srem i32 %196, %199
  %201 = load i32, i32* %14, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %195, %191
  br label %212

204:                                              ; preds = %163
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %207 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = srem i32 %205, %208
  %210 = load i32, i32* %14, align 4
  %211 = sub nsw i32 %210, %209
  store i32 %211, i32* %14, align 4
  br label %212

212:                                              ; preds = %204, %203
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %215 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  store i32 %213, i32* %220, align 8
  %221 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %222 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @M_WAITOK, align 4
  %225 = call i32* @uma_zalloc(i32 %223, i32 %224)
  %226 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %227 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %226, i32 0, i32 3
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  store i32* %225, i32** %232, align 8
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %235 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %234, i32 0, i32 3
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %243 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %242, i32 0, i32 3
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %233, i32* %241, i32 %249)
  %251 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %252 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %8, align 4
  %257 = sub nsw i32 %256, %255
  store i32 %257, i32* %8, align 4
  %258 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %259 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %258, i32 0, i32 3
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  store i32* %265, i32** %15, align 8
  %266 = load i32*, i32** %15, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32* %269, i32** %16, align 8
  br label %270

270:                                              ; preds = %315, %212
  %271 = load i32*, i32** %15, align 8
  %272 = load i32*, i32** %16, align 8
  %273 = icmp ult i32* %271, %272
  br i1 %273, label %274, label %322

274:                                              ; preds = %270
  %275 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %276 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @SWS_NDOB, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %274
  %282 = load i32*, i32** %15, align 8
  %283 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %284 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @memset(i32* %282, i32 0, i32 %285)
  br label %297

287:                                              ; preds = %274
  %288 = load i32*, i32** %15, align 8
  %289 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %290 = bitcast %union.ctl_io* %289 to %struct.TYPE_5__*
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %294 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @memcpy(i32* %288, i32 %292, i32 %295)
  br label %297

297:                                              ; preds = %287, %281
  %298 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %299 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @SWS_LBDATA, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %297
  %305 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %306 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %307, %308
  %310 = load i32*, i32** %15, align 8
  %311 = call i32 @scsi_ulto4b(i32 %309, i32* %310)
  br label %312

312:                                              ; preds = %304, %297
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %9, align 4
  br label %315

315:                                              ; preds = %312
  %316 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %317 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %15, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32* %321, i32** %15, align 8
  br label %270

322:                                              ; preds = %270
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %13, align 4
  br label %154

326:                                              ; preds = %161
  %327 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %328 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %331 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %329, %332
  %334 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %335 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %334, i32 0, i32 0
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* %9, align 4
  %337 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %338 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = mul nsw i32 %336, %339
  %341 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %342 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* %8, align 4
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %360

345:                                              ; preds = %326
  %346 = load i32, i32* %9, align 4
  %347 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %348 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, %346
  store i32 %350, i32* %348, align 4
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %354 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = sub nsw i64 %355, %352
  store i64 %356, i64* %354, align 8
  %357 = load i32, i32* @ctl_be_block_cw_done_ws, align 4
  %358 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %359 = getelementptr inbounds %struct.ctl_be_block_io.1, %struct.ctl_be_block_io.1* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %345, %326
  %361 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %362 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %361, i32 0, i32 0
  %363 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %362, align 8
  %364 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %365 = load %struct.ctl_be_block_io.1*, %struct.ctl_be_block_io.1** %6, align 8
  %366 = bitcast %struct.ctl_be_block_io.1* %365 to %struct.ctl_be_block_io*
  %367 = call i32 %363(%struct.ctl_be_block_lun* %364, %struct.ctl_be_block_io* %366)
  br label %368

368:                                              ; preds = %360, %73, %56
  ret void
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @PRIV(%union.ctl_io*) #1

declare dso_local %struct.ctl_lba_len_flags* @ARGS(i32) #1

declare dso_local i32 @ctl_free_beio(%struct.ctl_be_block_io.1*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_config_write_done(%union.ctl_io*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @uma_zalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
