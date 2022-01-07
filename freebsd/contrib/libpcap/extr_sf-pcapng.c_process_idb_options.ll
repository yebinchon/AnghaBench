; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_process_idb_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_process_idb_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.block_cursor = type { i64 }
%struct.option_header = type { i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Interface Description Block has opt_endofopt option with length %u != 0\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Interface Description Block has if_tsresol option with length %u != 1\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Interface Description Block has more than one if_tsresol option\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Interface Description Block if_tsresol option resolution 2^-%u is too high\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Interface Description Block if_tsresol option resolution 10^-%u is too high\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Interface Description Block has if_tsoffset option with length %u != 8\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"Interface Description Block has more than one if_tsoffset option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.block_cursor*, i32*, i32*, i32*, i8*)* @process_idb_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_idb_options(%struct.TYPE_4__* %0, %struct.block_cursor* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.block_cursor*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.option_header*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store %struct.block_cursor* %1, %struct.block_cursor** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %159, %6
  %21 = load %struct.block_cursor*, %struct.block_cursor** %9, align 8
  %22 = getelementptr inbounds %struct.block_cursor, %struct.block_cursor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %160

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = load %struct.block_cursor*, %struct.block_cursor** %9, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call %struct.option_header* @get_opthdr_from_block_data(%struct.TYPE_4__* %26, %struct.block_cursor* %27, i8* %28)
  store %struct.option_header* %29, %struct.option_header** %14, align 8
  %30 = load %struct.option_header*, %struct.option_header** %14, align 8
  %31 = icmp eq %struct.option_header* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %162

33:                                               ; preds = %25
  %34 = load %struct.block_cursor*, %struct.block_cursor** %9, align 8
  %35 = load %struct.option_header*, %struct.option_header** %14, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @get_optvalue_from_block_data(%struct.block_cursor* %34, %struct.option_header* %35, i8* %36)
  store i8* %37, i8** %15, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %162

41:                                               ; preds = %33
  %42 = load %struct.option_header*, %struct.option_header** %14, align 8
  %43 = getelementptr inbounds %struct.option_header, %struct.option_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %158 [
    i32 128, label %45
    i32 129, label %58
    i32 130, label %125
  ]

45:                                               ; preds = %41
  %46 = load %struct.option_header*, %struct.option_header** %14, align 8
  %47 = getelementptr inbounds %struct.option_header, %struct.option_header* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %53 = load %struct.option_header*, %struct.option_header** %14, align 8
  %54 = getelementptr inbounds %struct.option_header, %struct.option_header* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %7, align 4
  br label %162

57:                                               ; preds = %45
  br label %161

58:                                               ; preds = %41
  %59 = load %struct.option_header*, %struct.option_header** %14, align 8
  %60 = getelementptr inbounds %struct.option_header, %struct.option_header* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %66 = load %struct.option_header*, %struct.option_header** %14, align 8
  %67 = getelementptr inbounds %struct.option_header, %struct.option_header* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %64, i32 %65, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %7, align 4
  br label %162

70:                                               ; preds = %58
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %76 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %74, i32 %75, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %162

77:                                               ; preds = %70
  store i32 1, i32* %16, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 @memcpy(i32* %18, i8* %78, i32 4)
  %80 = load i32, i32* %18, align 4
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32*, i32** %12, align 8
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %18, align 4
  %86 = and i32 %85, 127
  %87 = shl i32 1, %86
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %104

89:                                               ; preds = %77
  %90 = load i32*, i32** %12, align 8
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 1, i32* %91, align 4
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %100, %89
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 10
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %19, align 4
  br label %92

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32, i32* %18, align 4
  %110 = and i32 %109, 128
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %115 = load i32, i32* %18, align 4
  %116 = and i32 %115, 127
  %117 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %113, i32 %114, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %123

118:                                              ; preds = %108
  %119 = load i8*, i8** %13, align 8
  %120 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %119, i32 %120, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %112
  store i32 -1, i32* %7, align 4
  br label %162

124:                                              ; preds = %104
  br label %159

125:                                              ; preds = %41
  %126 = load %struct.option_header*, %struct.option_header** %14, align 8
  %127 = getelementptr inbounds %struct.option_header, %struct.option_header* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 8
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %133 = load %struct.option_header*, %struct.option_header** %14, align 8
  %134 = getelementptr inbounds %struct.option_header, %struct.option_header* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %131, i32 %132, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  store i32 -1, i32* %7, align 4
  br label %162

137:                                              ; preds = %125
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %143 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %141, i32 %142, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %162

144:                                              ; preds = %137
  store i32 1, i32* %17, align 4
  %145 = load i32*, i32** %11, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @memcpy(i32* %145, i8* %146, i32 4)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @SWAPLL(i32 %154)
  %156 = load i32*, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %152, %144
  br label %159

158:                                              ; preds = %41
  br label %159

159:                                              ; preds = %158, %157, %124
  br label %20

160:                                              ; preds = %20
  br label %161

161:                                              ; preds = %160, %57
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %140, %130, %123, %73, %63, %50, %40, %32
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local %struct.option_header* @get_opthdr_from_block_data(%struct.TYPE_4__*, %struct.block_cursor*, i8*) #1

declare dso_local i8* @get_optvalue_from_block_data(%struct.block_cursor*, %struct.option_header*, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @SWAPLL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
