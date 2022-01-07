; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_sysstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_sysstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.info_sys_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@impl_ver = common dso_local global i64 0, align 8
@REQ_SYS_STATS = common dso_local global i32 0, align 4
@INFO_ERR_IMPL = common dso_local global i32 0, align 4
@IMPL_XNTPD = common dso_local global i64 0, align 8
@IMPL_XNTPD_OLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"time since restart:     %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"time since reset:       %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"packets received:       %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"packets processed:      %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"current version:        %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"previous version:       %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"declined:               %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"access denied:          %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"bad length or format:   %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"bad authentication:     %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"rate exceeded:          %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @sysstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysstats(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.info_sys_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i64, i64* @impl_ver, align 8
  %11 = load i32, i32* @REQ_SYS_STATS, align 4
  %12 = bitcast %struct.info_sys_stats** %5 to i8*
  %13 = call i32 @doquery(i64 %10, i32 %11, i32 0, i32 0, i32 0, i8* null, i64* %6, i64* %7, i8* %12, i32 0, i32 44)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @INFO_ERR_IMPL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i64, i64* @impl_ver, align 8
  %19 = load i64, i64* @IMPL_XNTPD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @IMPL_XNTPD_OLD, align 8
  store i64 %22, i64* @impl_ver, align 8
  br label %9

23:                                               ; preds = %17, %9
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %124

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @check1item(i64 %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %124

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 44
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @checkitemsize(i64 %40, i32 44)
  br label %124

42:                                               ; preds = %36, %33
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %45 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ntohl(i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %52 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohl(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %59 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ntohl(i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = call i32 @fprintf(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %66 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ntohl(i32 %67)
  %69 = trunc i64 %68 to i32
  %70 = call i32 @fprintf(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %73 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ntohl(i32 %74)
  %76 = trunc i64 %75 to i32
  %77 = call i32 @fprintf(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %80 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohl(i32 %81)
  %83 = trunc i64 %82 to i32
  %84 = call i32 @fprintf(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %87 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ntohl(i32 %88)
  %90 = trunc i64 %89 to i32
  %91 = call i32 @fprintf(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %94 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ntohl(i32 %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 @fprintf(i32* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %101 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ntohl(i32 %102)
  %104 = trunc i64 %103 to i32
  %105 = call i32 @fprintf(i32* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %108 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohl(i32 %109)
  %111 = trunc i64 %110 to i32
  %112 = call i32 @fprintf(i32* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 44
  br i1 %114, label %115, label %116

115:                                              ; preds = %42
  br label %124

116:                                              ; preds = %42
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.info_sys_stats*, %struct.info_sys_stats** %5, align 8
  %119 = getelementptr inbounds %struct.info_sys_stats, %struct.info_sys_stats* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @ntohl(i32 %120)
  %122 = trunc i64 %121 to i32
  %123 = call i32 @fprintf(i32* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %116, %115, %39, %32, %26
  ret void
}

declare dso_local i32 @doquery(i64, i32, i32, i32, i32, i8*, i64*, i64*, i8*, i32, i32) #1

declare dso_local i32 @check1item(i64, i32*) #1

declare dso_local i32 @checkitemsize(i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
