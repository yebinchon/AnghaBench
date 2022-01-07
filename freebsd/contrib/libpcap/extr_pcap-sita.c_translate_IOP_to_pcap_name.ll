; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_translate_IOP_to_pcap_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_translate_IOP_to_pcap_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8*, %struct.TYPE_7__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Error...couldn't allocate memory for interface structure...value of errno is: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Error...couldn't allocate memory for IOPname...value of errno is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"wan\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Error... invalid IOP name %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"Error...couldn't allocate memory for IOP port name...value of errno is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i32)* @translate_IOP_to_pcap_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @translate_IOP_to_pcap_name(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %15 = call i8* @malloc(i32 32)
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i8* null, i8** %4, align 8
  br label %157

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = bitcast %struct.TYPE_7__* %24 to i8*
  %26 = call i32 @memset(i8* %25, i32 0, i32 32)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i8* null, i8** %4, align 8
  br label %157

40:                                               ; preds = %23
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcpy(i8* %41, i8* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %40
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = call i32 @atoi(i8* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %59 [
    i32 129, label %55
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = call i32 @nonUnified_IOP_port_name(i8* %56, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %57)
  br label %64

59:                                               ; preds = %50
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @unified_IOP_port_name(i8* %60, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %55
  br label %110

65:                                               ; preds = %40
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = call i32 @atoi(i8* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %7, align 4
  switch i32 %73, label %78 [
    i32 129, label %74
  ]

74:                                               ; preds = %69
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = call i32 @nonUnified_IOP_port_name(i8* %75, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %76)
  br label %83

78:                                               ; preds = %69
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @unified_IOP_port_name(i8* %79, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  br label %109

84:                                               ; preds = %65
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @strncmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = call i32 @atoi(i8* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %7, align 4
  switch i32 %92, label %98 [
    i32 128, label %93
  ]

93:                                               ; preds = %88
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @unified_IOP_port_name(i8* %94, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_6__* %95, i32 %96)
  br label %103

98:                                               ; preds = %88
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @unified_IOP_port_name(i8* %99, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  br label %108

104:                                              ; preds = %84
  %105 = load i32, i32* @stderr, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %106)
  store i8* null, i8** %4, align 8
  br label %157

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %64
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %112 = call i32 @strlen(i8* %111)
  %113 = add nsw i32 %112, 1
  %114 = call i8* @malloc(i32 %113)
  store i8* %114, i8** %10, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  store i8* null, i8** %4, align 8
  br label %157

121:                                              ; preds = %110
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %124 = call i32 @strcpy(i8* %122, i8* %123)
  %125 = load i8*, i8** %10, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = icmp eq %struct.TYPE_7__* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store %struct.TYPE_7__* %133, %struct.TYPE_7__** %135, align 8
  br label %153

136:                                              ; preds = %121
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %8, align 8
  br label %140

140:                                              ; preds = %145, %136
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = icmp ne %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  store %struct.TYPE_7__* %148, %struct.TYPE_7__** %8, align 8
  br label %140

149:                                              ; preds = %140
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  store %struct.TYPE_7__* %150, %struct.TYPE_7__** %152, align 8
  br label %153

153:                                              ; preds = %149, %132
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %4, align 8
  br label %157

157:                                              ; preds = %153, %117, %104, %36, %19
  %158 = load i8*, i8** %4, align 8
  ret i8* %158
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @nonUnified_IOP_port_name(i8*, i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @unified_IOP_port_name(i8*, i32, i8*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
