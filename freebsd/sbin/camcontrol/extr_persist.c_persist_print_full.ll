; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_per_res_in_header = type { i32, i32 }
%struct.scsi_per_res_in_full_desc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No reservations.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"unable to print reservation, only got %u valid bytes\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PRgeneration: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Reservation Key: %#jx\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"All Target Ports (ALL_TG_PT): %d\0A\00", align 1
@SPRI_FULL_ALL_TG_PT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Reservation Holder (R_HOLDER): %d\0A\00", align 1
@SPRI_FULL_R_HOLDER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Relative Target Port ID: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_per_res_in_header*, i32)* @persist_print_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persist_print_full(%struct.scsi_per_res_in_header* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_per_res_in_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_per_res_in_full_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_per_res_in_header* %0, %struct.scsi_per_res_in_header** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @scsi_4btoul(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @MIN(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %129

32:                                               ; preds = %2
  %33 = load i32, i32* @stdout, align 4
  %34 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scsi_4btoul(i32 %36)
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %39, i64 1
  %41 = bitcast %struct.scsi_per_res_in_header* %40 to i32*
  store i32* %41, i32** %8, align 8
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = bitcast i32* %43 to %struct.scsi_per_res_in_full_desc*
  store %struct.scsi_per_res_in_full_desc* %44, %struct.scsi_per_res_in_full_desc** %7, align 8
  br label %45

45:                                               ; preds = %124, %32
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, 24
  br i1 %48, label %49, label %129

49:                                               ; preds = %45
  %50 = load i32, i32* @stdout, align 4
  %51 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %52 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @scsi_8btou64(i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @stdout, align 4
  %59 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %60 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SPRI_FULL_ALL_TG_PT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @stdout, align 4
  %69 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %70 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SPRI_FULL_R_HOLDER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %79 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SPRI_FULL_R_HOLDER, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %49
  %85 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %86 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @persist_print_scopetype(i32 %87)
  br label %89

89:                                               ; preds = %84, %49
  %90 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %91 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SPRI_FULL_ALL_TG_PT, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32, i32* @stdout, align 4
  %98 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %99 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @scsi_2btoul(i32 %100)
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %89
  %104 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %105 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @scsi_4btoul(i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.scsi_per_res_in_full_desc*, %struct.scsi_per_res_in_full_desc** %7, align 8
  %109 = getelementptr inbounds %struct.scsi_per_res_in_full_desc, %struct.scsi_per_res_in_full_desc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @persist_print_transportid(i32 %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 24, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %8, align 8
  br label %124

124:                                              ; preds = %103
  %125 = load i32*, i32** %8, align 8
  %126 = bitcast i32* %125 to %struct.scsi_per_res_in_full_desc*
  store %struct.scsi_per_res_in_full_desc* %126, %struct.scsi_per_res_in_full_desc** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %45

129:                                              ; preds = %31, %45
  ret void
}

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @persist_print_scopetype(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @persist_print_transportid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
