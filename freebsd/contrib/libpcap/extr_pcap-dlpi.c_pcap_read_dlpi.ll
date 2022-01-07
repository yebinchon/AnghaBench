; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_pcap_read_dlpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_pcap_read_dlpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64, i32, i32, i64 }
%struct.strbuf = type { i32, i8*, i8*, i32, i32, i32 }

@MAXDLBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"getmsg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*)* @pcap_read_dlpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_dlpi(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @MAXDLBUF, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %23 = load i32, i32* @MAXDLBUF, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 2
  %26 = bitcast i32* %21 to i8*
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 5
  store i32 0, i32* %29, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 4
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %83, %35
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  store i32 -2, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %108

59:                                               ; preds = %51
  %60 = bitcast i32* %21 to i8*
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @MAXDLBUF, align 4
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 3
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 4
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @getmsg(i32 %67, %struct.strbuf* %15, %struct.strbuf* %16, i32* %12)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %59
  %71 = load i32, i32* @errno, align 4
  switch i32 %71, label %74 [
    i32 128, label %72
    i32 129, label %73
  ]

72:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %83

73:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %108

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @pcap_fmt_errmsg_for_errno(i32 %77, i32 4, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %108

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %51, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32* %95, i32** %11, align 8
  br label %100

96:                                               ; preds = %4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %11, align 8
  br label %100

100:                                              ; preds = %96, %86
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @pcap_process_pkts(%struct.TYPE_4__* %101, i32 %102, i32* %103, i32 %104, i32* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %108

108:                                              ; preds = %100, %74, %73, %56
  %109 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getmsg(i32, %struct.strbuf*, %struct.strbuf*, i32*) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #2

declare dso_local i32 @pcap_process_pkts(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
