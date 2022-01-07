; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_per_res_in_header = type { i32 }
%struct.scsi_per_res_in_rsrv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No reservations.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"unable to print reservation, only got %u valid bytes\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PRgeneration: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Reservation Key: %#jx\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Scope address: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Extent length: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_per_res_in_header*, i32)* @persist_print_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persist_print_res(%struct.scsi_per_res_in_header* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_per_res_in_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_per_res_in_rsrv*, align 8
  store %struct.scsi_per_res_in_header* %0, %struct.scsi_per_res_in_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @scsi_4btoul(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MIN(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %15 = bitcast %struct.scsi_per_res_in_header* %14 to %struct.scsi_per_res_in_rsrv*
  store %struct.scsi_per_res_in_rsrv* %15, %struct.scsi_per_res_in_rsrv** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 12
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %64

29:                                               ; preds = %2
  %30 = load i32, i32* @stdout, align 4
  %31 = load %struct.scsi_per_res_in_rsrv*, %struct.scsi_per_res_in_rsrv** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_per_res_in_rsrv, %struct.scsi_per_res_in_rsrv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @scsi_4btoul(i32 %34)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = load %struct.scsi_per_res_in_rsrv*, %struct.scsi_per_res_in_rsrv** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_per_res_in_rsrv, %struct.scsi_per_res_in_rsrv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @scsi_8btou64(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @stdout, align 4
  %46 = load %struct.scsi_per_res_in_rsrv*, %struct.scsi_per_res_in_rsrv** %6, align 8
  %47 = getelementptr inbounds %struct.scsi_per_res_in_rsrv, %struct.scsi_per_res_in_rsrv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @scsi_4btoul(i32 %49)
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.scsi_per_res_in_rsrv*, %struct.scsi_per_res_in_rsrv** %6, align 8
  %53 = getelementptr inbounds %struct.scsi_per_res_in_rsrv, %struct.scsi_per_res_in_rsrv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @persist_print_scopetype(i32 %55)
  %57 = load i32, i32* @stdout, align 4
  %58 = load %struct.scsi_per_res_in_rsrv*, %struct.scsi_per_res_in_rsrv** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_per_res_in_rsrv, %struct.scsi_per_res_in_rsrv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @scsi_2btoul(i32 %61)
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @persist_print_scopetype(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
