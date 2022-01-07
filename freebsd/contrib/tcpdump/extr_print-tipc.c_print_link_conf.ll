; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tipc.c_print_link_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tipc.c_print_link_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.link_conf_tipc_pkthdr = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [96 x i8] c"TIPC v%u.0 %u.%u.%u > %u.%u.%u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s\00", align 1
@tipcuser_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@tipc_linkconf_mtype_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\0A\09NodeSignature %u, network_id %u, media_id %u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.link_conf_tipc_pkthdr*)* @print_link_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_link_conf(%struct.TYPE_4__* %0, %struct.link_conf_tipc_pkthdr* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.link_conf_tipc_pkthdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.link_conf_tipc_pkthdr* %1, %struct.link_conf_tipc_pkthdr** %4, align 8
  %17 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %18 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK(i32 %19)
  %21 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %22 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %21, i32 0, i32 5
  %23 = call i8* @EXTRACT_32BITS(i32* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @TIPC_USER(i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @TIPC_HSIZE(i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @TIPC_MSIZE(i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %31 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %30, i32 0, i32 4
  %32 = call i8* @EXTRACT_32BITS(i32* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @TIPC_MTYPE(i8* %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %36 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %35, i32 0, i32 3
  %37 = call i8* @EXTRACT_32BITS(i32* %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %40 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %39, i32 0, i32 2
  %41 = call i8* @EXTRACT_32BITS(i32* %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @TIPC_VER(i8* %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @TIPC_ZONE(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @TIPC_CLUSTER(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @TIPC_NODE(i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @TIPC_ZONE(i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @TIPC_CLUSTER(i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @TIPC_NODE(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @tipcuser_values, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @tok2str(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @tipc_linkconf_mtype_values, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @tok2str(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.TYPE_4__*
  %69 = call i32 @ND_PRINT(%struct.TYPE_4__* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %2
  %75 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %76 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ND_TCHECK(i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @TIPC_NODE_SIG(i8* %79)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %82 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %81, i32 0, i32 1
  %83 = call i8* @EXTRACT_32BITS(i32* %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %15, align 4
  %85 = load %struct.link_conf_tipc_pkthdr*, %struct.link_conf_tipc_pkthdr** %4, align 8
  %86 = getelementptr inbounds %struct.link_conf_tipc_pkthdr, %struct.link_conf_tipc_pkthdr* %85, i32 0, i32 0
  %87 = call i8* @EXTRACT_32BITS(i32* %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @TIPC_MEDIA_ID(i8* %88)
  store i32 %89, i32* %16, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_4__*
  %96 = call i32 @ND_PRINT(%struct.TYPE_4__* %95)
  br label %97

97:                                               ; preds = %74, %2
  br label %104

98:                                               ; No predecessors!
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = load i32, i32* @tstr, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to %struct.TYPE_4__*
  %103 = call i32 @ND_PRINT(%struct.TYPE_4__* %102)
  br label %104

104:                                              ; preds = %98, %97
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @TIPC_USER(i8*) #1

declare dso_local i32 @TIPC_HSIZE(i8*) #1

declare dso_local i32 @TIPC_MSIZE(i8*) #1

declare dso_local i32 @TIPC_MTYPE(i8*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @TIPC_VER(i8*) #1

declare dso_local i32 @TIPC_ZONE(i32) #1

declare dso_local i32 @TIPC_CLUSTER(i32) #1

declare dso_local i32 @TIPC_NODE(i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @TIPC_NODE_SIG(i8*) #1

declare dso_local i32 @TIPC_MEDIA_ID(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
