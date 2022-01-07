; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_lba_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_lba_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.scsi_compare_and_write = type { i32, i32 }
%struct.scsi_rw_6 = type { i32, i32 }
%struct.scsi_rw_10 = type { i32, i32 }
%struct.scsi_write_verify_10 = type { i32, i32 }
%struct.scsi_rw_12 = type { i32, i32 }
%struct.scsi_write_verify_12 = type { i32, i32 }
%struct.scsi_rw_16 = type { i32, i32 }
%struct.scsi_write_atomic_16 = type { i32, i32 }
%struct.scsi_write_verify_16 = type { i32, i32 }
%struct.scsi_write_same_10 = type { i32, i32 }
%struct.scsi_write_same_16 = type { i32, i32 }
%struct.scsi_verify_10 = type { i32, i32 }
%struct.scsi_verify_12 = type { i32, i32 }
%struct.scsi_verify_16 = type { i32, i32 }
%struct.scsi_get_lba_status = type { i32 }
%struct.TYPE_3__ = type { i64 }

@CTL_IO_SCSI = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*, i32*, i32*)* @ctl_get_lba_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_get_lba_len(%union.ctl_io* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.scsi_compare_and_write*, align 8
  %9 = alloca %struct.scsi_rw_6*, align 8
  %10 = alloca %struct.scsi_rw_10*, align 8
  %11 = alloca %struct.scsi_write_verify_10*, align 8
  %12 = alloca %struct.scsi_rw_12*, align 8
  %13 = alloca %struct.scsi_write_verify_12*, align 8
  %14 = alloca %struct.scsi_rw_16*, align 8
  %15 = alloca %struct.scsi_write_atomic_16*, align 8
  %16 = alloca %struct.scsi_write_verify_16*, align 8
  %17 = alloca %struct.scsi_write_same_10*, align 8
  %18 = alloca %struct.scsi_write_same_16*, align 8
  %19 = alloca %struct.scsi_verify_10*, align 8
  %20 = alloca %struct.scsi_verify_12*, align 8
  %21 = alloca %struct.scsi_verify_16*, align 8
  %22 = alloca %struct.scsi_get_lba_status*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CTL_IO_SCSI, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %281

30:                                               ; preds = %3
  %31 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %32 = bitcast %union.ctl_io* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %279 [
    i32 147, label %37
    i32 143, label %52
    i32 134, label %52
    i32 146, label %70
    i32 137, label %70
    i32 130, label %86
    i32 145, label %102
    i32 136, label %102
    i32 129, label %118
    i32 144, label %134
    i32 135, label %134
    i32 133, label %150
    i32 128, label %166
    i32 132, label %182
    i32 131, label %198
    i32 140, label %214
    i32 139, label %230
    i32 138, label %246
    i32 141, label %262
    i32 142, label %266
  ]

37:                                               ; preds = %30
  %38 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %39 = bitcast %union.ctl_io* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to %struct.scsi_compare_and_write*
  store %struct.scsi_compare_and_write* %42, %struct.scsi_compare_and_write** %8, align 8
  %43 = load %struct.scsi_compare_and_write*, %struct.scsi_compare_and_write** %8, align 8
  %44 = getelementptr inbounds %struct.scsi_compare_and_write, %struct.scsi_compare_and_write* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_8btou64(i32 %45)
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.scsi_compare_and_write*, %struct.scsi_compare_and_write** %8, align 8
  %49 = getelementptr inbounds %struct.scsi_compare_and_write, %struct.scsi_compare_and_write* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %280

52:                                               ; preds = %30, %30
  %53 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %54 = bitcast %union.ctl_io* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.scsi_rw_6*
  store %struct.scsi_rw_6* %57, %struct.scsi_rw_6** %9, align 8
  %58 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %9, align 8
  %59 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_3btoul(i32 %60)
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 2097151
  store i32 %65, i32* %63, align 4
  %66 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %9, align 8
  %67 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %280

70:                                               ; preds = %30, %30
  %71 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to %struct.scsi_rw_10*
  store %struct.scsi_rw_10* %75, %struct.scsi_rw_10** %10, align 8
  %76 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %10, align 8
  %77 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @scsi_4btoul(i32 %78)
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %10, align 8
  %82 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @scsi_2btoul(i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %280

86:                                               ; preds = %30
  %87 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %88 = bitcast %union.ctl_io* %87 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = bitcast i32* %90 to %struct.scsi_write_verify_10*
  store %struct.scsi_write_verify_10* %91, %struct.scsi_write_verify_10** %11, align 8
  %92 = load %struct.scsi_write_verify_10*, %struct.scsi_write_verify_10** %11, align 8
  %93 = getelementptr inbounds %struct.scsi_write_verify_10, %struct.scsi_write_verify_10* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @scsi_4btoul(i32 %94)
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.scsi_write_verify_10*, %struct.scsi_write_verify_10** %11, align 8
  %98 = getelementptr inbounds %struct.scsi_write_verify_10, %struct.scsi_write_verify_10* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @scsi_2btoul(i32 %99)
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %280

102:                                              ; preds = %30, %30
  %103 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %104 = bitcast %union.ctl_io* %103 to %struct.TYPE_4__*
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = bitcast i32* %106 to %struct.scsi_rw_12*
  store %struct.scsi_rw_12* %107, %struct.scsi_rw_12** %12, align 8
  %108 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %12, align 8
  %109 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @scsi_4btoul(i32 %110)
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %12, align 8
  %114 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @scsi_4btoul(i32 %115)
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  br label %280

118:                                              ; preds = %30
  %119 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %120 = bitcast %union.ctl_io* %119 to %struct.TYPE_4__*
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to %struct.scsi_write_verify_12*
  store %struct.scsi_write_verify_12* %123, %struct.scsi_write_verify_12** %13, align 8
  %124 = load %struct.scsi_write_verify_12*, %struct.scsi_write_verify_12** %13, align 8
  %125 = getelementptr inbounds %struct.scsi_write_verify_12, %struct.scsi_write_verify_12* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @scsi_4btoul(i32 %126)
  %128 = load i32*, i32** %6, align 8
  store i32 %127, i32* %128, align 4
  %129 = load %struct.scsi_write_verify_12*, %struct.scsi_write_verify_12** %13, align 8
  %130 = getelementptr inbounds %struct.scsi_write_verify_12, %struct.scsi_write_verify_12* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @scsi_4btoul(i32 %131)
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %280

134:                                              ; preds = %30, %30
  %135 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %136 = bitcast %union.ctl_io* %135 to %struct.TYPE_4__*
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = bitcast i32* %138 to %struct.scsi_rw_16*
  store %struct.scsi_rw_16* %139, %struct.scsi_rw_16** %14, align 8
  %140 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %14, align 8
  %141 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @scsi_8btou64(i32 %142)
  %144 = load i32*, i32** %6, align 8
  store i32 %143, i32* %144, align 4
  %145 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %14, align 8
  %146 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @scsi_4btoul(i32 %147)
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  br label %280

150:                                              ; preds = %30
  %151 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %152 = bitcast %union.ctl_io* %151 to %struct.TYPE_4__*
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = bitcast i32* %154 to %struct.scsi_write_atomic_16*
  store %struct.scsi_write_atomic_16* %155, %struct.scsi_write_atomic_16** %15, align 8
  %156 = load %struct.scsi_write_atomic_16*, %struct.scsi_write_atomic_16** %15, align 8
  %157 = getelementptr inbounds %struct.scsi_write_atomic_16, %struct.scsi_write_atomic_16* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @scsi_8btou64(i32 %158)
  %160 = load i32*, i32** %6, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.scsi_write_atomic_16*, %struct.scsi_write_atomic_16** %15, align 8
  %162 = getelementptr inbounds %struct.scsi_write_atomic_16, %struct.scsi_write_atomic_16* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @scsi_2btoul(i32 %163)
  %165 = load i32*, i32** %7, align 8
  store i32 %164, i32* %165, align 4
  br label %280

166:                                              ; preds = %30
  %167 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %168 = bitcast %union.ctl_io* %167 to %struct.TYPE_4__*
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = bitcast i32* %170 to %struct.scsi_write_verify_16*
  store %struct.scsi_write_verify_16* %171, %struct.scsi_write_verify_16** %16, align 8
  %172 = load %struct.scsi_write_verify_16*, %struct.scsi_write_verify_16** %16, align 8
  %173 = getelementptr inbounds %struct.scsi_write_verify_16, %struct.scsi_write_verify_16* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @scsi_8btou64(i32 %174)
  %176 = load i32*, i32** %6, align 8
  store i32 %175, i32* %176, align 4
  %177 = load %struct.scsi_write_verify_16*, %struct.scsi_write_verify_16** %16, align 8
  %178 = getelementptr inbounds %struct.scsi_write_verify_16, %struct.scsi_write_verify_16* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @scsi_4btoul(i32 %179)
  %181 = load i32*, i32** %7, align 8
  store i32 %180, i32* %181, align 4
  br label %280

182:                                              ; preds = %30
  %183 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %184 = bitcast %union.ctl_io* %183 to %struct.TYPE_4__*
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to %struct.scsi_write_same_10*
  store %struct.scsi_write_same_10* %187, %struct.scsi_write_same_10** %17, align 8
  %188 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %17, align 8
  %189 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @scsi_4btoul(i32 %190)
  %192 = load i32*, i32** %6, align 8
  store i32 %191, i32* %192, align 4
  %193 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %17, align 8
  %194 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @scsi_2btoul(i32 %195)
  %197 = load i32*, i32** %7, align 8
  store i32 %196, i32* %197, align 4
  br label %280

198:                                              ; preds = %30
  %199 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %200 = bitcast %union.ctl_io* %199 to %struct.TYPE_4__*
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = bitcast i32* %202 to %struct.scsi_write_same_16*
  store %struct.scsi_write_same_16* %203, %struct.scsi_write_same_16** %18, align 8
  %204 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %205 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @scsi_8btou64(i32 %206)
  %208 = load i32*, i32** %6, align 8
  store i32 %207, i32* %208, align 4
  %209 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %18, align 8
  %210 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @scsi_4btoul(i32 %211)
  %213 = load i32*, i32** %7, align 8
  store i32 %212, i32* %213, align 4
  br label %280

214:                                              ; preds = %30
  %215 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %216 = bitcast %union.ctl_io* %215 to %struct.TYPE_4__*
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = bitcast i32* %218 to %struct.scsi_verify_10*
  store %struct.scsi_verify_10* %219, %struct.scsi_verify_10** %19, align 8
  %220 = load %struct.scsi_verify_10*, %struct.scsi_verify_10** %19, align 8
  %221 = getelementptr inbounds %struct.scsi_verify_10, %struct.scsi_verify_10* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @scsi_4btoul(i32 %222)
  %224 = load i32*, i32** %6, align 8
  store i32 %223, i32* %224, align 4
  %225 = load %struct.scsi_verify_10*, %struct.scsi_verify_10** %19, align 8
  %226 = getelementptr inbounds %struct.scsi_verify_10, %struct.scsi_verify_10* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @scsi_2btoul(i32 %227)
  %229 = load i32*, i32** %7, align 8
  store i32 %228, i32* %229, align 4
  br label %280

230:                                              ; preds = %30
  %231 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %232 = bitcast %union.ctl_io* %231 to %struct.TYPE_4__*
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = bitcast i32* %234 to %struct.scsi_verify_12*
  store %struct.scsi_verify_12* %235, %struct.scsi_verify_12** %20, align 8
  %236 = load %struct.scsi_verify_12*, %struct.scsi_verify_12** %20, align 8
  %237 = getelementptr inbounds %struct.scsi_verify_12, %struct.scsi_verify_12* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @scsi_4btoul(i32 %238)
  %240 = load i32*, i32** %6, align 8
  store i32 %239, i32* %240, align 4
  %241 = load %struct.scsi_verify_12*, %struct.scsi_verify_12** %20, align 8
  %242 = getelementptr inbounds %struct.scsi_verify_12, %struct.scsi_verify_12* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @scsi_4btoul(i32 %243)
  %245 = load i32*, i32** %7, align 8
  store i32 %244, i32* %245, align 4
  br label %280

246:                                              ; preds = %30
  %247 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %248 = bitcast %union.ctl_io* %247 to %struct.TYPE_4__*
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = bitcast i32* %250 to %struct.scsi_verify_16*
  store %struct.scsi_verify_16* %251, %struct.scsi_verify_16** %21, align 8
  %252 = load %struct.scsi_verify_16*, %struct.scsi_verify_16** %21, align 8
  %253 = getelementptr inbounds %struct.scsi_verify_16, %struct.scsi_verify_16* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @scsi_8btou64(i32 %254)
  %256 = load i32*, i32** %6, align 8
  store i32 %255, i32* %256, align 4
  %257 = load %struct.scsi_verify_16*, %struct.scsi_verify_16** %21, align 8
  %258 = getelementptr inbounds %struct.scsi_verify_16, %struct.scsi_verify_16* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @scsi_4btoul(i32 %259)
  %261 = load i32*, i32** %7, align 8
  store i32 %260, i32* %261, align 4
  br label %280

262:                                              ; preds = %30
  %263 = load i32*, i32** %6, align 8
  store i32 0, i32* %263, align 4
  %264 = load i32, i32* @UINT64_MAX, align 4
  %265 = load i32*, i32** %7, align 8
  store i32 %264, i32* %265, align 4
  br label %280

266:                                              ; preds = %30
  %267 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %268 = bitcast %union.ctl_io* %267 to %struct.TYPE_4__*
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = bitcast i32* %270 to %struct.scsi_get_lba_status*
  store %struct.scsi_get_lba_status* %271, %struct.scsi_get_lba_status** %22, align 8
  %272 = load %struct.scsi_get_lba_status*, %struct.scsi_get_lba_status** %22, align 8
  %273 = getelementptr inbounds %struct.scsi_get_lba_status, %struct.scsi_get_lba_status* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @scsi_8btou64(i32 %274)
  %276 = load i32*, i32** %6, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* @UINT32_MAX, align 4
  %278 = load i32*, i32** %7, align 8
  store i32 %277, i32* %278, align 4
  br label %280

279:                                              ; preds = %30
  store i32 1, i32* %4, align 4
  br label %281

280:                                              ; preds = %266, %262, %246, %230, %214, %198, %182, %166, %150, %134, %118, %102, %86, %70, %52, %37
  store i32 0, i32* %4, align 4
  br label %281

281:                                              ; preds = %280, %279, %29
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @scsi_3btoul(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
