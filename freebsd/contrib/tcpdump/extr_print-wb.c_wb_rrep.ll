; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_rrep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-wb.c_wb_rrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.pkt_rrep = type { i32, %struct.pkt_dop }
%struct.pkt_dop = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" wb-rrep:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" for %s %s:%u<%u:%u>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.pkt_rrep*, i32)* @wb_rrep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_rrep(%struct.TYPE_8__* %0, %struct.pkt_rrep* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.pkt_rrep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkt_dop*, align 8
  %9 = alloca %struct.pkt_rrep, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.pkt_rrep* %1, %struct.pkt_rrep** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pkt_rrep*, %struct.pkt_rrep** %6, align 8
  %11 = getelementptr inbounds %struct.pkt_rrep, %struct.pkt_rrep* %10, i32 0, i32 1
  store %struct.pkt_dop* %11, %struct.pkt_dop** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([10 x i8]* @.str to %struct.TYPE_8__*))
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 20
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.pkt_rrep*, %struct.pkt_rrep** %6, align 8
  %19 = bitcast %struct.pkt_rrep* %9 to i8*
  %20 = bitcast %struct.pkt_rrep* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 %20, i64 20, i1 false)
  %21 = call i32 @ND_TTEST(%struct.pkt_rrep* byval(%struct.pkt_rrep) align 8 %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %67

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 20
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load %struct.pkt_rrep*, %struct.pkt_rrep** %6, align 8
  %32 = getelementptr inbounds %struct.pkt_rrep, %struct.pkt_rrep* %31, i32 0, i32 0
  %33 = call i32 @ipaddr_string(%struct.TYPE_8__* %30, i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %36 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @ipaddr_string(%struct.TYPE_8__* %34, i32* %37)
  %39 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %40 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @EXTRACT_32BITS(i32* %41)
  %43 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %44 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %43, i32 0, i32 1
  %45 = call i32 @EXTRACT_32BITS(i32* %44)
  %46 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %47 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %46, i32 0, i32 0
  %48 = call i32 @EXTRACT_32BITS(i32* %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  %51 = call i32 @ND_PRINT(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %24
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %59 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %60 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %59, i32 0, i32 1
  %61 = call i32 @EXTRACT_32BITS(i32* %60)
  %62 = load %struct.pkt_dop*, %struct.pkt_dop** %8, align 8
  %63 = getelementptr inbounds %struct.pkt_dop, %struct.pkt_dop* %62, i32 0, i32 0
  %64 = call i32 @EXTRACT_32BITS(i32* %63)
  %65 = call i32 @wb_dops(%struct.TYPE_8__* %57, %struct.pkt_dop* %58, i32 %61, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %56, %23
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @ND_TTEST(%struct.pkt_rrep* byval(%struct.pkt_rrep) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipaddr_string(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @wb_dops(%struct.TYPE_8__*, %struct.pkt_dop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
