; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_memstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_memstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.info_mem_stats = type { i64*, i32, i32, i32, i32, i32, i32 }

@impl_ver = common dso_local global i64 0, align 8
@REQ_MEM_STATS = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"time since reset:     %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"total peer memory:    %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"free peer memory:     %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"calls to findpeer:    %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"new peer allocations: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"peer demobilizations: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"hash table counts:   \00", align 1
@NTP_HASH_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0A                     \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @memstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memstats(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.info_mem_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i64, i64* @impl_ver, align 8
  %12 = load i32, i32* @REQ_MEM_STATS, align 4
  %13 = bitcast %struct.info_mem_stats** %5 to i8*
  %14 = call i32 @doquery(i64 %11, i32 %12, i32 0, i32 0, i32 0, i32* null, i64* %7, i64* %8, i8* %13, i32 0, i32 32)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @INFO_ERR_IMPL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i64, i64* @impl_ver, align 8
  %20 = load i64, i64* @IMPL_XNTPD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %23, i64* @impl_ver, align 8
  br label %10

24:                                               ; preds = %18, %10
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %117

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @check1item(i64 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %117

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @checkitemsize(i64 %35, i32 32)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %117

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %42 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohl(i32 %43)
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %49 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ntohs(i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %56 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ntohs(i32 %57)
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %63 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ntohl(i32 %64)
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %70 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ntohl(i32 %71)
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %77 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @ntohl(i32 %78)
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %111, %39
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @NTP_HASH_SIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.info_mem_stats*, %struct.info_mem_stats** %5, align 8
  %91 = getelementptr inbounds %struct.info_mem_stats, %struct.info_mem_stats* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = srem i32 %99, 8
  %101 = icmp eq i32 %100, 7
  br i1 %101, label %102, label %110

102:                                              ; preds = %88
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @NTP_HASH_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102, %88
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %84

114:                                              ; preds = %84
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %38, %33, %27
  ret void
}

declare dso_local i32 @doquery(i64, i32, i32, i32, i32, i32*, i64*, i64*, i8*, i32, i32) #1

declare dso_local i32 @check1item(i64, i32*) #1

declare dso_local i32 @checkitemsize(i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
