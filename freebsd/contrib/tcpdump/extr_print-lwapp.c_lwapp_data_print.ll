; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwapp.c_lwapp_data_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwapp.c_lwapp_data_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.lwapp_transport_header = type { i32, i32, i32 }

@LWAPP_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"LWAPP version %u packet not supported\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LWAPPv%u, %s frame, Flags [%s], length %u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@lwapp_header_bits_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"LWAPPv%u, %s frame, Radio-id  %u, Flags [%s], Frag-id  %u, length %u\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0A\09\09 packet exceeded snapshot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwapp_data_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lwapp_transport_header*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ND_TCHECK2(i32 %13, i32 6)
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.lwapp_transport_header*
  store %struct.lwapp_transport_header* %16, %struct.lwapp_transport_header** %7, align 8
  %17 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %18 = bitcast { i64, i32 }* %10 to i8*
  %19 = bitcast %struct.lwapp_transport_header* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ND_TCHECK(i64 %21, i32 %23)
  %25 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %26 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @LWAPP_EXTRACT_VERSION(i32 %27)
  %29 = load i64, i64* @LWAPP_VERSION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %34 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @LWAPP_EXTRACT_VERSION(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_5__*
  %38 = call i32 @ND_PRINT(%struct.TYPE_5__* %37)
  br label %114

39:                                               ; preds = %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %47 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @LWAPP_EXTRACT_VERSION(i32 %48)
  %50 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %51 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @LWAPP_EXTRACT_CONTROL_BIT(i32 %52)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %57 = load i32, i32* @lwapp_header_bits_values, align 4
  %58 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %59 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 7
  %62 = call i32 @bittok2str(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_5__*
  %66 = call i32 @ND_PRINT(%struct.TYPE_5__* %65)
  br label %114

67:                                               ; preds = %39
  %68 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %69 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @EXTRACT_16BITS(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %74 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @LWAPP_EXTRACT_VERSION(i32 %75)
  %77 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %78 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @LWAPP_EXTRACT_CONTROL_BIT(i32 %79)
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %84 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %85 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @LWAPP_EXTRACT_RID(i32 %86)
  %88 = load i32, i32* @lwapp_header_bits_values, align 4
  %89 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %90 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 7
  %93 = call i32 @bittok2str(i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.lwapp_transport_header*, %struct.lwapp_transport_header** %7, align 8
  %95 = getelementptr inbounds %struct.lwapp_transport_header, %struct.lwapp_transport_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_5__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_5__* %99)
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  store i32* %102, i32** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, 12
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @print_unknown_data(%struct.TYPE_5__* %107, i32* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %114

111:                                              ; No predecessors!
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([29 x i8]* @.str.7 to %struct.TYPE_5__*))
  br label %114

114:                                              ; preds = %111, %67, %44, %31
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @LWAPP_EXTRACT_VERSION(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i64 @LWAPP_EXTRACT_CONTROL_BIT(i32) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32) #1

declare dso_local i32 @LWAPP_EXTRACT_RID(i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_5__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
