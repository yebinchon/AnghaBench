; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibtracert.c_switch_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibtracert.c_switch_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i8* }

@IB_ATTR_SWITCH_INFO = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@IB_SW_LINEAR_FDB_CAP_F = common dso_local global i32 0, align 4
@IB_SW_LINEAR_FDB_TOP_F = common dso_local global i32 0, align 4
@IB_SW_ENHANCED_PORT0_F = common dso_local global i32 0, align 4
@IB_ATTR_LINEARFORWTBL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"portid %s: forward lid %d to port %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @switch_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_lookup(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @memset(i8* %17, i32 0, i32 8)
  %19 = load i8*, i8** %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @IB_ATTR_SWITCH_INFO, align 4
  %22 = load i32, i32* @timeout, align 4
  %23 = load i32, i32* @srcport, align 4
  %24 = call i32 @smp_query_via(i8* %19, i32* %20, i32 %21, i32 0, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @IB_SW_LINEAR_FDB_CAP_F, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = call i32 @mad_decode_field(i8* %28, i32 %29, i32* %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @IB_SW_LINEAR_FDB_TOP_F, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = call i32 @mad_decode_field(i8* %33, i32 %34, i32* %36)
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @IB_SW_ENHANCED_PORT0_F, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = call i32 @mad_decode_field(i8* %38, i32 %39, i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %27
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %89

55:                                               ; preds = %48, %27
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @memset(i8* %56, i32 0, i32 8)
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @IB_ATTR_LINEARFORWTBL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sdiv i32 %61, 64
  %63 = load i32, i32* @timeout, align 4
  %64 = load i32, i32* @srcport, align 4
  %65 = call i32 @smp_query_via(i8* %58, i32* %59, i32 %60, i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %89

68:                                               ; preds = %55
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @portid2str(i32* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = srem i32 %75, 64
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = srem i32 %84, 64
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %68, %67, %54, %26
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @smp_query_via(i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mad_decode_field(i8*, i32, i32*) #1

declare dso_local i32 @DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @portid2str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
