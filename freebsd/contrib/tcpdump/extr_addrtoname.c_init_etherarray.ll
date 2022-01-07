; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_etherarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_etherarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etherlist = type { i32*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*)* }
%struct.enamemem = type { i32* }
%struct.pcap_etherent = type { i8*, i64 }

@PCAP_ETHERS_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"init_etherarray: strdup(ep->addr)\00", align 1
@etherlist = common dso_local global %struct.etherlist* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @init_etherarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_etherarray(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.etherlist*, align 8
  %4 = alloca %struct.enamemem*, align 8
  %5 = alloca %struct.pcap_etherent*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @PCAP_ETHERS_FILE, align 4
  %8 = call i32* @fopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %39, %11
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.pcap_etherent* @pcap_next_etherent(i32* %13)
  store %struct.pcap_etherent* %14, %struct.pcap_etherent** %5, align 8
  %15 = icmp ne %struct.pcap_etherent* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = load %struct.pcap_etherent*, %struct.pcap_etherent** %5, align 8
  %19 = getelementptr inbounds %struct.pcap_etherent, %struct.pcap_etherent* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.enamemem* @lookup_emem(%struct.TYPE_6__* %17, i64 %20)
  store %struct.enamemem* %21, %struct.enamemem** %4, align 8
  %22 = load %struct.pcap_etherent*, %struct.pcap_etherent** %5, align 8
  %23 = getelementptr inbounds %struct.pcap_etherent, %struct.pcap_etherent* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.enamemem*, %struct.enamemem** %4, align 8
  %28 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.enamemem*, %struct.enamemem** %4, align 8
  %30 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %16
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = call i32 %36(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %16
  br label %12

40:                                               ; preds = %12
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %43

43:                                               ; preds = %40, %1
  %44 = load %struct.etherlist*, %struct.etherlist** @etherlist, align 8
  store %struct.etherlist* %44, %struct.etherlist** %3, align 8
  br label %45

45:                                               ; preds = %67, %43
  %46 = load %struct.etherlist*, %struct.etherlist** %3, align 8
  %47 = getelementptr inbounds %struct.etherlist, %struct.etherlist* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = load %struct.etherlist*, %struct.etherlist** %3, align 8
  %53 = getelementptr inbounds %struct.etherlist, %struct.etherlist* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.enamemem* @lookup_emem(%struct.TYPE_6__* %51, i64 %54)
  store %struct.enamemem* %55, %struct.enamemem** %4, align 8
  %56 = load %struct.enamemem*, %struct.enamemem** %4, align 8
  %57 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %67

61:                                               ; preds = %50
  %62 = load %struct.etherlist*, %struct.etherlist** %3, align 8
  %63 = getelementptr inbounds %struct.etherlist, %struct.etherlist* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.enamemem*, %struct.enamemem** %4, align 8
  %66 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %61, %60
  %68 = load %struct.etherlist*, %struct.etherlist** %3, align 8
  %69 = getelementptr inbounds %struct.etherlist, %struct.etherlist* %68, i32 1
  store %struct.etherlist* %69, %struct.etherlist** %3, align 8
  br label %45

70:                                               ; preds = %45
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local %struct.pcap_etherent* @pcap_next_etherent(i32*) #1

declare dso_local %struct.enamemem* @lookup_emem(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
