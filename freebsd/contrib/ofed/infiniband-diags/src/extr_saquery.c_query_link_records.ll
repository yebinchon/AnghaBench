; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_link_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_link_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@LR = common dso_local global i32 0, align 4
@FROM_LID = common dso_local global i32 0, align 4
@FROM_PORT = common dso_local global i32 0, align 4
@TO_LID = common dso_local global i32 0, align 4
@TO_PORT = common dso_local global i32 0, align 4
@IB_SA_ATTR_LINKRECORD = common dso_local global i32 0, align 4
@dump_one_link_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_link_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_link_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
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
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @parse_lid_and_ports(%struct.sa_handle* %20, i8* %23, i32* %13, i32* %15, i32* null)
  br label %25

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @parse_lid_and_ports(%struct.sa_handle* %29, i8* %32, i32* %14, i32* %16, i32* null)
  br label %34

34:                                               ; preds = %28, %25
  %35 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 16)
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LR, align 4
  %40 = load i32, i32* @FROM_LID, align 4
  %41 = call i32 @CHECK_AND_SET_VAL(i32 %36, i32 16, i32 0, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LR, align 4
  %46 = load i32, i32* @FROM_PORT, align 4
  %47 = call i32 @CHECK_AND_SET_VAL(i32 %42, i32 8, i32 -1, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LR, align 4
  %52 = load i32, i32* @TO_LID, align 4
  %53 = call i32 @CHECK_AND_SET_VAL(i32 %48, i32 16, i32 0, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %16, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LR, align 4
  %58 = load i32, i32* @TO_PORT, align 4
  %59 = call i32 @CHECK_AND_SET_VAL(i32 %54, i32 8, i32 -1, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %61 = load i32, i32* @IB_SA_ATTR_LINKRECORD, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @dump_one_link_record, align 4
  %64 = load %struct.query_params*, %struct.query_params** %8, align 8
  %65 = call i32 @get_and_dump_any_records(%struct.sa_handle* %60, i32 %61, i32 0, i32 %62, %struct.TYPE_4__* %11, i32 16, i32 %63, %struct.query_params* %64)
  ret i32 %65
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
