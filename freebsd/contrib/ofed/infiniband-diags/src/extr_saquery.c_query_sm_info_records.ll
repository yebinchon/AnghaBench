; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_sm_info_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_sm_info_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SMIR = common dso_local global i32 0, align 4
@LID = common dso_local global i32 0, align 4
@IB_SA_ATTR_SMINFORECORD = common dso_local global i32 0, align 4
@dump_sm_info_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_sm_info_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_sm_info_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.query_cmd*, align 8
  %7 = alloca %struct.sa_handle*, align 8
  %8 = alloca %struct.query_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.query_cmd* %0, %struct.query_cmd** %6, align 8
  store %struct.sa_handle* %1, %struct.sa_handle** %7, align 8
  store %struct.query_params* %2, %struct.query_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @parse_lid_and_ports(%struct.sa_handle* %17, i8* %20, i32* %13, i32* null, i32* null)
  br label %22

22:                                               ; preds = %16, %5
  %23 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 4)
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SMIR, align 4
  %28 = load i32, i32* @LID, align 4
  %29 = call i32 @CHECK_AND_SET_VAL(i32 %24, i32 16, i32 0, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %31 = load i32, i32* @IB_SA_ATTR_SMINFORECORD, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @dump_sm_info_record, align 4
  %34 = load %struct.query_params*, %struct.query_params** %8, align 8
  %35 = call i32 @get_and_dump_any_records(%struct.sa_handle* %30, i32 %31, i32 0, i32 %32, %struct.TYPE_4__* %11, i32 4, i32 %33, %struct.query_params* %34)
  ret i32 %35
}

declare dso_local i32 @parse_lid_and_ports(%struct.sa_handle*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_and_dump_any_records(%struct.sa_handle*, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.query_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
