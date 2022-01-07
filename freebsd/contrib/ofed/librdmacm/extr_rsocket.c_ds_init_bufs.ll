; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_init_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_init_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_qp = type { i8*, %struct.TYPE_2__*, i32, i32, i8* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_qp*)* @ds_init_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_init_bufs(%struct.ds_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ds_qp*, align 8
  store %struct.ds_qp* %0, %struct.ds_qp** %3, align 8
  %4 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %5 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 4
  %10 = call i32 @calloc(i64 %9, i32 1)
  %11 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %14 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @ERR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %22 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %25 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @rdma_reg_msgs(i32 %23, i32 %28, i64 %33)
  %35 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %36 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %38 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %64

42:                                               ; preds = %20
  %43 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %44 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %47 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %50 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 4
  %55 = call i8* @rdma_reg_msgs(i32 %45, i32 %48, i64 %54)
  %56 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %57 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %59 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %64

63:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %41, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @calloc(i64, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i8* @rdma_reg_msgs(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
