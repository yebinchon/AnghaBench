; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_guidinfo_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_guidinfo_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GIR = common dso_local global i32 0, align 4
@LID = common dso_local global i32 0, align 4
@BLOCKNUM = common dso_local global i32 0, align 4
@IB_SA_ATTR_GUIDINFORECORD = common dso_local global i32 0, align 4
@dump_one_guidinfo_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_guidinfo_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_guidinfo_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.query_cmd*, align 8
  %7 = alloca %struct.sa_handle*, align 8
  %8 = alloca %struct.query_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.query_cmd* %0, %struct.query_cmd** %6, align 8
  store %struct.sa_handle* %1, %struct.sa_handle** %7, align 8
  store %struct.query_params* %2, %struct.query_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @parse_lid_and_ports(%struct.sa_handle* %18, i8* %21, i32* %13, i32* %14, i32* null)
  br label %23

23:                                               ; preds = %17, %5
  %24 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 8)
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GIR, align 4
  %29 = load i32, i32* @LID, align 4
  %30 = call i32 @CHECK_AND_SET_VAL(i32 %25, i32 16, i32 0, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GIR, align 4
  %35 = load i32, i32* @BLOCKNUM, align 4
  %36 = call i32 @CHECK_AND_SET_VAL(i32 %31, i32 8, i32 -1, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %38 = load i32, i32* @IB_SA_ATTR_GUIDINFORECORD, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @dump_one_guidinfo_record, align 4
  %41 = load %struct.query_params*, %struct.query_params** %8, align 8
  %42 = call i32 @get_and_dump_any_records(%struct.sa_handle* %37, i32 %38, i32 0, i32 %39, %struct.TYPE_4__* %11, i32 8, i32 %40, %struct.query_params* %41)
  ret i32 %42
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
