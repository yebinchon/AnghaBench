; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_dao_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_dao_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nd_rpl_dao = type { i32, i32, i32, i32 }
%struct.rpl_dio_genoption = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"<elided>\00", align 1
@ND_RPL_DAO_MIN_LEN = common dso_local global i64 0, align 8
@DAGID_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c" [dagid:%s,seq:%u,instance:%u%s%s,%02x]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",acK\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c",Dagid\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" [|truncated]\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" [|length too short]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i64)* @rpl_dao_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpl_dao_print(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nd_rpl_dao*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rpl_dio_genoption*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.nd_rpl_dao*
  store %struct.nd_rpl_dao* %11, %struct.nd_rpl_dao** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %13 = bitcast %struct.nd_rpl_dao* %12 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 4
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @ND_TCHECK(i64 %15, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @ND_RPL_DAO_MIN_LEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %101

23:                                               ; preds = %3
  %24 = load i64, i64* @ND_RPL_DAO_MIN_LEN, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 %24
  store i32* %26, i32** %5, align 8
  %27 = load i64, i64* @ND_RPL_DAO_MIN_LEN, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %31 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @RPL_DAO_D(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %23
  %36 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %37 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @DAGID_LEN, align 8
  %40 = call i32 @ND_TCHECK2(i32 %38, i64 %39)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @DAGID_LEN, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %101

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %48 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ip6addr_string(%struct.TYPE_6__* %46, i32 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i64, i64* @DAGID_LEN, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  store i32* %53, i32** %5, align 8
  %54 = load i64, i64* @DAGID_LEN, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %45, %23
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %61 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %64 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %67 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @RPL_DAO_K(i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %73 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %74 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @RPL_DAO_D(i32 %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %80 = load %struct.nd_rpl_dao*, %struct.nd_rpl_dao** %7, align 8
  %81 = getelementptr inbounds %struct.nd_rpl_dao, %struct.nd_rpl_dao* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_6__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_6__* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %97

90:                                               ; preds = %57
  %91 = load i32*, i32** %5, align 8
  %92 = bitcast i32* %91 to %struct.rpl_dio_genoption*
  store %struct.rpl_dio_genoption* %92, %struct.rpl_dio_genoption** %9, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %9, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @rpl_dio_printopt(%struct.TYPE_6__* %93, %struct.rpl_dio_genoption* %94, i64 %95)
  br label %97

97:                                               ; preds = %90, %57
  br label %104

98:                                               ; No predecessors!
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([14 x i8]* @.str.5 to %struct.TYPE_6__*))
  br label %104

101:                                              ; preds = %44, %22
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([21 x i8]* @.str.6 to %struct.TYPE_6__*))
  br label %104

104:                                              ; preds = %101, %98, %97
  ret void
}

declare dso_local i32 @ND_TCHECK(i64, i64) #1

declare dso_local i64 @RPL_DAO_D(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i8* @ip6addr_string(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i64 @RPL_DAO_K(i32) #1

declare dso_local i32 @rpl_dio_printopt(%struct.TYPE_6__*, %struct.rpl_dio_genoption*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
