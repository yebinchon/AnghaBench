; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-new.c_pcap_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-new.c_pcap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.pcap_rmtauth = type { i32 }

@PCAP_BUF_SIZE = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"The source string is too long. Cannot handle it correctly.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Source type not supported\00", align 1
@PCAP_OPENFLAG_PROMISCUOUS = common dso_local global i32 0, align 4
@PCAP_OPENFLAG_MAX_RESPONSIVENESS = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR_PROMISC_PERM_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%s: %s (%s)\00", align 1
@PCAP_OPENFLAG_NOCAPTURE_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @pcap_open(i8* %0, i32 %1, i32 %2, i32 %3, %struct.pcap_rmtauth* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcap_rmtauth*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.pcap_rmtauth* %4, %struct.pcap_rmtauth** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i32, i32* @PCAP_BUF_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = load i32, i32* @PCAP_BUF_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %31 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

32:                                               ; preds = %6
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @pcap_parsesrcstr(i8* %33, i32* %16, i32* null, i32* null, i8* %23, i8* %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

38:                                               ; preds = %32
  %39 = load i32, i32* %16, align 4
  switch i32 %39, label %54 [
    i32 130, label %40
    i32 129, label %43
    i32 128, label %46
  ]

40:                                               ; preds = %38
  %41 = load i8*, i8** %13, align 8
  %42 = call %struct.TYPE_14__* @pcap_open_offline(i8* %23, i8* %41)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

43:                                               ; preds = %38
  %44 = load i8*, i8** %13, align 8
  %45 = call %struct.TYPE_14__* @pcap_create(i8* %23, i8* %44)
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %17, align 8
  br label %58

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.pcap_rmtauth*, %struct.pcap_rmtauth** %12, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call %struct.TYPE_14__* @pcap_open_rpcap(i8* %47, i32 %48, i32 %49, i32 %50, %struct.pcap_rmtauth* %51, i8* %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

54:                                               ; preds = %38
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %57 = call i32 @strlcpy(i8* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

58:                                               ; preds = %43
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %60 = icmp eq %struct.TYPE_14__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

62:                                               ; preds = %58
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pcap_set_snaplen(%struct.TYPE_14__* %63, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %108

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @PCAP_OPENFLAG_PROMISCUOUS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %76 = call i32 @pcap_set_promisc(%struct.TYPE_14__* %75, i32 1)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %108

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %69
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @PCAP_OPENFLAG_MAX_RESPONSIVENESS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %88 = call i32 @pcap_set_immediate_mode(%struct.TYPE_14__* %87, i32 1)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %108

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %81
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @pcap_set_timeout(%struct.TYPE_14__* %94, i32 %95)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %108

100:                                              ; preds = %93
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %102 = call i32 @pcap_activate(%struct.TYPE_14__* %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %108

106:                                              ; preds = %100
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

108:                                              ; preds = %105, %99, %91, %79, %68
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @PCAP_ERROR, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %113, i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32 %117)
  br label %147

119:                                              ; preds = %108
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @PCAP_ERROR_PROMISC_PERM_DENIED, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127, %123, %119
  %132 = load i8*, i8** %13, align 8
  %133 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @pcap_statustostr(i32 %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %132, i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 %135, i32 %138)
  br label %146

140:                                              ; preds = %127
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @pcap_statustostr(i32 %143)
  %145 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %141, i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32 %144)
  br label %146

146:                                              ; preds = %140, %131
  br label %147

147:                                              ; preds = %146, %112
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %149 = call i32 @pcap_close(%struct.TYPE_14__* %148)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 1, i32* %19, align 4
  br label %150

150:                                              ; preds = %147, %106, %61, %54, %46, %40, %37, %28
  %151 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @pcap_parsesrcstr(i8*, i32*, i32*, i32*, i8*, i8*) #2

declare dso_local %struct.TYPE_14__* @pcap_open_offline(i8*, i8*) #2

declare dso_local %struct.TYPE_14__* @pcap_create(i8*, i8*) #2

declare dso_local %struct.TYPE_14__* @pcap_open_rpcap(i8*, i32, i32, i32, %struct.pcap_rmtauth*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @pcap_set_snaplen(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @pcap_set_promisc(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @pcap_set_immediate_mode(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @pcap_set_timeout(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @pcap_activate(%struct.TYPE_14__*) #2

declare dso_local i32 @pcap_statustostr(i32) #2

declare dso_local i32 @pcap_close(%struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
