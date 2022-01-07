; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-m3ua.c_m3ua_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-m3ua.c_m3ua_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tok = type { i32 }
%struct.m3ua_common_header = type { i64, i64, i64, i32 }

@M3UA_REL_1_0 = common dso_local global i64 0, align 8
@M3UA_MSGC_MGMT = common dso_local global i64 0, align 8
@MgmtMessages = common dso_local global %struct.tok* null, align 8
@M3UA_MSGC_TRANSFER = common dso_local global i64 0, align 8
@TransferMessages = common dso_local global %struct.tok* null, align 8
@M3UA_MSGC_SSNM = common dso_local global i64 0, align 8
@SS7Messages = common dso_local global %struct.tok* null, align 8
@M3UA_MSGC_ASPSM = common dso_local global i64 0, align 8
@ASPStateMessages = common dso_local global %struct.tok* null, align 8
@M3UA_MSGC_ASPTM = common dso_local global i64 0, align 8
@ASPTrafficMessages = common dso_local global %struct.tok* null, align 8
@M3UA_MSGC_RKM = common dso_local global i64 0, align 8
@RoutingKeyMgmtMessages = common dso_local global %struct.tok* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"\0A\09\09%s\00", align 1
@MessageClasses = common dso_local global %struct.tok* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown message class %i\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" %s Message\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Unknown (0x%02x)\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\0A\09\09\09@@@@@@ Corrupted length %u of message @@@@@@\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m3ua_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m3ua_common_header*, align 8
  %8 = alloca %struct.tok*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.m3ua_common_header*
  store %struct.m3ua_common_header* %10, %struct.m3ua_common_header** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %132

15:                                               ; preds = %3
  %16 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %17 = call i32 @ND_TCHECK(%struct.m3ua_common_header* byval(%struct.m3ua_common_header) align 8 %16)
  %18 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %19 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @M3UA_REL_1_0, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %148

24:                                               ; preds = %15
  %25 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %26 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @M3UA_MSGC_MGMT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.tok*, %struct.tok** @MgmtMessages, align 8
  br label %83

32:                                               ; preds = %24
  %33 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %34 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @M3UA_MSGC_TRANSFER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.tok*, %struct.tok** @TransferMessages, align 8
  br label %81

40:                                               ; preds = %32
  %41 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %42 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @M3UA_MSGC_SSNM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.tok*, %struct.tok** @SS7Messages, align 8
  br label %79

48:                                               ; preds = %40
  %49 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %50 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @M3UA_MSGC_ASPSM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load %struct.tok*, %struct.tok** @ASPStateMessages, align 8
  br label %77

56:                                               ; preds = %48
  %57 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %58 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @M3UA_MSGC_ASPTM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load %struct.tok*, %struct.tok** @ASPTrafficMessages, align 8
  br label %75

64:                                               ; preds = %56
  %65 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %66 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @M3UA_MSGC_RKM, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load %struct.tok*, %struct.tok** @RoutingKeyMgmtMessages, align 8
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi %struct.tok* [ %71, %70 ], [ null, %72 ]
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi %struct.tok* [ %63, %62 ], [ %74, %73 ]
  br label %77

77:                                               ; preds = %75, %54
  %78 = phi %struct.tok* [ %55, %54 ], [ %76, %75 ]
  br label %79

79:                                               ; preds = %77, %46
  %80 = phi %struct.tok* [ %47, %46 ], [ %78, %77 ]
  br label %81

81:                                               ; preds = %79, %38
  %82 = phi %struct.tok* [ %39, %38 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %81, %30
  %84 = phi %struct.tok* [ %31, %30 ], [ %82, %81 ]
  store %struct.tok* %84, %struct.tok** %8, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.tok*, %struct.tok** @MessageClasses, align 8
  %87 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %88 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @tok2str(%struct.tok* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  %94 = load %struct.tok*, %struct.tok** %8, align 8
  %95 = icmp ne %struct.tok* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %83
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.tok*, %struct.tok** %8, align 8
  %99 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %100 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @tok2str(%struct.tok* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i32*
  %105 = call i32 @ND_PRINT(i32* %104)
  br label %106

106:                                              ; preds = %96, %83
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %109 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %108, i32 0, i32 3
  %110 = call i32 @EXTRACT_32BITS(i32* %109)
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %115 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %114, i32 0, i32 3
  %116 = call i32 @EXTRACT_32BITS(i32* %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i32*
  %119 = call i32 @ND_PRINT(i32* %118)
  br label %131

120:                                              ; preds = %106
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 32
  %124 = load %struct.m3ua_common_header*, %struct.m3ua_common_header** %7, align 8
  %125 = getelementptr inbounds %struct.m3ua_common_header, %struct.m3ua_common_header* %124, i32 0, i32 3
  %126 = call i32 @EXTRACT_32BITS(i32* %125)
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 32
  %129 = trunc i64 %128 to i32
  %130 = call i32 @m3ua_tags_print(i32* %121, i32* %123, i32 %129)
  br label %131

131:                                              ; preds = %120, %112
  br label %148

132:                                              ; preds = %14
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* @istr, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i32*
  %137 = call i32 @ND_PRINT(i32* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @ND_TCHECK2(i32 %139, i32 %140)
  br label %148

142:                                              ; No predecessors!
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* @tstr, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i32*
  %147 = call i32 @ND_PRINT(i32* %146)
  br label %148

148:                                              ; preds = %142, %132, %131, %23
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.m3ua_common_header* byval(%struct.m3ua_common_header) align 8) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(%struct.tok*, i8*, i64) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @m3ua_tags_print(i32*, i32*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
