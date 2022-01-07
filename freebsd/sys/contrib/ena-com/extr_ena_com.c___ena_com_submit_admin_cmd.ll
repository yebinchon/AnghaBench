; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c___ena_com_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c___ena_com_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i32, i32, %struct.ena_admin_acq_entry*, i64, i32 }
%struct.ena_com_admin_queue = type { i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ena_admin_aq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.ena_admin_acq_entry = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"admin queue is full.\0A\00", align 1
@ENA_COM_NO_SPACE = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK = common dso_local global i64 0, align 8
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_CMD_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_comp_ctx* (%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64)* @__ena_com_submit_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_comp_ctx* @__ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %0, %struct.ena_admin_aq_entry* %1, i64 %2, %struct.ena_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca %struct.ena_comp_ctx*, align 8
  %7 = alloca %struct.ena_com_admin_queue*, align 8
  %8 = alloca %struct.ena_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ena_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ena_comp_ctx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %7, align 8
  store %struct.ena_admin_aq_entry* %1, %struct.ena_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ena_admin_acq_entry* %3, %struct.ena_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %18 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* %15, align 8
  %21 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %22 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %15, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %13, align 8
  %27 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %28 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %27, i32 0, i32 5
  %29 = call i64 @ATOMIC32_READ(i32* %28)
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %32 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %5
  %36 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %38 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ENA_COM_NO_SPACE, align 4
  %43 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %42)
  store %struct.ena_comp_ctx* %43, %struct.ena_comp_ctx** %6, align 8
  br label %165

44:                                               ; preds = %5
  %45 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %46 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %49 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ENA_ADMIN_AQ_COMMON_DESC_PHASE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %55 = getelementptr inbounds %struct.ena_admin_aq_entry, %struct.ena_admin_aq_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* @ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK, align 8
  %61 = and i64 %59, %60
  %62 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %63 = getelementptr inbounds %struct.ena_admin_aq_entry, %struct.ena_admin_aq_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %61
  store i64 %66, i64* %64, align 8
  %67 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue* %67, i64 %68, i32 1)
  store %struct.ena_comp_ctx* %69, %struct.ena_comp_ctx** %12, align 8
  %70 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %71 = icmp ne %struct.ena_comp_ctx* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %44
  %77 = load i32, i32* @ENA_COM_INVAL, align 4
  %78 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %77)
  store %struct.ena_comp_ctx* %78, %struct.ena_comp_ctx** %6, align 8
  br label %165

79:                                               ; preds = %44
  %80 = load i32, i32* @ENA_CMD_SUBMITTED, align 4
  %81 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %82 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %85 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %10, align 8
  %87 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %88 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %87, i32 0, i32 2
  store %struct.ena_admin_acq_entry* %86, %struct.ena_admin_acq_entry** %88, align 8
  %89 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %90 = getelementptr inbounds %struct.ena_admin_aq_entry, %struct.ena_admin_aq_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %94 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ENA_WAIT_EVENT_CLEAR(i32 %97)
  %99 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %100 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @memcpy(i32* %104, %struct.ena_admin_aq_entry* %105, i64 %106)
  %108 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %109 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = load i64, i64* %15, align 8
  %113 = and i64 %111, %112
  %114 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %115 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %117 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %122 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %127 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = and i64 %129, %130
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %79
  %137 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %138 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %145 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %136, %79
  %148 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %149 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = call i32 @ENA_DB_SYNC(i32* %150)
  %152 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %153 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %156 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %160 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ENA_REG_WRITE32(i32 %154, i64 %158, i32 %162)
  %164 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  store %struct.ena_comp_ctx* %164, %struct.ena_comp_ctx** %6, align 8
  br label %165

165:                                              ; preds = %147, %76, %35
  %166 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %6, align 8
  ret %struct.ena_comp_ctx* %166
}

declare dso_local i64 @ATOMIC32_READ(i32*) #1

declare dso_local i32 @ena_trc_dbg(i8*) #1

declare dso_local %struct.ena_comp_ctx* @ERR_PTR(i32) #1

declare dso_local %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENA_WAIT_EVENT_CLEAR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ena_admin_aq_entry*, i64) #1

declare dso_local i32 @ENA_DB_SYNC(i32*) #1

declare dso_local i32 @ENA_REG_WRITE32(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
