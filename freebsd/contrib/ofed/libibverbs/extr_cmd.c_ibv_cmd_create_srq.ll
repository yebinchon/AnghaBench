; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_srq = type { %struct.TYPE_3__*, i32 }
%struct.ibv_srq_init_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ibv_create_srq = type { i64, i32, i32, i32, i32 }
%struct.ibv_create_srq_resp = type { i32, i32, i32 }
%struct.ibv_create_srq_resp_v5 = type { i32 }

@CREATE_SRQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@abi_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_create_srq(%struct.ibv_pd* %0, %struct.ibv_srq* %1, %struct.ibv_srq_init_attr* %2, %struct.ibv_create_srq* %3, i64 %4, %struct.ibv_create_srq_resp* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_pd*, align 8
  %10 = alloca %struct.ibv_srq*, align 8
  %11 = alloca %struct.ibv_srq_init_attr*, align 8
  %12 = alloca %struct.ibv_create_srq*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ibv_create_srq_resp*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ibv_create_srq_resp_v5*, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %9, align 8
  store %struct.ibv_srq* %1, %struct.ibv_srq** %10, align 8
  store %struct.ibv_srq_init_attr* %2, %struct.ibv_srq_init_attr** %11, align 8
  store %struct.ibv_create_srq* %3, %struct.ibv_create_srq** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.ibv_create_srq_resp* %5, %struct.ibv_create_srq_resp** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i32, i32* @CREATE_SRQ, align 4
  %20 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %21 = load i64, i64* %15, align 8
  %22 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_srq* %17, i64 %18, i32 %19, %struct.ibv_create_srq_resp* %20, i64 %21)
  %23 = load %struct.ibv_srq*, %struct.ibv_srq** %10, align 8
  %24 = ptrtoint %struct.ibv_srq* %23 to i64
  %25 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %26 = getelementptr inbounds %struct.ibv_create_srq, %struct.ibv_create_srq* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %28 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %31 = getelementptr inbounds %struct.ibv_create_srq, %struct.ibv_create_srq* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %11, align 8
  %33 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %37 = getelementptr inbounds %struct.ibv_create_srq, %struct.ibv_create_srq* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %11, align 8
  %39 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %43 = getelementptr inbounds %struct.ibv_create_srq, %struct.ibv_create_srq* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %11, align 8
  %45 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %49 = getelementptr inbounds %struct.ibv_create_srq, %struct.ibv_create_srq* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %51 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ibv_create_srq*, %struct.ibv_create_srq** %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i64 @write(i32 %54, %struct.ibv_create_srq* %55, i64 %56)
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %7
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %8, align 4
  br label %104

62:                                               ; preds = %7
  %63 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_srq_resp* %63, i64 %64)
  %66 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %67 = getelementptr inbounds %struct.ibv_create_srq_resp, %struct.ibv_create_srq_resp* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_srq*, %struct.ibv_srq** %10, align 8
  %70 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %72 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load %struct.ibv_srq*, %struct.ibv_srq** %10, align 8
  %75 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %74, i32 0, i32 0
  store %struct.TYPE_3__* %73, %struct.TYPE_3__** %75, align 8
  %76 = load i32, i32* @abi_ver, align 4
  %77 = icmp sgt i32 %76, 5
  br i1 %77, label %78, label %91

78:                                               ; preds = %62
  %79 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %80 = getelementptr inbounds %struct.ibv_create_srq_resp, %struct.ibv_create_srq_resp* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %11, align 8
  %83 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %86 = getelementptr inbounds %struct.ibv_create_srq_resp, %struct.ibv_create_srq_resp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %11, align 8
  %89 = getelementptr inbounds %struct.ibv_srq_init_attr, %struct.ibv_srq_init_attr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %103

91:                                               ; preds = %62
  %92 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %93 = bitcast %struct.ibv_create_srq_resp* %92 to %struct.ibv_create_srq_resp_v5*
  store %struct.ibv_create_srq_resp_v5* %93, %struct.ibv_create_srq_resp_v5** %16, align 8
  %94 = load %struct.ibv_create_srq_resp*, %struct.ibv_create_srq_resp** %14, align 8
  %95 = bitcast %struct.ibv_create_srq_resp* %94 to i8*
  %96 = getelementptr i8, i8* %95, i64 12
  %97 = load %struct.ibv_create_srq_resp_v5*, %struct.ibv_create_srq_resp_v5** %16, align 8
  %98 = bitcast %struct.ibv_create_srq_resp_v5* %97 to i8*
  %99 = getelementptr i8, i8* %98, i64 4
  %100 = load i64, i64* %15, align 8
  %101 = sub i64 %100, 12
  %102 = call i32 @memmove(i8* %96, i8* %99, i64 %101)
  br label %103

103:                                              ; preds = %91, %78
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %103, %60
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_srq*, i64, i32, %struct.ibv_create_srq_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_create_srq*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_srq_resp*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
