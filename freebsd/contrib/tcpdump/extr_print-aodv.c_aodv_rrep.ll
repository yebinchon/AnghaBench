; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aodv.c_aodv_rrep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-aodv.c_aodv_rrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aodv_rrep = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.aodv_ext = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c" rrep %u %s%sprefix %u hops %u\0A\09dst %s dseq %lu src %s %lu ms\00", align 1
@RREP_REPAIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"[R]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RREP_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"[A] \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@RREP_PREFIX_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" [|rreq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @aodv_rrep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aodv_rrep(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aodv_rrep*, align 8
  %9 = alloca %struct.aodv_rrep, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.aodv_rrep*
  store %struct.aodv_rrep* %11, %struct.aodv_rrep** %8, align 8
  %12 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %13 = bitcast %struct.aodv_rrep* %9 to i8*
  %14 = bitcast %struct.aodv_rrep* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 28, i1 false)
  %15 = call i32 @ND_TCHECK(%struct.aodv_rrep* byval(%struct.aodv_rrep) align 8 %9)
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 28
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %78

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %24 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RREP_REPAIR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %32 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RREP_ACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %39 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %40 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RREP_PREFIX_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %45 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %49 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %48, i32 0, i32 5
  %50 = call i32 @ipaddr_string(i32* %47, i32* %49)
  %51 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %52 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %51, i32 0, i32 4
  %53 = call i64 @EXTRACT_32BITS(i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %56 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %55, i32 0, i32 3
  %57 = call i32 @ipaddr_string(i32* %54, i32* %56)
  %58 = load %struct.aodv_rrep*, %struct.aodv_rrep** %8, align 8
  %59 = getelementptr inbounds %struct.aodv_rrep, %struct.aodv_rrep* %58, i32 0, i32 2
  %60 = call i64 @EXTRACT_32BITS(i32* %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ND_PRINT(i32* %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 28
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp uge i64 %68, 4
  br i1 %69, label %70, label %77

70:                                               ; preds = %20
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 28
  %74 = bitcast i32* %73 to %struct.aodv_ext*
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @aodv_extension(i32* %71, %struct.aodv_ext* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %20
  br label %81

78:                                               ; preds = %19
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.5 to i32*))
  br label %81

81:                                               ; preds = %78, %77
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.aodv_rrep* byval(%struct.aodv_rrep) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @aodv_extension(i32*, %struct.aodv_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
