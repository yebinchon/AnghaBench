; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print.c_pretty_print_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print.c_pretty_print_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*, %struct.pcap_pkthdr*, i32*)*, i32, i32, i32, i32*, i64 }
%struct.pcap_pkthdr = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%5u  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pretty_print_packet(%struct.TYPE_9__* %0, %struct.pcap_pkthdr* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  %18 = call i32 @ND_PRINT(%struct.TYPE_9__* %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %22 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %21, i32 0, i32 1
  %23 = call i32 @ts_print(%struct.TYPE_9__* %20, i32* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %26 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_9__*, %struct.pcap_pkthdr*, i32*)*, i64 (%struct.TYPE_9__*, %struct.pcap_pkthdr*, i32*)** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 %34(%struct.TYPE_9__* %35, %struct.pcap_pkthdr* %36, i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %41 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %19
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %60 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 @hex_and_ascii_print(%struct.TYPE_9__* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %58, i64 %62)
  br label %84

64:                                               ; preds = %51
  %65 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %66 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %77 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %9, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i32 @hex_and_ascii_print(%struct.TYPE_9__* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %75, i64 %81)
  br label %83

83:                                               ; preds = %71, %64
  br label %84

84:                                               ; preds = %83, %56
  br label %165

85:                                               ; preds = %19
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %124

90:                                               ; preds = %85
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %99 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = call i32 @hex_print(%struct.TYPE_9__* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %97, i64 %101)
  br label %123

103:                                              ; preds = %90
  %104 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %105 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %116 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %9, align 8
  %120 = sub nsw i64 %118, %119
  %121 = call i32 @hex_print(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %114, i64 %120)
  br label %122

122:                                              ; preds = %110, %103
  br label %123

123:                                              ; preds = %122, %95
  br label %164

124:                                              ; preds = %85
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %124
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 1
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %138 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = call i32 @ascii_print(%struct.TYPE_9__* %135, i32* %136, i64 %140)
  br label %162

142:                                              ; preds = %129
  %143 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %144 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %9, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i64, i64* %9, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %155 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %9, align 8
  %159 = sub nsw i64 %157, %158
  %160 = call i32 @ascii_print(%struct.TYPE_9__* %150, i32* %153, i64 %159)
  br label %161

161:                                              ; preds = %149, %142
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %124
  br label %164

164:                                              ; preds = %163, %123
  br label %165

165:                                              ; preds = %164, %84
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_9__*))
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @ts_print(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @hex_and_ascii_print(%struct.TYPE_9__*, i8*, i32*, i64) #1

declare dso_local i32 @hex_print(%struct.TYPE_9__*, i8*, i32*, i64) #1

declare dso_local i32 @ascii_print(%struct.TYPE_9__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
