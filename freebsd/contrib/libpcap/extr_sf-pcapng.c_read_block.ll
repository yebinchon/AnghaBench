; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_read_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64, %struct.pcap_ng_sf* }
%struct.pcap_ng_sf = type { i32 }
%struct.block_cursor = type { i64, i32, %struct.block_header* }
%struct.block_header = type { i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pcapng block size %u > maximum %u\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"block in pcapng dump file has a length of %u < %lu\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"block is larger than maximum block size %u\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, %struct.block_cursor*, i8*)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(i32* %0, %struct.TYPE_3__* %1, %struct.block_cursor* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.block_cursor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pcap_ng_sf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.block_header, align 4
  %13 = alloca %struct.block_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store %struct.block_cursor* %2, %struct.block_cursor** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %17, align 8
  store %struct.pcap_ng_sf* %18, %struct.pcap_ng_sf** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @read_bytes(i32* %19, %struct.block_header* %12, i64 8, i32 0, i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %134

26:                                               ; preds = %4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @SWAPLONG(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @SWAPLONG(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %31, %26
  %43 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 16777216
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %49 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50, i32 16777216)
  store i32 -1, i32* %5, align 4
  br label %134

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 12
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %60 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 12)
  store i32 -1, i32* %5, align 4
  br label %134

63:                                               ; preds = %52
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %10, align 8
  %74 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %80 = load %struct.pcap_ng_sf*, %struct.pcap_ng_sf** %10, align 8
  %81 = getelementptr inbounds %struct.pcap_ng_sf, %struct.pcap_ng_sf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 -1, i32* %5, align 4
  br label %134

84:                                               ; preds = %70
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @realloc(i8* %87, i32 %89)
  store i8* %90, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %96 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %134

97:                                               ; preds = %84
  %98 = load i8*, i8** %15, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %97, %63
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @memcpy(i8* %104, %struct.block_header* %12, i32 8)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to %struct.block_header*
  %110 = getelementptr inbounds %struct.block_header, %struct.block_header* %109, i64 8
  store %struct.block_header* %110, %struct.block_header** %13, align 8
  %111 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, 8
  store i64 %114, i64* %14, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.block_header*, %struct.block_header** %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @read_bytes(i32* %115, %struct.block_header* %116, i64 %117, i32 1, i8* %118)
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %101
  store i32 -1, i32* %5, align 4
  br label %134

122:                                              ; preds = %101
  %123 = load %struct.block_header*, %struct.block_header** %13, align 8
  %124 = load %struct.block_cursor*, %struct.block_cursor** %8, align 8
  %125 = getelementptr inbounds %struct.block_cursor, %struct.block_cursor* %124, i32 0, i32 2
  store %struct.block_header* %123, %struct.block_header** %125, align 8
  %126 = load i64, i64* %14, align 8
  %127 = sub i64 %126, 4
  %128 = load %struct.block_cursor*, %struct.block_cursor** %8, align 8
  %129 = getelementptr inbounds %struct.block_cursor, %struct.block_cursor* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = getelementptr inbounds %struct.block_header, %struct.block_header* %12, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.block_cursor*, %struct.block_cursor** %8, align 8
  %133 = getelementptr inbounds %struct.block_cursor, %struct.block_cursor* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %122, %121, %93, %77, %57, %46, %24
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @read_bytes(i32*, %struct.block_header*, i64, i32, i8*) #1

declare dso_local i8* @SWAPLONG(i32) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.block_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
