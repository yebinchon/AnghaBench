; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_event_req_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_event_req_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_req_event_param = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_ucm_req_event_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cm_req_event_param*, %struct.ib_ucm_req_event_resp*)* @cm_event_req_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_event_req_get(%struct.ib_cm_req_event_param* %0, %struct.ib_ucm_req_event_resp* %1) #0 {
  %3 = alloca %struct.ib_cm_req_event_param*, align 8
  %4 = alloca %struct.ib_ucm_req_event_resp*, align 8
  store %struct.ib_cm_req_event_param* %0, %struct.ib_cm_req_event_param** %3, align 8
  store %struct.ib_ucm_req_event_resp* %1, %struct.ib_ucm_req_event_resp** %4, align 8
  %5 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %6 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %9 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %8, i32 0, i32 15
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %11 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %14 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %19 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %24 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %26 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %29 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %31 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %34 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %36 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %39 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %41 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %44 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %46 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %49 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %51 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %54 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %56 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %59 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %61 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %64 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %66 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %69 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %71 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %74 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %76 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %79 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %78, i32 0, i32 1
  %80 = call i32 @ibv_copy_path_rec_from_kern(i64 %77, i32* %79)
  %81 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %82 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %2
  %86 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %3, align 8
  %87 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ib_ucm_req_event_resp*, %struct.ib_ucm_req_event_resp** %4, align 8
  %90 = getelementptr inbounds %struct.ib_ucm_req_event_resp, %struct.ib_ucm_req_event_resp* %89, i32 0, i32 0
  %91 = call i32 @ibv_copy_path_rec_from_kern(i64 %88, i32* %90)
  br label %92

92:                                               ; preds = %85, %2
  ret void
}

declare dso_local i32 @ibv_copy_path_rec_from_kern(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
