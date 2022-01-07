; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_open_live.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_open_live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR_PROMISC_PERM_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: %s (%s)\00", align 1
@PCAP_BUF_SIZE = common dso_local global i32 0, align 4
@PCAP_OPENFLAG_PROMISCUOUS = common dso_local global i32 0, align 4
@PCAP_SRC_FILE = common dso_local global i32 0, align 4
@PCAP_SRC_IFLOCAL = common dso_local global i32 0, align 4
@PCAP_SRC_IFREMOTE = common dso_local global i32 0, align 4
@PCAP_SRC_IF_STRING = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @pcap_open_live(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call %struct.TYPE_10__* @pcap_create(i8* %14, i8* %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %96

20:                                               ; preds = %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pcap_set_snaplen(%struct.TYPE_10__* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %51

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pcap_set_promisc(%struct.TYPE_10__* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %51

34:                                               ; preds = %27
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @pcap_set_timeout(%struct.TYPE_10__* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %51

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = call i32 @pcap_activate(%struct.TYPE_10__* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %6, align 8
  br label %96

51:                                               ; preds = %48, %40, %33, %26
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @PCAP_ERROR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %61)
  br label %93

63:                                               ; preds = %51
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PCAP_ERROR_PROMISC_PERM_DENIED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71, %67, %63
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @pcap_statustostr(i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %80, i32 %83)
  br label %92

85:                                               ; preds = %71
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @pcap_statustostr(i32 %89)
  %91 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %85, %75
  br label %93

93:                                               ; preds = %92, %55
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = call i32 @pcap_close(%struct.TYPE_10__* %94)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  br label %96

96:                                               ; preds = %93, %49, %19
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %97
}

declare dso_local %struct.TYPE_10__* @pcap_create(i8*, i8*) #1

declare dso_local i32 @pcap_set_snaplen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pcap_set_promisc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pcap_set_timeout(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @pcap_activate(%struct.TYPE_10__*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @pcap_statustostr(i32) #1

declare dso_local i32 @pcap_close(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
