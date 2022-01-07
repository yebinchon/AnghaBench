; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_qp_attr = type { i32 }
%struct.ibv_modify_qp = type { i32 }

@IBV_QP_DEST_QPN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MODIFY_QP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_modify_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_modify_qp* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_qp*, align 8
  %8 = alloca %struct.ibv_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibv_modify_qp*, align 8
  %11 = alloca i64, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %7, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ibv_modify_qp* %3, %struct.ibv_modify_qp** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @IBV_QP_DEST_QPN, align 4
  %14 = shl i32 %13, 1
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load %struct.ibv_modify_qp*, %struct.ibv_modify_qp** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* @MODIFY_QP, align 4
  %25 = call i32 @IBV_INIT_CMD(%struct.ibv_modify_qp* %22, i64 %23, i32 %24)
  %26 = load %struct.ibv_qp*, %struct.ibv_qp** %7, align 8
  %27 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.ibv_modify_qp*, %struct.ibv_modify_qp** %10, align 8
  %30 = getelementptr inbounds %struct.ibv_modify_qp, %struct.ibv_modify_qp* %29, i32 0, i32 0
  %31 = call i32 @copy_modify_qp_fields(%struct.ibv_qp* %26, %struct.ibv_qp_attr* %27, i32 %28, i32* %30)
  %32 = load %struct.ibv_qp*, %struct.ibv_qp** %7, align 8
  %33 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibv_modify_qp*, %struct.ibv_modify_qp** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @write(i32 %36, %struct.ibv_modify_qp* %37, i64 %38)
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = load i32, i32* @errno, align 4
  store i32 %43, i32* %6, align 4
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %42, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @IBV_INIT_CMD(%struct.ibv_modify_qp*, i64, i32) #1

declare dso_local i32 @copy_modify_qp_fields(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, i32*) #1

declare dso_local i64 @write(i32, %struct.ibv_modify_qp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
