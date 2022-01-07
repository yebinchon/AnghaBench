; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_send_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibcm/extr_cm.c_cm_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucm_info = type { i32, i64, i64, i8*, i8*, i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, i32, i32, i8*, i8*, i8*, i8*)* @cm_send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_send_status(%struct.ib_cm_id* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_cm_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ib_ucm_info*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i8*, i8** %17, align 8
  %21 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %19, align 4
  %24 = call i32 @CM_CREATE_MSG_CMD(i8* %20, %struct.ib_ucm_info* %21, i32 %22, i32 %23)
  %25 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %26 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %29 = getelementptr inbounds %struct.ib_ucm_info, %struct.ib_ucm_info* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %32 = getelementptr inbounds %struct.ib_ucm_info, %struct.ib_ucm_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %7
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %14, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %42 = getelementptr inbounds %struct.ib_ucm_info, %struct.ib_ucm_info* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %45 = getelementptr inbounds %struct.ib_ucm_info, %struct.ib_ucm_info* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %38, %35, %7
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %56 = getelementptr inbounds %struct.ib_ucm_info, %struct.ib_ucm_info* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.ib_ucm_info*, %struct.ib_ucm_info** %16, align 8
  %59 = getelementptr inbounds %struct.ib_ucm_info, %struct.ib_ucm_info* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %52, %49, %46
  %61 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %62 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %17, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @write(i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = load i32, i32* %18, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @ENODATA, align 4
  %77 = call i32 @ERR(i32 %76)
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ -1, %78 ]
  store i32 %80, i32* %8, align 4
  br label %82

81:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %79
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @CM_CREATE_MSG_CMD(i8*, %struct.ib_ucm_info*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
