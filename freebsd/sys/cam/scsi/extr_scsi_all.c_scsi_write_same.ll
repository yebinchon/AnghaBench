; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_write_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_write_same_10 = type { i32*, i32*, i64, i64, i8*, i32 }
%struct.scsi_write_same_16 = type { i32*, i32*, i64, i64, i8*, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@WRITE_SAME_10 = common dso_local global i32 0, align 4
@CAM_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"10byte: %x%x%x%x:%x%x: %d\0A\00", align 1
@WRITE_SAME_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"16byte: %x%x%x%x%x%x%x%x:%x%x%x%x: %d\0A\00", align 1
@CAM_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_write_same(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i8** %8, i32 %9, i8* %10, i32 %11) #0 {
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.scsi_write_same_10*, align 8
  %27 = alloca %struct.scsi_write_same_16*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %13, align 8
  store i32 %1, i32* %14, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8** %8, i8*** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32 %11, i32* %24, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %103

30:                                               ; preds = %12
  %31 = load i32, i32* %20, align 4
  %32 = and i32 %31, 65535
  %33 = load i32, i32* %20, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %103

35:                                               ; preds = %30
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %35
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %41 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to %struct.scsi_write_same_10*
  store %struct.scsi_write_same_10* %43, %struct.scsi_write_same_10** %26, align 8
  %44 = load i32, i32* @WRITE_SAME_10, align 4
  %45 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %46 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %49 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %52 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @scsi_ulto4b(i32 %50, i32* %53)
  %55 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %56 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %59 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @scsi_ulto2b(i32 %57, i32* %60)
  %62 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %63 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  store i8* inttoptr (i64 48 to i8*), i8** %25, align 8
  %64 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %65 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %69 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %70 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %75 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %80 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %85 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %90 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %26, align 8
  %95 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @CAM_DEBUG(i32 %67, i32 %68, i8* %101)
  br label %197

103:                                              ; preds = %35, %30, %12
  %104 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %105 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = bitcast i32* %106 to %struct.scsi_write_same_16*
  store %struct.scsi_write_same_16* %107, %struct.scsi_write_same_16** %27, align 8
  %108 = load i32, i32* @WRITE_SAME_16, align 4
  %109 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %110 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %113 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %19, align 4
  %115 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %116 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @scsi_u64to8b(i32 %114, i32* %117)
  %119 = load i32, i32* %20, align 4
  %120 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %121 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @scsi_ulto4b(i32 %119, i32* %122)
  %124 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %125 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %127 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  store i8* inttoptr (i64 48 to i8*), i8** %25, align 8
  %128 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %129 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %133 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %134 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %139 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %144 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %149 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %154 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %159 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %164 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %169 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %174 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %179 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %184 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %27, align 8
  %189 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8*
  %196 = call i32 @CAM_DEBUG(i32 %131, i32 %132, i8* %195)
  br label %197

197:                                              ; preds = %103, %39
  %198 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %199 = load i32, i32* %14, align 4
  %200 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %15, align 8
  %201 = bitcast void (%struct.cam_periph*, %union.ccb*)* %200 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %202 = load i32, i32* @CAM_DIR_OUT, align 4
  %203 = load i8*, i8** %16, align 8
  %204 = load i8**, i8*** %21, align 8
  %205 = load i32, i32* %22, align 4
  %206 = load i8*, i8** %23, align 8
  %207 = load i8*, i8** %25, align 8
  %208 = load i32, i32* %24, align 4
  %209 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %198, i32 %199, void (%struct.cam_periph.0*, %union.ccb.1*)* %201, i32 %202, i8* %203, i8** %204, i32 %205, i8* %206, i8* %207, i32 %208)
  ret void
}

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32*) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i8*, i8**, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
