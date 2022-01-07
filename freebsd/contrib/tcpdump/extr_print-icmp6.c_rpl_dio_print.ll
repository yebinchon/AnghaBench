; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_dio_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_dio_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nd_rpl_dio = type { i32, i32, i32, i32, i32 }
%struct.rpl_dio_genoption = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c" [dagid:%s,seq:%u,instance:%u,rank:%u,%smop:%s,prf:%u]\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"grounded,\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rpl_mop_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"mop%u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" [|truncated]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @rpl_dio_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpl_dio_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_rpl_dio*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nd_rpl_dio, align 8
  %10 = alloca %struct.rpl_dio_genoption*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.nd_rpl_dio*
  store %struct.nd_rpl_dio* %12, %struct.nd_rpl_dio** %7, align 8
  %13 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %14 = bitcast %struct.nd_rpl_dio* %9 to i8*
  %15 = bitcast %struct.nd_rpl_dio* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 %15, i64 20, i1 false)
  %16 = call i32 @ND_TCHECK(%struct.nd_rpl_dio* byval(%struct.nd_rpl_dio) align 8 %9)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %19 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @ip6addr_string(%struct.TYPE_6__* %17, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %25 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %28 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %31 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %30, i32 0, i32 1
  %32 = call i32 @EXTRACT_16BITS(i32* %31)
  %33 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %34 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @RPL_DIO_GROUNDED(i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* @rpl_mop_values, align 4
  %41 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %42 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RPL_DIO_MOP(i32 %43)
  %45 = call i32 @tok2str(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %47 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RPL_DIO_PRF(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_6__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_6__* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %3
  %58 = load %struct.nd_rpl_dio*, %struct.nd_rpl_dio** %7, align 8
  %59 = getelementptr inbounds %struct.nd_rpl_dio, %struct.nd_rpl_dio* %58, i64 1
  %60 = bitcast %struct.nd_rpl_dio* %59 to %struct.rpl_dio_genoption*
  store %struct.rpl_dio_genoption* %60, %struct.rpl_dio_genoption** %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = load %struct.rpl_dio_genoption*, %struct.rpl_dio_genoption** %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @rpl_dio_printopt(%struct.TYPE_6__* %61, %struct.rpl_dio_genoption* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %3
  br label %69

66:                                               ; No predecessors!
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([14 x i8]* @.str.4 to %struct.TYPE_6__*))
  br label %69

69:                                               ; preds = %66, %65
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.nd_rpl_dio* byval(%struct.nd_rpl_dio) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ip6addr_string(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @RPL_DIO_GROUNDED(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @RPL_DIO_MOP(i32) #1

declare dso_local i32 @RPL_DIO_PRF(i32) #1

declare dso_local i32 @rpl_dio_printopt(%struct.TYPE_6__*, %struct.rpl_dio_genoption*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
