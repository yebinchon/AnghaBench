; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.snf_ifaddrs = type { i32, i8*, %struct.snf_ifaddrs* }

@MAX_DESC_LENGTH = common dso_local global i32 0, align 4
@SNF_VERSION_API = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"snf_getifaddrs: snf_init failed\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"snf_getifaddrs\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SNF_FLAGS\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"snf_getifaddrs: SNF_FLAGS is not a valid number\00", align 1
@SNF_F_AGGREGATE_PORTMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Myricom %ssnf%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Merge Bitmask Port \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"snf_findalldevs strdup\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"snf%d\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Myricom Merge Bitmask All Ports snf%d\00", align 1
@PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snf_findalldevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.snf_ifaddrs*, align 8
  %8 = alloca %struct.snf_ifaddrs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %25 = load i32, i32* @SNF_VERSION_API, align 4
  %26 = call i64 @snf_init(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %31 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

32:                                               ; preds = %2
  %33 = call i64 @snf_getifaddrs(%struct.snf_ifaddrs** %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %7, align 8
  %37 = icmp eq %struct.snf_ifaddrs* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = load i64, i64* @errno, align 8
  %42 = call i32 @pcap_fmt_errmsg_for_errno(i8* %39, i32 %40, i64 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

43:                                               ; preds = %35
  %44 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %44, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i8*, i8** %15, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  store i64 0, i64* @errno, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @strtol(i8* %52, i32* null, i32 0)
  store i32 %53, i32* %14, align 4
  %54 = load i64, i64* @errno, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %59 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %57, i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

60:                                               ; preds = %51
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @SNF_F_AGGREGATE_PORTMASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %60, %46, %43
  %65 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %7, align 8
  store %struct.snf_ifaddrs* %65, %struct.snf_ifaddrs** %8, align 8
  br label %66

66:                                               ; preds = %135, %64
  %67 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %68 = icmp ne %struct.snf_ifaddrs* %67, null
  br i1 %68, label %69, label %139

69:                                               ; preds = %66
  %70 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %79 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  br label %86

82:                                               ; preds = %69
  %83 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %84 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ %81, %77 ], [ %85, %82 ]
  %88 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %24, i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %74, i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %93 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 1, %94
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %101 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call %struct.TYPE_5__* @find_dev(i32* %99, i8* %102)
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %6, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = icmp ne %struct.TYPE_5__* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %98
  %107 = call i8* @strdup(i8* %24)
  store i8* %107, i8** %17, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %113 = load i64, i64* @errno, align 8
  %114 = call i32 @pcap_fmt_errmsg_for_errno(i8* %111, i32 %112, i64 %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

115:                                              ; preds = %106
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %134

123:                                              ; preds = %98
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %126 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = call %struct.TYPE_5__* @add_dev(i32* %124, i8* %127, i32 0, i8* %24, i8* %128)
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %6, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = icmp eq %struct.TYPE_5__* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %115
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %8, align 8
  %137 = getelementptr inbounds %struct.snf_ifaddrs, %struct.snf_ifaddrs* %136, i32 0, i32 2
  %138 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %137, align 8
  store %struct.snf_ifaddrs* %138, %struct.snf_ifaddrs** %8, align 8
  br label %66

139:                                              ; preds = %66
  %140 = load %struct.snf_ifaddrs*, %struct.snf_ifaddrs** %7, align 8
  %141 = call i32 @snf_freeifaddrs(%struct.snf_ifaddrs* %140)
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %139
  %145 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %21, i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @MAX_DESC_LENGTH, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %24, i32 %148, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = call %struct.TYPE_5__* @add_dev(i32* %151, i8* %21, i32 %152, i8* %24, i8* %153)
  %155 = icmp eq %struct.TYPE_5__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %139
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %159

159:                                              ; preds = %158, %156, %132, %110, %56, %38, %28
  %160 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snf_init(i32) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @snf_getifaddrs(%struct.snf_ifaddrs**) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i64, i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local %struct.TYPE_5__* @find_dev(i32*, i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local %struct.TYPE_5__* @add_dev(i32*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @snf_freeifaddrs(%struct.snf_ifaddrs*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
