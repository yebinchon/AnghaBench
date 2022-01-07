; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_mcmember_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_mcmember_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCR = common dso_local global i32 0, align 4
@MGID = common dso_local global i32 0, align 4
@PORT_GID = common dso_local global i32 0, align 4
@MLID = common dso_local global i32 0, align 4
@QKEY = common dso_local global i32 0, align 4
@MTU = common dso_local global i32 0, align 4
@_SEL = common dso_local global i32 0, align 4
@RATE = common dso_local global i32 0, align 4
@LIFE = common dso_local global i32 0, align 4
@TCLASS = common dso_local global i32 0, align 4
@PKEY = common dso_local global i32 0, align 4
@SL = common dso_local global i32 0, align 4
@FLOW = common dso_local global i32 0, align 4
@HOP = common dso_local global i32 0, align 4
@SCOPE = common dso_local global i32 0, align 4
@JOIN_STATE = common dso_local global i32 0, align 4
@PROXY = common dso_local global i32 0, align 4
@IB_SA_ATTR_MCRECORD = common dso_local global i32 0, align 4
@dump_one_mcmember_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_mcmember_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_mcmember_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
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
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 48)
  %18 = load %struct.query_params*, %struct.query_params** %8, align 8
  %19 = getelementptr inbounds %struct.query_params, %struct.query_params* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MCR, align 4
  %24 = load i32, i32* @MGID, align 4
  %25 = call i32 @CHECK_AND_SET_GID(i32 %20, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.query_params*, %struct.query_params** %8, align 8
  %27 = getelementptr inbounds %struct.query_params, %struct.query_params* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MCR, align 4
  %32 = load i32, i32* @PORT_GID, align 4
  %33 = call i32 @CHECK_AND_SET_GID(i32 %28, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.query_params*, %struct.query_params** %8, align 8
  %35 = getelementptr inbounds %struct.query_params, %struct.query_params* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MCR, align 4
  %40 = load i32, i32* @MLID, align 4
  %41 = call i32 @CHECK_AND_SET_VAL(i32 %36, i32 16, i32 0, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.query_params*, %struct.query_params** %8, align 8
  %43 = getelementptr inbounds %struct.query_params, %struct.query_params* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MCR, align 4
  %48 = load i32, i32* @QKEY, align 4
  %49 = call i32 @CHECK_AND_SET_VAL(i32 %44, i32 32, i32 0, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.query_params*, %struct.query_params** %8, align 8
  %51 = getelementptr inbounds %struct.query_params, %struct.query_params* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MCR, align 4
  %56 = load i32, i32* @MTU, align 4
  %57 = load i32, i32* @_SEL, align 4
  %58 = call i32 @CHECK_AND_SET_VAL_AND_SEL(i32 %52, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.query_params*, %struct.query_params** %8, align 8
  %60 = getelementptr inbounds %struct.query_params, %struct.query_params* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MCR, align 4
  %65 = load i32, i32* @RATE, align 4
  %66 = load i32, i32* @_SEL, align 4
  %67 = call i32 @CHECK_AND_SET_VAL_AND_SEL(i32 %61, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.query_params*, %struct.query_params** %8, align 8
  %69 = getelementptr inbounds %struct.query_params, %struct.query_params* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MCR, align 4
  %74 = load i32, i32* @LIFE, align 4
  %75 = load i32, i32* @_SEL, align 4
  %76 = call i32 @CHECK_AND_SET_VAL_AND_SEL(i32 %70, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.query_params*, %struct.query_params** %8, align 8
  %78 = getelementptr inbounds %struct.query_params, %struct.query_params* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MCR, align 4
  %83 = load i32, i32* @TCLASS, align 4
  %84 = call i32 @CHECK_AND_SET_VAL(i32 %79, i32 8, i32 0, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.query_params*, %struct.query_params** %8, align 8
  %86 = getelementptr inbounds %struct.query_params, %struct.query_params* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MCR, align 4
  %91 = load i32, i32* @PKEY, align 4
  %92 = call i32 @CHECK_AND_SET_VAL(i32 %87, i32 16, i32 0, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.query_params*, %struct.query_params** %8, align 8
  %94 = getelementptr inbounds %struct.query_params, %struct.query_params* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @MCR, align 4
  %98 = load i32, i32* @SL, align 4
  %99 = call i32 @CHECK_AND_SET_VAL(i32 %95, i32 8, i32 -1, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.query_params*, %struct.query_params** %8, align 8
  %101 = getelementptr inbounds %struct.query_params, %struct.query_params* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @MCR, align 4
  %105 = load i32, i32* @FLOW, align 4
  %106 = call i32 @CHECK_AND_SET_VAL(i32 %102, i32 32, i32 0, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.query_params*, %struct.query_params** %8, align 8
  %108 = getelementptr inbounds %struct.query_params, %struct.query_params* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @MCR, align 4
  %112 = load i32, i32* @HOP, align 4
  %113 = call i32 @CHECK_AND_SET_VAL(i32 %109, i32 8, i32 0, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @cl_ntoh32(i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @ib_member_set_sl_flow_hop(i32 %114, i32 %116, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  store i32 %118, i32* %119, align 4
  %120 = load %struct.query_params*, %struct.query_params** %8, align 8
  %121 = getelementptr inbounds %struct.query_params, %struct.query_params* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @MCR, align 4
  %125 = load i32, i32* @SCOPE, align 4
  %126 = call i32 @CHECK_AND_SET_VAL(i32 %122, i32 8, i32 0, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.query_params*, %struct.query_params** %8, align 8
  %128 = getelementptr inbounds %struct.query_params, %struct.query_params* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MCR, align 4
  %133 = load i32, i32* @JOIN_STATE, align 4
  %134 = call i32 @CHECK_AND_SET_VAL(i32 %129, i32 8, i32 0, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = shl i32 %135, 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = load %struct.query_params*, %struct.query_params** %8, align 8
  %141 = getelementptr inbounds %struct.query_params, %struct.query_params* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MCR, align 4
  %146 = load i32, i32* @PROXY, align 4
  %147 = call i32 @CHECK_AND_SET_VAL(i32 %142, i32 8, i32 -1, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %149 = load i32, i32* @IB_SA_ATTR_MCRECORD, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @dump_one_mcmember_record, align 4
  %152 = load %struct.query_params*, %struct.query_params** %8, align 8
  %153 = call i32 @get_and_dump_any_records(%struct.sa_handle* %148, i32 %149, i32 0, i32 %150, %struct.TYPE_4__* %11, i32 48, i32 %151, %struct.query_params* %152)
  ret i32 %153
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_GID(i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL_AND_SEL(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ib_member_set_sl_flow_hop(i32, i32, i32) #1

declare dso_local i32 @cl_ntoh32(i32) #1

declare dso_local i32 @get_and_dump_any_records(%struct.sa_handle*, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.query_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
