; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_print_errors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_print_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@lid2sl_table = common dso_local global i32* null, align 8
@ibd_timeout = common dso_local global i32 0, align 4
@IB_GSI_PORT_COUNTERS = common dso_local global i32 0, align 4
@ibmad_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"IB_GSI_PORT_COUNTERS query failed on %s, %s port %d\00", align 1
@summary = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@IB_PM_EXT_WIDTH_SUPPORTED = common dso_local global i32 0, align 4
@IB_PM_EXT_WIDTH_NOIETF_SUP = common dso_local global i32 0, align 4
@IB_GSI_PORT_COUNTERS_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"IB_GSI_PORT_COUNTERS_EXT query failed on %s, %s port %d\00", align 1
@IB_PM_PC_XMIT_WAIT_SUP = common dso_local global i32 0, align 4
@IB_PC_XMT_WAIT_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i32*, i32, i32*)* @print_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_errors(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [1024 x i32], align 16
  %15 = alloca [1024 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %16, align 8
  %18 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 1024)
  %20 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %21 = call i32 @memset(i32* %20, i32 0, i32 1024)
  %22 = load i32*, i32** @lid2sl_table, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ibd_timeout, align 4
  %34 = load i32, i32* @IB_GSI_PORT_COUNTERS, align 4
  %35 = load i32, i32* @ibmad_port, align 4
  %36 = call i32 @pma_query_via(i32* %30, %struct.TYPE_7__* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %6
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = call i32 @portid2str(%struct.TYPE_7__* %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @IBWARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %41, i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summary, i32 0, i32 0), align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summary, i32 0, i32 0), align 4
  store i32 0, i32* %7, align 4
  br label %91

46:                                               ; preds = %6
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IB_PM_EXT_WIDTH_SUPPORTED, align 4
  %49 = load i32, i32* @IB_PM_EXT_WIDTH_NOIETF_SUP, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ibd_timeout, align 4
  %58 = load i32, i32* @IB_GSI_PORT_COUNTERS_EXT, align 4
  %59 = load i32, i32* @ibmad_port, align 4
  %60 = call i32 @pma_query_via(i32* %54, %struct.TYPE_7__* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = call i32 @portid2str(%struct.TYPE_7__* %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @IBWARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %65, i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summary, i32 0, i32 0), align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summary, i32 0, i32 0), align 4
  store i32 0, i32* %7, align 4
  br label %91

70:                                               ; preds = %53
  %71 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 0
  store i32* %71, i32** %16, align 8
  br label %72

72:                                               ; preds = %70, %46
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @IB_PM_PC_XMIT_WAIT_SUP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  store i32 0, i32* %17, align 4
  %78 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %79 = load i32, i32* @IB_PC_XMT_WAIT_F, align 4
  %80 = call i32 @mad_encode_field(i32* %78, i32 %79, i32* %17)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @print_results(%struct.TYPE_7__* %82, i8* %83, i32* %84, i32* %85, i32 %86, i32* %87, i32* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %81, %62, %38
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pma_query_via(i32*, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @IBWARN(i8*, i8*, i32, i32) #1

declare dso_local i32 @portid2str(%struct.TYPE_7__*) #1

declare dso_local i32 @mad_encode_field(i32*, i32, i32*) #1

declare dso_local i32 @print_results(%struct.TYPE_7__*, i8*, i32*, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
