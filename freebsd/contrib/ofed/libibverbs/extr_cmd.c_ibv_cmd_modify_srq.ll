; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_modify_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_srq_attr = type { i32, i32 }
%struct.ibv_modify_srq = type { i32, i32, i32, i32 }

@abi_ver = common dso_local global i32 0, align 4
@MODIFY_SRQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_modify_srq(%struct.ibv_srq* %0, %struct.ibv_srq_attr* %1, i32 %2, %struct.ibv_modify_srq* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_srq*, align 8
  %8 = alloca %struct.ibv_srq_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibv_modify_srq*, align 8
  %11 = alloca i64, align 8
  store %struct.ibv_srq* %0, %struct.ibv_srq** %7, align 8
  store %struct.ibv_srq_attr* %1, %struct.ibv_srq_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ibv_modify_srq* %3, %struct.ibv_modify_srq** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* @abi_ver, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load %struct.ibv_srq*, %struct.ibv_srq** %7, align 8
  %16 = load %struct.ibv_srq_attr*, %struct.ibv_srq_attr** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @ibv_cmd_modify_srq_v3(%struct.ibv_srq* %15, %struct.ibv_srq_attr* %16, i32 %17, %struct.ibv_modify_srq* %18, i64 %19)
  store i32 %20, i32* %6, align 4
  br label %57

21:                                               ; preds = %5
  %22 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* @MODIFY_SRQ, align 4
  %25 = call i32 @IBV_INIT_CMD(%struct.ibv_modify_srq* %22, i64 %23, i32 %24)
  %26 = load %struct.ibv_srq*, %struct.ibv_srq** %7, align 8
  %27 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %30 = getelementptr inbounds %struct.ibv_modify_srq, %struct.ibv_modify_srq* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %33 = getelementptr inbounds %struct.ibv_modify_srq, %struct.ibv_modify_srq* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ibv_srq_attr*, %struct.ibv_srq_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ibv_srq_attr, %struct.ibv_srq_attr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %38 = getelementptr inbounds %struct.ibv_modify_srq, %struct.ibv_modify_srq* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ibv_srq_attr*, %struct.ibv_srq_attr** %8, align 8
  %40 = getelementptr inbounds %struct.ibv_srq_attr, %struct.ibv_srq_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %43 = getelementptr inbounds %struct.ibv_modify_srq, %struct.ibv_modify_srq* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ibv_srq*, %struct.ibv_srq** %7, align 8
  %45 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ibv_modify_srq*, %struct.ibv_modify_srq** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @write(i32 %48, %struct.ibv_modify_srq* %49, i64 %50)
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %21
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %54, %14
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @ibv_cmd_modify_srq_v3(%struct.ibv_srq*, %struct.ibv_srq_attr*, i32, %struct.ibv_modify_srq*, i64) #1

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_modify_srq*, i64, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_modify_srq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
