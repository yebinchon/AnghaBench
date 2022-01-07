; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_send_private_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_send_private_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucm_private_data = type { i64, i64, i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, i32, i8*, i64)* @cm_send_private_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_send_private_data(%struct.ib_cm_id* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ib_ucm_private_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load %struct.ib_ucm_private_data*, %struct.ib_ucm_private_data** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @CM_CREATE_MSG_CMD(i8* %14, %struct.ib_ucm_private_data* %15, i32 %16, i32 %17)
  %19 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %20 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ib_ucm_private_data*, %struct.ib_ucm_private_data** %10, align 8
  %23 = getelementptr inbounds %struct.ib_ucm_private_data, %struct.ib_ucm_private_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.ib_ucm_private_data*, %struct.ib_ucm_private_data** %10, align 8
  %33 = getelementptr inbounds %struct.ib_ucm_private_data, %struct.ib_ucm_private_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.ib_ucm_private_data*, %struct.ib_ucm_private_data** %10, align 8
  %36 = getelementptr inbounds %struct.ib_ucm_private_data, %struct.ib_ucm_private_data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %26, %4
  %38 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %39 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @write(i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ENODATA, align 4
  %54 = call i32 @ERR(i32 %53)
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ -1, %55 ]
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %56
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_private_data*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
