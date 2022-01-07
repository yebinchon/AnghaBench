; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_persist.c_persist_print_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_per_res_in_header = type { i32, i32 }
%struct.scsi_per_res_key = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PRgeneration: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%u key%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%u: %#jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_per_res_in_header*, i32)* @persist_print_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persist_print_keys(%struct.scsi_per_res_in_header* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_per_res_in_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_per_res_key*, align 8
  store %struct.scsi_per_res_in_header* %0, %struct.scsi_per_res_in_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @scsi_4btoul(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MIN(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @stdout, align 4
  %21 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scsi_4btoul(i32 %23)
  %25 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @stdout, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %36 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %31, i8* %35)
  store i32 0, i32* %7, align 4
  %37 = load %struct.scsi_per_res_in_header*, %struct.scsi_per_res_in_header** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_per_res_in_header, %struct.scsi_per_res_in_header* %37, i64 1
  %39 = bitcast %struct.scsi_per_res_in_header* %38 to %struct.scsi_per_res_key*
  store %struct.scsi_per_res_key* %39, %struct.scsi_per_res_key** %8, align 8
  br label %40

40:                                               ; preds = %53, %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* @stdout, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.scsi_per_res_key*, %struct.scsi_per_res_key** %8, align 8
  %48 = getelementptr inbounds %struct.scsi_per_res_key, %struct.scsi_per_res_key* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @scsi_8btou64(i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load %struct.scsi_per_res_key*, %struct.scsi_per_res_key** %8, align 8
  %57 = getelementptr inbounds %struct.scsi_per_res_key, %struct.scsi_per_res_key* %56, i32 1
  store %struct.scsi_per_res_key* %57, %struct.scsi_per_res_key** %8, align 8
  br label %40

58:                                               ; preds = %40
  ret void
}

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
