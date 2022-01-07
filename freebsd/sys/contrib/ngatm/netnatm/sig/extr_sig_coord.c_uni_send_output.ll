; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_uni_send_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_uni_send_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_all = type { i32 }
%struct.uni = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.uni*, i32, i32, %struct.uni_msg*)* }
%struct.uni_msg = type { i32 }

@CU_STAT0 = common dso_local global i64 0, align 8
@CU_STAT2 = common dso_local global i64 0, align 8
@UNI_FAC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"uni_encode failed: %08x\00", align 1
@CU_STAT1 = common dso_local global i64 0, align 8
@SIGO_DATA = common dso_local global i32 0, align 4
@SAAL_DATA_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_send_output(%struct.uni_all* %0, %struct.uni* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uni_all*, align 8
  %5 = alloca %struct.uni*, align 8
  %6 = alloca %struct.uni_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.uni_all* %0, %struct.uni_all** %4, align 8
  store %struct.uni* %1, %struct.uni** %5, align 8
  %8 = load %struct.uni*, %struct.uni** %5, align 8
  %9 = getelementptr inbounds %struct.uni, %struct.uni* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CU_STAT0, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.uni*, %struct.uni** %5, align 8
  %15 = getelementptr inbounds %struct.uni, %struct.uni* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CU_STAT2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %13
  %21 = call %struct.uni_msg* @uni_msg_alloc(i32 1024)
  store %struct.uni_msg* %21, %struct.uni_msg** %6, align 8
  %22 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %23 = load %struct.uni_all*, %struct.uni_all** %4, align 8
  %24 = load %struct.uni*, %struct.uni** %5, align 8
  %25 = getelementptr inbounds %struct.uni, %struct.uni* %24, i32 0, i32 3
  %26 = call i32 @uni_encode(%struct.uni_msg* %22, %struct.uni_all* %23, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.uni*, %struct.uni** %5, align 8
  %30 = load i32, i32* @UNI_FAC_ERR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @VERBOSE0(%struct.uni* %29, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %34 = call i32 @uni_msg_destroy(%struct.uni_msg* %33)
  store i32 -1, i32* %3, align 4
  br label %60

35:                                               ; preds = %20
  %36 = load %struct.uni*, %struct.uni** %5, align 8
  %37 = getelementptr inbounds %struct.uni, %struct.uni* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CU_STAT1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.uni*, %struct.uni** %5, align 8
  %43 = load i32, i32* @SIGO_DATA, align 4
  %44 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %45 = call i32 @uni_delenq_coord(%struct.uni* %42, i32 %43, i32 0, %struct.uni_msg* %44)
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.uni*, %struct.uni** %5, align 8
  %48 = getelementptr inbounds %struct.uni, %struct.uni* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.uni*, i32, i32, %struct.uni_msg*)*, i32 (%struct.uni*, i32, i32, %struct.uni_msg*)** %50, align 8
  %52 = load %struct.uni*, %struct.uni** %5, align 8
  %53 = load %struct.uni*, %struct.uni** %5, align 8
  %54 = getelementptr inbounds %struct.uni, %struct.uni* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SAAL_DATA_request, align 4
  %57 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %58 = call i32 %51(%struct.uni* %52, i32 %55, i32 %56, %struct.uni_msg* %57)
  br label %59

59:                                               ; preds = %46, %41
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %28, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.uni_msg* @uni_msg_alloc(i32) #1

declare dso_local i32 @uni_encode(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @VERBOSE0(%struct.uni*, i32, i8*, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @uni_delenq_coord(%struct.uni*, i32, i32, %struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
