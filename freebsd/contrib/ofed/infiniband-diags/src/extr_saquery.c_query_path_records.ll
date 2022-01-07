; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_path_records.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_query_path_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_cmd = type { i32 }
%struct.sa_handle = type { i32 }
%struct.query_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PR = common dso_local global i32 0, align 4
@SERVICEID = common dso_local global i32 0, align 4
@SGID = common dso_local global i32 0, align 4
@DGID = common dso_local global i32 0, align 4
@SLID = common dso_local global i32 0, align 4
@DLID = common dso_local global i32 0, align 4
@HOPLIMIT = common dso_local global i32 0, align 4
@FLOWLABEL = common dso_local global i32 0, align 4
@TCLASS = common dso_local global i32 0, align 4
@REVERSIBLE = common dso_local global i32 0, align 4
@NUMBPATH = common dso_local global i32 0, align 4
@PKEY = common dso_local global i32 0, align 4
@SL = common dso_local global i32 0, align 4
@QOS_CLASS = common dso_local global i32 0, align 4
@IB_PATH_REC_SL_MASK = common dso_local global i32 0, align 4
@MTU = common dso_local global i32 0, align 4
@SELEC = common dso_local global i32 0, align 4
@RATE = common dso_local global i32 0, align 4
@PKTLIFETIME = common dso_local global i32 0, align 4
@IB_SA_ATTR_PATHRECORD = common dso_local global i32 0, align 4
@dump_path_record = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_cmd*, %struct.sa_handle*, %struct.query_params*, i32, i8**)* @query_path_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_path_records(%struct.query_cmd* %0, %struct.sa_handle* %1, %struct.query_params* %2, i32 %3, i8** %4) #0 {
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
  store %struct.query_cmd* %0, %struct.query_cmd** %6, align 8
  store %struct.sa_handle* %1, %struct.sa_handle** %7, align 8
  store %struct.query_params* %2, %struct.query_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 52)
  %17 = load %struct.query_params*, %struct.query_params** %8, align 8
  %18 = getelementptr inbounds %struct.query_params, %struct.query_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PR, align 4
  %23 = load i32, i32* @SERVICEID, align 4
  %24 = call i32 @CHECK_AND_SET_VAL(i32 %19, i32 64, i32 0, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.query_params*, %struct.query_params** %8, align 8
  %26 = getelementptr inbounds %struct.query_params, %struct.query_params* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PR, align 4
  %31 = load i32, i32* @SGID, align 4
  %32 = call i32 @CHECK_AND_SET_GID(i32 %27, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.query_params*, %struct.query_params** %8, align 8
  %34 = getelementptr inbounds %struct.query_params, %struct.query_params* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PR, align 4
  %39 = load i32, i32* @DGID, align 4
  %40 = call i32 @CHECK_AND_SET_GID(i32 %35, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.query_params*, %struct.query_params** %8, align 8
  %42 = getelementptr inbounds %struct.query_params, %struct.query_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PR, align 4
  %47 = load i32, i32* @SLID, align 4
  %48 = call i32 @CHECK_AND_SET_VAL(i32 %43, i32 16, i32 0, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.query_params*, %struct.query_params** %8, align 8
  %50 = getelementptr inbounds %struct.query_params, %struct.query_params* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PR, align 4
  %55 = load i32, i32* @DLID, align 4
  %56 = call i32 @CHECK_AND_SET_VAL(i32 %51, i32 16, i32 0, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.query_params*, %struct.query_params** %8, align 8
  %58 = getelementptr inbounds %struct.query_params, %struct.query_params* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PR, align 4
  %63 = load i32, i32* @HOPLIMIT, align 4
  %64 = call i32 @CHECK_AND_SET_VAL(i32 %59, i32 32, i32 -1, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.query_params*, %struct.query_params** %8, align 8
  %66 = getelementptr inbounds %struct.query_params, %struct.query_params* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @PR, align 4
  %71 = load i32, i32* @FLOWLABEL, align 4
  %72 = call i32 @CHECK_AND_SET_VAL(i32 %68, i32 32, i32 0, i32 %69, i32 %70, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_hton32(i32 -268435201)
  %76 = and i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %76, %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load %struct.query_params*, %struct.query_params** %8, align 8
  %81 = getelementptr inbounds %struct.query_params, %struct.query_params* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PR, align 4
  %86 = load i32, i32* @TCLASS, align 4
  %87 = call i32 @CHECK_AND_SET_VAL(i32 %82, i32 8, i32 0, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.query_params*, %struct.query_params** %8, align 8
  %89 = getelementptr inbounds %struct.query_params, %struct.query_params* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @PR, align 4
  %93 = load i32, i32* @REVERSIBLE, align 4
  %94 = call i32 @CHECK_AND_SET_VAL(i32 %90, i32 8, i32 -1, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.query_params*, %struct.query_params** %8, align 8
  %96 = getelementptr inbounds %struct.query_params, %struct.query_params* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PR, align 4
  %101 = load i32, i32* @NUMBPATH, align 4
  %102 = call i32 @CHECK_AND_SET_VAL(i32 %97, i32 8, i32 -1, i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = shl i32 %103, 7
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  %108 = load %struct.query_params*, %struct.query_params** %8, align 8
  %109 = getelementptr inbounds %struct.query_params, %struct.query_params* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PR, align 4
  %114 = load i32, i32* @PKEY, align 4
  %115 = call i32 @CHECK_AND_SET_VAL(i32 %110, i32 16, i32 0, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.query_params*, %struct.query_params** %8, align 8
  %117 = getelementptr inbounds %struct.query_params, %struct.query_params* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @PR, align 4
  %122 = load i32, i32* @SL, align 4
  %123 = call i32 @CHECK_AND_SET_VAL(i32 %118, i32 16, i32 -1, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.query_params*, %struct.query_params** %8, align 8
  %125 = getelementptr inbounds %struct.query_params, %struct.query_params* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @PR, align 4
  %130 = load i32, i32* @QOS_CLASS, align 4
  %131 = call i32 @CHECK_AND_SET_VAL(i32 %127, i32 16, i32 -1, i32 %128, i32 %129, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IB_PATH_REC_SL_MASK, align 4
  %135 = call i32 @CL_HTON16(i32 %134)
  %136 = and i32 %133, %135
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %136, %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 7
  store i32 %138, i32* %139, align 4
  %140 = load %struct.query_params*, %struct.query_params** %8, align 8
  %141 = getelementptr inbounds %struct.query_params, %struct.query_params* %140, i32 0, i32 13
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PR, align 4
  %146 = load i32, i32* @MTU, align 4
  %147 = load i32, i32* @SELEC, align 4
  %148 = call i32 @CHECK_AND_SET_VAL_AND_SEL(i32 %142, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.query_params*, %struct.query_params** %8, align 8
  %150 = getelementptr inbounds %struct.query_params, %struct.query_params* %149, i32 0, i32 12
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @PR, align 4
  %155 = load i32, i32* @RATE, align 4
  %156 = load i32, i32* @SELEC, align 4
  %157 = call i32 @CHECK_AND_SET_VAL_AND_SEL(i32 %151, i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.query_params*, %struct.query_params** %8, align 8
  %159 = getelementptr inbounds %struct.query_params, %struct.query_params* %158, i32 0, i32 11
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PR, align 4
  %164 = load i32, i32* @PKTLIFETIME, align 4
  %165 = load i32, i32* @SELEC, align 4
  %166 = call i32 @CHECK_AND_SET_VAL_AND_SEL(i32 %160, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.sa_handle*, %struct.sa_handle** %7, align 8
  %168 = load i32, i32* @IB_SA_ATTR_PATHRECORD, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @dump_path_record, align 4
  %171 = load %struct.query_params*, %struct.query_params** %8, align 8
  %172 = call i32 @get_and_dump_any_records(%struct.sa_handle* %167, i32 %168, i32 0, i32 %169, %struct.TYPE_4__* %11, i32 52, i32 %170, %struct.query_params* %171)
  ret i32 %172
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_AND_SET_GID(i32, i32, i32, i32) #1

declare dso_local i32 @cl_hton32(i32) #1

declare dso_local i32 @CL_HTON16(i32) #1

declare dso_local i32 @CHECK_AND_SET_VAL_AND_SEL(i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_and_dump_any_records(%struct.sa_handle*, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.query_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
