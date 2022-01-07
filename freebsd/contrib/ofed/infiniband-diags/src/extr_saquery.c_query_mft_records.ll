; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_mft_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_mft_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MFTR = common dso_local global i32 0, align 4
@LID = common dso_local global i32 0, align 4
@BLOCK = common dso_local global i32 0, align 4
@IB_MCAST_BLOCK_ID_MASK_HO = common dso_local global i32 0, align 4
@POSITION = common dso_local global i32 0, align 4
@IB_SA_ATTR_MFTRECORD = common dso_local global i32 0, align 4
@dump_one_mft_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_mft_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_mft_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.query_cmd*, align 8
  %7 = alloca %struct.sa_handle*, align 8
  %8 = alloca %struct.query_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.query_cmd* %0, %struct.query_cmd** %6, align 8
  store %struct.sa_handle* %1, %struct.sa_handle** %7, align 8
  store %struct.query_params* %2, %struct.query_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @parse_lid_and_ports(%struct.sa_handle* %20, i8* %23, i32* %13, i32* %15, i32* %14)
  br label %25

25:                                               ; preds = %19, %5
  %26 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 8)
  %27 = load i32, i32* %13, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MFTR, align 4
  %31 = load i32, i32* @LID, align 4
  %32 = call i32 @CHECK_AND_SET_VAL(i32 %27, i32 16, i32 0, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MFTR, align 4
  %37 = load i32, i32* @BLOCK, align 4
  %38 = call i32 @CHECK_AND_SET_VAL(i32 %33, i32 16, i32 -1, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @IB_MCAST_BLOCK_ID_MASK_HO, align 4
  %40 = call i32 @cl_hton16(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @MFTR, align 4
  %47 = load i32, i32* @POSITION, align 4
  %48 = call i32 @CHECK_AND_SET_VAL(i32 %44, i32 8, i32 -1, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = shl i32 %49, 12
  %51 = call i32 @cl_hton16(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %56 = load i32, i32* @IB_SA_ATTR_MFTRECORD, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @dump_one_mft_record, align 4
  %59 = load %struct.query_params*, %struct.query_params** %8, align 8
  %60 = call i32 @get_and_dump_any_records(%struct.sa_handle* %55, i32 %56, i32 0, i32 %57, %struct.TYPE_4__* %11, i32 8, i32 %58, %struct.query_params* %59)
  ret i32 %60
}

declare dso_local i32 @parse_lid_and_ports(%struct.sa_handle*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cl_hton16(i32) #1

declare dso_local i32 @get_and_dump_any_records(%struct.sa_handle*, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.query_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
