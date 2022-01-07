; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.pcap_snf* }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.pcap_snf = type { i32, i32*, i32, i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"device is NULL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SNF_FLAGS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SNF_NUM_RINGS\00", align 1
@SNF_F_PSHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"snf_open failed\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SNF_PCAP_RING_ID\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"snf_ring_open_id(ring=%d) failed\00", align 1
@MAXIMUM_SNAPLEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"snf_start failed\00", align 1
@DLT_EN10MB = common dso_local global i32 0, align 4
@snf_read = common dso_local global i32 0, align 4
@snf_inject = common dso_local global i32 0, align 4
@snf_setfilter = common dso_local global i32 0, align 4
@snf_set_datalink = common dso_local global i32 0, align 4
@snf_getnonblock = common dso_local global i32 0, align 4
@snf_setnonblock = common dso_local global i32 0, align 4
@snf_pcap_stats = common dso_local global i32 0, align 4
@snf_platform_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @snf_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snf_activate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.pcap_snf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 14
  %12 = load %struct.pcap_snf*, %struct.pcap_snf** %11, align 8
  store %struct.pcap_snf* %12, %struct.pcap_snf** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %24 = call i32 @pcap_snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %194

25:                                               ; preds = %1
  %26 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strtol(i8* %34, i32* null, i32 0)
  store i32 %35, i32* %8, align 4
  br label %52

36:                                               ; preds = %28, %25
  %37 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @atoi(i8* %45)
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SNF_F_PSHARED, align 4
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %44, %39, %36
  store i8* null, i8** %6, align 8
  br label %51

51:                                               ; preds = %50, %48
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %54 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 13
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 1048576
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %61, %52
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 13
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  br label %73

73:                                               ; preds = %68, %67
  %74 = phi i32 [ 1048576, %67 ], [ %72, %68 ]
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %77 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %76, i32 0, i32 2
  %78 = call i32 @snf_open(i32 %55, i32 0, i32* null, i32 %74, i32 %75, i32* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %84, i32 %85, i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %194

88:                                               ; preds = %73
  %89 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %89, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @strtol(i8* %97, i32* null, i32 0)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %91, %88
  %100 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %101 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %105 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %104, i32 0, i32 3
  %106 = call i32 @snf_ring_open_id(i32 %102, i32 %103, i32* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 12
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %112, i32 %113, i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  store i32 -1, i32* %2, align 4
  br label %194

117:                                              ; preds = %99
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122, %117
  %129 = load i64, i64* @MAXIMUM_SNAPLEN, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 13
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %140 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %139, i32 0, i32 0
  store i32 -1, i32* %140, align 8
  br label %148

141:                                              ; preds = %132
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 13
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %147 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %141, %138
  %149 = load %struct.pcap_snf*, %struct.pcap_snf** %4, align 8
  %150 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @snf_start(i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %158, i32 %159, i32 %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %194

162:                                              ; preds = %148
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  store i32 -1, i32* %164, align 8
  %165 = load i32, i32* @DLT_EN10MB, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @snf_read, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 10
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @snf_inject, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 9
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @snf_setfilter, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 7
  store i32* null, i32** %178, align 8
  %179 = load i32, i32* @snf_set_datalink, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @snf_getnonblock, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @snf_setnonblock, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @snf_pcap_stats, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @snf_platform_cleanup, align 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %162, %155, %109, %81, %19
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @pcap_snprintf(i32, i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @snf_open(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @snf_ring_open_id(i32, i32, i32*) #1

declare dso_local i32 @snf_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
