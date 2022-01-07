; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_clear_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_clear_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clear_errors = common dso_local global i64 0, align 8
@IB_PM_PC_XMIT_WAIT_SUP = common dso_local global i32 0, align 4
@clear_counts = common dso_local global i64 0, align 8
@ibd_timeout = common dso_local global i32 0, align 4
@IB_GSI_PORT_COUNTERS = common dso_local global i32 0, align 4
@ibmad_port = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to reset errors %s port %d\0A\00", align 1
@details = common dso_local global i64 0, align 8
@IB_GSI_PORT_XMIT_DISCARD_DETAILS = common dso_local global i32 0, align 4
@IB_GSI_PORT_RCV_ERROR_DETAILS = common dso_local global i32 0, align 4
@IB_PM_EXT_WIDTH_SUPPORTED = common dso_local global i32 0, align 4
@IB_PM_EXT_WIDTH_NOIETF_SUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to reset extended data counters %s, %s port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @clear_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_port(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i32], align 16
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = bitcast [1024 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 4096, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @clear_errors, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32, i32* %10, align 4
  %16 = or i32 %15, 4095
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IB_PM_PC_XMIT_WAIT_SUP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, 65536
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %21, %14
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i64, i64* @clear_counts, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, 61440
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ibd_timeout, align 4
  %40 = load i32, i32* @IB_GSI_PORT_COUNTERS, align 4
  %41 = load i32, i32* @ibmad_port, align 4
  %42 = call i32 @performance_reset_via(i32* %35, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i64, i64* @clear_errors, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = load i64, i64* @details, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %58 = call i32 @memset(i32* %57, i32 0, i32 1024)
  %59 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ibd_timeout, align 4
  %63 = load i32, i32* @IB_GSI_PORT_XMIT_DISCARD_DETAILS, align 4
  %64 = load i32, i32* @ibmad_port, align 4
  %65 = call i32 @performance_reset_via(i32* %59, i32* %60, i32 %61, i32 15, i32 %62, i32 %63, i32 %64)
  %66 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %67 = call i32 @memset(i32* %66, i32 0, i32 1024)
  %68 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ibd_timeout, align 4
  %72 = load i32, i32* @IB_GSI_PORT_RCV_ERROR_DETAILS, align 4
  %73 = load i32, i32* @ibmad_port, align 4
  %74 = call i32 @performance_reset_via(i32* %68, i32* %69, i32 %70, i32 63, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %56, %53, %50
  %76 = load i64, i64* @clear_counts, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @IB_PM_EXT_WIDTH_SUPPORTED, align 4
  %81 = load i32, i32* @IB_PM_EXT_WIDTH_NOIETF_SUP, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @IB_PM_EXT_WIDTH_SUPPORTED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 255, i32* %10, align 4
  br label %92

91:                                               ; preds = %85
  store i32 15, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = getelementptr inbounds [1024 x i32], [1024 x i32]* %9, i64 0, i64 0
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @ibd_timeout, align 4
  %98 = load i32, i32* @ibmad_port, align 4
  %99 = call i32 @reset_pc_ext(i32* %93, i32* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = call i8* @portid2str(i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %103, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %92
  br label %109

109:                                              ; preds = %108, %78, %75
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @performance_reset_via(i32*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @reset_pc_ext(i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i8* @portid2str(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
