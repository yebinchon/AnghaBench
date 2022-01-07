; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_ctl_ioctl_do_datamove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_ctl_ioctl_do_datamove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, %struct.ctl_sg_entry*, %struct.ctl_sg_entry* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_sg_entry = type { i32, %struct.ctl_sg_entry* }

@.str = private unnamed_addr constant [23 x i8] c"ctl_ioctl_do_datamove\0A\00", align 1
@CTL_FLAG_NO_DATAMOVE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_FLAG_BUS_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"need to implement bus address support\00", align 1
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"ctl_ioctl_do_datamove: copying %d bytes to user\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ctl_ioctl_do_datamove: from %p to %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"ctl_ioctl_do_datamove: copying %d bytes from user\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"ctl_ioctl_do_datamove: ext_sg_entries: %d, kern_sg_entries: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"ctl_ioctl_do_datamove: ext_data_len = %d, kern_data_len = %d\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*)* @ctl_ioctl_do_datamove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_ioctl_do_datamove(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_sg_entry*, align 8
  %4 = alloca %struct.ctl_sg_entry*, align 8
  %5 = alloca %struct.ctl_sg_entry, align 8
  %6 = alloca %struct.ctl_sg_entry, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ctl_sg_entry*, align 8
  %20 = alloca %struct.ctl_sg_entry*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %21 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %23 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CTL_FLAG_NO_DATAMOVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  store i32 0, i32* %15, align 4
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %31 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %38 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  br label %311

39:                                               ; preds = %1
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %39
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %46 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 16
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @M_CTL, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = call i64 @malloc(i32 %51, i32 %52, i32 %53)
  %55 = inttoptr i64 %54 to %struct.ctl_sg_entry*
  store %struct.ctl_sg_entry* %55, %struct.ctl_sg_entry** %3, align 8
  store i32 1, i32* %15, align 4
  %56 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %57 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %56, i32 0, i32 8
  %58 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %57, align 8
  %59 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @copyin(%struct.ctl_sg_entry* %58, %struct.ctl_sg_entry* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %44
  %64 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %65 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 31343, i32* %66, align 4
  br label %311

67:                                               ; preds = %44
  %68 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %69 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %105, %67
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = load i32, i32* %18, align 4
  %78 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %78, i64 %80
  %82 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %77, %83
  %85 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %86 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %10, align 4
  %91 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %92 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %11, align 4
  br label %108

96:                                               ; preds = %76
  %97 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %97, i64 %99
  %101 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %72

108:                                              ; preds = %89, %72
  br label %123

109:                                              ; preds = %39
  store %struct.ctl_sg_entry* %5, %struct.ctl_sg_entry** %3, align 8
  store i32 0, i32* %15, align 4
  %110 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %111 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %110, i32 0, i32 8
  %112 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %111, align 8
  %113 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %114 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %113, i32 0, i32 1
  store %struct.ctl_sg_entry* %112, %struct.ctl_sg_entry** %114, align 8
  %115 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %116 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %119 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %120 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %121 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %109, %108
  %124 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %125 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %130 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %129, i32 0, i32 7
  %131 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %130, align 8
  store %struct.ctl_sg_entry* %131, %struct.ctl_sg_entry** %4, align 8
  %132 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %133 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %9, align 4
  br label %146

135:                                              ; preds = %123
  store %struct.ctl_sg_entry* %6, %struct.ctl_sg_entry** %4, align 8
  %136 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %137 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %136, i32 0, i32 7
  %138 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %137, align 8
  %139 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %4, align 8
  %140 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %139, i32 0, i32 1
  store %struct.ctl_sg_entry* %138, %struct.ctl_sg_entry** %140, align 8
  %141 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %142 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %4, align 8
  %145 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  store i32 1, i32* %9, align 4
  br label %146

146:                                              ; preds = %135, %128
  store i32 0, i32* %13, align 4
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %295, %146
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %154, %155
  br label %157

157:                                              ; preds = %153, %149
  %158 = phi i1 [ false, %149 ], [ %156, %153 ]
  br i1 %158, label %159, label %296

159:                                              ; preds = %157
  %160 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %160, i64 %162
  %164 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %4, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %168, i64 %170
  %172 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 @MIN(i32 %167, i32 %175)
  store i32 %176, i32* %12, align 4
  %177 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %177, i64 %179
  %181 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %180, i32 0, i32 1
  %182 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %181, align 8
  store %struct.ctl_sg_entry* %182, %struct.ctl_sg_entry** %19, align 8
  %183 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %19, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %183, i64 %185
  store %struct.ctl_sg_entry* %186, %struct.ctl_sg_entry** %19, align 8
  %187 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %188 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @CTL_FLAG_BUS_ADDR, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %159
  %195 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %203

196:                                              ; preds = %159
  %197 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %4, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %197, i64 %199
  %201 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %200, i32 0, i32 1
  %202 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %201, align 8
  store %struct.ctl_sg_entry* %202, %struct.ctl_sg_entry** %20, align 8
  br label %203

203:                                              ; preds = %196, %194
  %204 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %20, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %204, i64 %206
  store %struct.ctl_sg_entry* %207, %struct.ctl_sg_entry** %20, align 8
  %208 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %209 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %208, i32 0, i32 6
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %203
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = call i32 @CTL_DEBUG_PRINT(i8* %219)
  %221 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %20, align 8
  %222 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %19, align 8
  %223 = bitcast %struct.ctl_sg_entry* %222 to i8*
  %224 = call i32 @CTL_DEBUG_PRINT(i8* %223)
  %225 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %20, align 8
  %226 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %19, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i64 @copyout(%struct.ctl_sg_entry* %225, %struct.ctl_sg_entry* %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %216
  %231 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %232 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  store i32 31344, i32* %233, align 4
  br label %311

234:                                              ; preds = %216
  br label %254

235:                                              ; preds = %203
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %239 = call i32 @CTL_DEBUG_PRINT(i8* %238)
  %240 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %19, align 8
  %241 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %20, align 8
  %242 = bitcast %struct.ctl_sg_entry* %241 to i8*
  %243 = call i32 @CTL_DEBUG_PRINT(i8* %242)
  %244 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %19, align 8
  %245 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %20, align 8
  %246 = load i32, i32* %12, align 4
  %247 = call i64 @copyin(%struct.ctl_sg_entry* %244, %struct.ctl_sg_entry* %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %235
  %250 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %251 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  store i32 31345, i32* %252, align 4
  br label %311

253:                                              ; preds = %235
  br label %254

254:                                              ; preds = %253, %234
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %257 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %263 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = sub nsw i64 %264, %261
  store i64 %265, i64* %263, align 8
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %14, align 4
  %269 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %269, i64 %271
  %273 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %14, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %254
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %280

280:                                              ; preds = %277, %254
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %13, align 4
  %284 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %4, align 8
  %285 = load i32, i32* %17, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %284, i64 %286
  %288 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %13, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %280
  %293 = load i32, i32* %17, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %295

295:                                              ; preds = %292, %280
  br label %149

296:                                              ; preds = %157
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = inttoptr i64 %299 to i8*
  %301 = call i32 @CTL_DEBUG_PRINT(i8* %300)
  %302 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %303 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %306 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = call i32 @CTL_DEBUG_PRINT(i8* %309)
  br label %311

311:                                              ; preds = %296, %249, %230, %63, %29
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %3, align 8
  %316 = load i32, i32* @M_CTL, align 4
  %317 = call i32 @free(%struct.ctl_sg_entry* %315, i32 %316)
  br label %318

318:                                              ; preds = %314, %311
  %319 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %319
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @copyin(%struct.ctl_sg_entry*, %struct.ctl_sg_entry*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @copyout(%struct.ctl_sg_entry*, %struct.ctl_sg_entry*, i32) #1

declare dso_local i32 @free(%struct.ctl_sg_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
