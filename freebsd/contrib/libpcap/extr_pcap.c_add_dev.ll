; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_add_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32*, %struct.TYPE_8__*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @add_dev(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = call %struct.TYPE_8__* @malloc(i32 40)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %12, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @pcap_fmt_errmsg_for_errno(i8* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %120

25:                                               ; preds = %5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strdup(i8* %28)
  %30 = bitcast i8* %29 to %struct.TYPE_8__*
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @pcap_fmt_errmsg_for_errno(i8* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = call i32 @free(%struct.TYPE_8__* %42)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %120

44:                                               ; preds = %25
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  br label %72

50:                                               ; preds = %44
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @pcap_fmt_errmsg_for_errno(i8* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @free(%struct.TYPE_8__* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = call i32 @free(%struct.TYPE_8__* %69)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %120

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = call i64 @get_figure_of_merit(%struct.TYPE_8__* %78)
  store i64 %79, i64* %15, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  br label %80

80:                                               ; preds = %102, %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = icmp eq %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %14, align 8
  br label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %14, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = icmp eq %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %104

95:                                               ; preds = %91
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %97 = call i64 @get_figure_of_merit(%struct.TYPE_8__* %96)
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %104

102:                                              ; preds = %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %13, align 8
  br label %80

104:                                              ; preds = %101, %94
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = icmp eq %struct.TYPE_8__* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %113, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %117, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %6, align 8
  br label %120

120:                                              ; preds = %118, %60, %37, %20
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %121
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i64 @get_figure_of_merit(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
