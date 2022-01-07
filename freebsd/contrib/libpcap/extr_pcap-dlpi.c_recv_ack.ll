; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_recv_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_recv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.DL_primitives = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.strbuf = type { i32, i8*, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@MAXDLBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"recv_ack: %s getmsg\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"recv_ack: %s: UNIX error\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"recv_ack: %s: %s\00", align 1
@DL_BADPPA = common dso_local global i32 0, align 4
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@DL_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"recv_ack: %s: Unexpected primitive ack %s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"recv_ack: %s: Ack too small (%d < %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i8*, i32*)* @recv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_ack(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %union.DL_primitives*, align 8
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32*, i32** %13, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* @MAXDLBUF, align 4
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  store i32 0, i32* %16, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @getmsg(i32 %35, %struct.strbuf* %15, %struct.strbuf* null, i32* %16)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @pcap_fmt_errmsg_for_errno(i8* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %44, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call %union.DL_primitives* @MAKE_DL_PRIMITIVES(i8* %47)
  store %union.DL_primitives* %48, %union.DL_primitives** %14, align 8
  %49 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %50 = bitcast %union.DL_primitives* %49 to i32*
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %124 [
    i32 130, label %52
    i32 133, label %52
    i32 129, label %52
    i32 131, label %52
    i32 132, label %53
  ]

52:                                               ; preds = %45, %45, %45, %45
  br label %135

53:                                               ; preds = %45
  %54 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %55 = bitcast %union.DL_primitives* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %92 [
    i32 128, label %58
  ]

58:                                               ; preds = %53
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %63 = bitcast %union.DL_primitives* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %70 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %71 = bitcast %union.DL_primitives* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @pcap_fmt_errmsg_for_errno(i8* %68, i32 %69, i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  %76 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %77 = bitcast %union.DL_primitives* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EPERM, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %67
  %83 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %84 = bitcast %union.DL_primitives* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EACCES, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82, %67
  %90 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %90, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

91:                                               ; preds = %82
  br label %122

92:                                               ; preds = %53
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = trunc i64 %22 to i32
  %97 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %98 = bitcast %union.DL_primitives* %97 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dlstrerror(i8* %24, i32 %96, i32 %100)
  %102 = call i32 (i8*, i32, i8*, i8*, i32, ...) @pcap_snprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %95, i32 %101)
  %103 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %104 = bitcast %union.DL_primitives* %103 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @DL_BADPPA, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %92
  %110 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  store i32 %110, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

111:                                              ; preds = %92
  %112 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %113 = bitcast %union.DL_primitives* %112 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DL_ACCESS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %119, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %91
  %123 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %123, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

124:                                              ; preds = %45
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %129 = load %union.DL_primitives*, %union.DL_primitives** %14, align 8
  %130 = bitcast %union.DL_primitives* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dlprim(i8* %128, i32 64, i32 %131)
  %133 = call i32 (i8*, i32, i8*, i8*, i32, ...) @pcap_snprintf(i8* %125, i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %127, i32 %132)
  %134 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %134, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

135:                                              ; preds = %52
  %136 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i8*, i8** %12, align 8
  %142 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i8*, i32, i8*, i8*, i32, ...) @pcap_snprintf(i8* %141, i32 %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %143, i32 %145, i32 %146)
  %148 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %148, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

149:                                              ; preds = %135
  %150 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %152

152:                                              ; preds = %149, %140, %124, %122, %118, %109, %89, %38
  %153 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getmsg(i32, %struct.strbuf*, %struct.strbuf*, i32*) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*, i8*) #2

declare dso_local %union.DL_primitives* @MAKE_DL_PRIMITIVES(i8*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @dlstrerror(i8*, i32, i32) #2

declare dso_local i32 @dlprim(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
