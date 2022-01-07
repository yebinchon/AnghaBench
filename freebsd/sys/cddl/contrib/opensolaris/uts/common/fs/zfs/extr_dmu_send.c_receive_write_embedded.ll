; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_write_embedded.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_write_embedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i32, i32, i32 }
%struct.drr_write_embedded = type { i64, i64, i64, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@BPE_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@NUM_BP_EMBEDDED_TYPES = common dso_local global i64 0, align 8
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i64 0, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receive_writer_arg*, %struct.drr_write_embedded*, i8*)* @receive_write_embedded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_write_embedded(%struct.receive_writer_arg* %0, %struct.drr_write_embedded* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.receive_writer_arg*, align 8
  %6 = alloca %struct.drr_write_embedded*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.receive_writer_arg* %0, %struct.receive_writer_arg** %5, align 8
  store %struct.drr_write_embedded* %1, %struct.drr_write_embedded** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %11 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %14 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %18 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %127

23:                                               ; preds = %3
  %24 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %25 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BPE_PAYLOAD_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %127

31:                                               ; preds = %23
  %32 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %33 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NUM_BP_EMBEDDED_TYPES, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %127

39:                                               ; preds = %31
  %40 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %41 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZIO_COMPRESS_FUNCTIONS, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %127

47:                                               ; preds = %39
  %48 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %49 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %52 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %57 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %60 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %63 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @dmu_tx_create(i32 %64)
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %68 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %71 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %74 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @dmu_tx_hold_write(i32* %66, i32 %69, i64 %72, i64 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @TXG_WAIT, align 4
  %79 = call i32 @dmu_tx_assign(i32* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %61
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @dmu_tx_abort(i32* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %127

86:                                               ; preds = %61
  %87 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %88 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %91 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %94 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %98 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %101 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %104 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %107 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %110 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %113 = xor i32 %111, %112
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @dmu_write_embedded(i32 %89, i32 %92, i64 %95, i8* %96, i64 %99, i64 %102, i32 %105, i64 %108, i32 %113, i32* %114)
  %116 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %117 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %118 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.drr_write_embedded*, %struct.drr_write_embedded** %6, align 8
  %121 = getelementptr inbounds %struct.drr_write_embedded, %struct.drr_write_embedded* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @save_resume_state(%struct.receive_writer_arg* %116, i32 %119, i64 %122, i32* %123)
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @dmu_tx_commit(i32* %125)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %86, %82, %45, %37, %29, %21
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i64, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_write_embedded(i32, i32, i64, i8*, i64, i64, i32, i64, i32, i32*) #1

declare dso_local i32 @save_resume_state(%struct.receive_writer_arg*, i32, i64, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
