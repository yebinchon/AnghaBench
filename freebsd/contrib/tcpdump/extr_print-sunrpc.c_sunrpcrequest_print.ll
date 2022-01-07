; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sunrpc.c_sunrpcrequest_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sunrpc.c_sunrpcrequest_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sunrpc_msg = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.ip = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sunrpc\00", align 1
@SUNRPC_PMAPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s.%s > %s.%s: %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@proc2str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" proc #%u\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" [rpcver %u]\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunrpcrequest_print(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sunrpc_msg*, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca %struct.ip6_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [20 x i8], align 16
  %14 = alloca [20 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.sunrpc_msg*
  store %struct.sunrpc_msg* %16, %struct.sunrpc_msg** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %23 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %24 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %23, i32 0, i32 1
  %25 = call i32 @EXTRACT_32BITS(i32* %24)
  %26 = call i32 @snprintf(i8* %22, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %28 = call i32 @strlcpy(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 20)
  br label %38

29:                                               ; preds = %4
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %31 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %32 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %31, i32 0, i32 1
  %33 = call i32 @EXTRACT_32BITS(i32* %32)
  %34 = call i32 @snprintf(i8* %30, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %36 = load i32, i32* @SUNRPC_PMAPPORT, align 4
  %37 = call i32 @snprintf(i8* %35, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %29, %21
  %39 = load i32*, i32** %8, align 8
  %40 = bitcast i32* %39 to %struct.ip*
  %41 = call i32 @IP_V(%struct.ip* %40)
  switch i32 %41, label %78 [
    i32 4, label %42
    i32 6, label %60
  ]

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = bitcast i32* %43 to %struct.ip*
  store %struct.ip* %44, %struct.ip** %10, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load %struct.ip*, %struct.ip** %10, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 1
  %49 = call i32 @ipaddr_string(%struct.TYPE_8__* %46, i32* %48)
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load %struct.ip*, %struct.ip** %10, align 8
  %53 = getelementptr inbounds %struct.ip, %struct.ip* %52, i32 0, i32 0
  %54 = call i32 @ipaddr_string(%struct.TYPE_8__* %51, i32* %53)
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to %struct.TYPE_8__*
  %59 = call i32 @ND_PRINT(%struct.TYPE_8__* %58)
  br label %86

60:                                               ; preds = %38
  %61 = load i32*, i32** %8, align 8
  %62 = bitcast i32* %61 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %62, %struct.ip6_hdr** %11, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = load %struct.ip6_hdr*, %struct.ip6_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %65, i32 0, i32 1
  %67 = call i32 @ip6addr_string(%struct.TYPE_8__* %64, i32* %66)
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = load %struct.ip6_hdr*, %struct.ip6_hdr** %11, align 8
  %71 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %70, i32 0, i32 0
  %72 = call i32 @ip6addr_string(%struct.TYPE_8__* %69, i32* %71)
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.TYPE_8__*
  %77 = call i32 @ND_PRINT(%struct.TYPE_8__* %76)
  br label %86

78:                                               ; preds = %38
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %81 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_8__*
  %85 = call i32 @ND_PRINT(%struct.TYPE_8__* %84)
  br label %86

86:                                               ; preds = %78, %60, %42
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = load i32, i32* @proc2str, align 4
  %89 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %90 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = call i32 @EXTRACT_32BITS(i32* %91)
  %93 = call i32 @tok2str(i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_8__*
  %96 = call i32 @ND_PRINT(%struct.TYPE_8__* %95)
  %97 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %98 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = call i32 @EXTRACT_32BITS(i32* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 2
  br i1 %102, label %103, label %109

103:                                              ; preds = %86
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to %struct.TYPE_8__*
  %108 = call i32 @ND_PRINT(%struct.TYPE_8__* %107)
  br label %109

109:                                              ; preds = %103, %86
  %110 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %111 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = call i32 @EXTRACT_32BITS(i32* %112)
  switch i32 %113, label %145 [
    i32 129, label %114
    i32 128, label %114
    i32 130, label %114
    i32 131, label %114
  ]

114:                                              ; preds = %109, %109, %109, %109
  %115 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %116 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = call i32 @EXTRACT_32BITS(i32* %117)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %114
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @progstr(i32 %125)
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to %struct.TYPE_8__*
  %129 = call i32 @ND_PRINT(%struct.TYPE_8__* %128)
  br label %136

130:                                              ; preds = %114
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_8__*
  %135 = call i32 @ND_PRINT(%struct.TYPE_8__* %134)
  br label %136

136:                                              ; preds = %130, %123
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %9, align 8
  %139 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = call i32 @EXTRACT_32BITS(i32* %140)
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to %struct.TYPE_8__*
  %144 = call i32 @ND_PRINT(%struct.TYPE_8__* %143)
  br label %145

145:                                              ; preds = %109, %136
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @progstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
