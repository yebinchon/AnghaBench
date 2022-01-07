; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_inform_info_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_inform_info_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32 }

@IB_IIR_COMPMASK_SUBSCRIBERGID = common dso_local global i32 0, align 4
@IB_SA_ATTR_INFORMINFORECORD = common dso_local global i32 0, align 4
@dump_inform_info_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_inform_info_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_inform_info_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.query_cmd*, align 8
  %8 = alloca %struct.sa_handle*, align 8
  %9 = alloca %struct.query_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.query_cmd* %0, %struct.query_cmd** %7, align 8
  store %struct.sa_handle* %1, %struct.sa_handle** %8, align 8
  store %struct.query_params* %2, %struct.query_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 4)
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i32, i32* @IB_IIR_COMPMASK_SUBSCRIBERGID, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i8**, i8*** %11, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @parse_iir_subscriber_gid(i8* %22, i32* %13)
  store i32 %23, i32* %12, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %35

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %5
  %29 = load %struct.sa_handle*, %struct.sa_handle** %8, align 8
  %30 = load i32, i32* @IB_SA_ATTR_INFORMINFORECORD, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @dump_inform_info_record, align 4
  %33 = load %struct.query_params*, %struct.query_params** %9, align 8
  %34 = call i32 @get_and_dump_any_records(%struct.sa_handle* %29, i32 %30, i32 0, i32 %31, i32* %13, i32 4, i32 %32, %struct.query_params* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @parse_iir_subscriber_gid(i8*, i32*) #1

declare dso_local i32 @get_and_dump_any_records(%struct.sa_handle*, i32, i32, i32, i32*, i32, i32, %struct.query_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
