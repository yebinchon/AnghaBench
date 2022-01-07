; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aodv.c_aodv_v6_draft_01_rreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aodv.c_aodv_v6_draft_01_rreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aodv_rreq6_draft_01 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aodv_ext = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c" rreq %u %s%s%s%s%shops %u id 0x%08lx\0A\09dst %s seq %lu src %s seq %lu\00", align 1
@RREQ_JOIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"[J]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RREQ_REPAIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"[R]\00", align 1
@RREQ_GRAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"[G]\00", align 1
@RREQ_DEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"[D]\00", align 1
@RREQ_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"[U] \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" [|rreq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @aodv_v6_draft_01_rreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aodv_v6_draft_01_rreq(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aodv_rreq6_draft_01*, align 8
  %9 = alloca %struct.aodv_rreq6_draft_01, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.aodv_rreq6_draft_01*
  store %struct.aodv_rreq6_draft_01* %11, %struct.aodv_rreq6_draft_01** %8, align 8
  %12 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %13 = bitcast %struct.aodv_rreq6_draft_01* %9 to i8*
  %14 = bitcast %struct.aodv_rreq6_draft_01* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 28, i1 false)
  %15 = call i32 @ND_TCHECK(%struct.aodv_rreq6_draft_01* byval(%struct.aodv_rreq6_draft_01) align 8 %9)
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 28
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %100

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %24 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RREQ_JOIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %32 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RREQ_REPAIR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %40 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RREQ_GRAT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %48 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RREQ_DEST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %56 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RREQ_UNKNOWN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %63 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %64 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %67 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %66, i32 0, i32 5
  %68 = call i64 @EXTRACT_32BITS(i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %71 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %70, i32 0, i32 4
  %72 = call i32 @ip6addr_string(i32* %69, i32* %71)
  %73 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %74 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %73, i32 0, i32 3
  %75 = call i64 @EXTRACT_32BITS(i32* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %78 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %77, i32 0, i32 2
  %79 = call i32 @ip6addr_string(i32* %76, i32* %78)
  %80 = load %struct.aodv_rreq6_draft_01*, %struct.aodv_rreq6_draft_01** %8, align 8
  %81 = getelementptr inbounds %struct.aodv_rreq6_draft_01, %struct.aodv_rreq6_draft_01* %80, i32 0, i32 1
  %82 = call i64 @EXTRACT_32BITS(i32* %81)
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %86, 28
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %90, 4
  br i1 %91, label %92, label %99

92:                                               ; preds = %20
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 28
  %96 = bitcast i32* %95 to %struct.aodv_ext*
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @aodv_extension(i32* %93, %struct.aodv_ext* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %20
  br label %103

100:                                              ; preds = %19
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.8 to i32*))
  br label %103

103:                                              ; preds = %100, %99
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.aodv_rreq6_draft_01* byval(%struct.aodv_rreq6_draft_01) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

declare dso_local i32 @aodv_extension(i32*, %struct.aodv_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
