; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dhcp6.c_dhcp6_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dhcp6.c_dhcp6_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.dhcp6 = type { i64, i32 }
%struct.dhcp6_relay = type { i32, i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"dhcp6\00", align 1
@dh6_msgtype_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"msgtype-%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %s (\00", align 1
@DH6_RELAY_FORW = common dso_local global i64 0, align 8
@DH6_RELAY_REPLY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"xid=%x\00", align 1
@DH6_XIDMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"linkaddr=%s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" peeraddr=%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"[|dhcp6]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dhcp6_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dhcp6*, align 8
  %8 = alloca %struct.dhcp6_relay*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.in6_addr, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([6 x i8]* @.str to %struct.TYPE_6__*))
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to %struct.dhcp6*
  store %struct.dhcp6* %32, %struct.dhcp6** %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = bitcast i32* %33 to %struct.dhcp6_relay*
  store %struct.dhcp6_relay* %34, %struct.dhcp6_relay** %8, align 8
  %35 = load %struct.dhcp6*, %struct.dhcp6** %7, align 8
  %36 = getelementptr inbounds %struct.dhcp6, %struct.dhcp6* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ND_TCHECK(i32 %37)
  %39 = load i32, i32* @dh6_msgtype_str, align 4
  %40 = load %struct.dhcp6*, %struct.dhcp6** %7, align 8
  %41 = getelementptr inbounds %struct.dhcp6, %struct.dhcp6* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @tok2str(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  store i8* %43, i8** %11, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %30
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_6__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_6__* %51)
  br label %123

53:                                               ; preds = %30
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_6__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_6__* %56)
  %58 = load %struct.dhcp6*, %struct.dhcp6** %7, align 8
  %59 = getelementptr inbounds %struct.dhcp6, %struct.dhcp6* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DH6_RELAY_FORW, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %53
  %64 = load %struct.dhcp6*, %struct.dhcp6** %7, align 8
  %65 = getelementptr inbounds %struct.dhcp6, %struct.dhcp6* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DH6_RELAY_REPLY, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = load %struct.dhcp6*, %struct.dhcp6** %7, align 8
  %72 = getelementptr inbounds %struct.dhcp6, %struct.dhcp6* %71, i32 0, i32 1
  %73 = call i32 @EXTRACT_32BITS(i32* %72)
  %74 = load i32, i32* @DH6_XIDMASK, align 4
  %75 = and i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to %struct.TYPE_6__*
  %78 = call i32 @ND_PRINT(%struct.TYPE_6__* %77)
  %79 = load %struct.dhcp6*, %struct.dhcp6** %7, align 8
  %80 = getelementptr inbounds %struct.dhcp6, %struct.dhcp6* %79, i64 1
  %81 = bitcast %struct.dhcp6* %80 to i32*
  store i32* %81, i32** %10, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @dhcp6opt_print(%struct.TYPE_6__* %82, i32* %83, i32* %84)
  br label %117

86:                                               ; preds = %63, %53
  %87 = load %struct.dhcp6_relay*, %struct.dhcp6_relay** %8, align 8
  %88 = getelementptr inbounds %struct.dhcp6_relay, %struct.dhcp6_relay* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ND_TCHECK(i32 %89)
  %91 = load %struct.dhcp6_relay*, %struct.dhcp6_relay** %8, align 8
  %92 = getelementptr inbounds %struct.dhcp6_relay, %struct.dhcp6_relay* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(%struct.in6_addr* %12, i32 %93, i32 4)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = call i32 @ip6addr_string(%struct.TYPE_6__* %96, %struct.in6_addr* %12)
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_6__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_6__* %99)
  %101 = load %struct.dhcp6_relay*, %struct.dhcp6_relay** %8, align 8
  %102 = getelementptr inbounds %struct.dhcp6_relay, %struct.dhcp6_relay* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(%struct.in6_addr* %12, i32 %103, i32 4)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = call i32 @ip6addr_string(%struct.TYPE_6__* %106, %struct.in6_addr* %12)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to %struct.TYPE_6__*
  %110 = call i32 @ND_PRINT(%struct.TYPE_6__* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = load %struct.dhcp6_relay*, %struct.dhcp6_relay** %8, align 8
  %113 = getelementptr inbounds %struct.dhcp6_relay, %struct.dhcp6_relay* %112, i64 1
  %114 = bitcast %struct.dhcp6_relay* %113 to i32*
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @dhcp6opt_print(%struct.TYPE_6__* %111, i32* %114, i32* %115)
  br label %117

117:                                              ; preds = %86, %69
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_6__*))
  br label %123

120:                                              ; No predecessors!
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([9 x i8]* @.str.8 to %struct.TYPE_6__*))
  br label %123

123:                                              ; preds = %120, %117, %48
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i8* @tok2str(i32, i8*, i64) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @dhcp6opt_print(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_6__*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
