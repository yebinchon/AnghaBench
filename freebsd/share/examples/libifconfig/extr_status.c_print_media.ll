; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }
%struct.ifmediareq = type { i64, i64, i32, i32, i64* }

@OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to get media info\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09media: %s %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" <%s>)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"\09status: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09supported media:\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09\09media %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" mediaopt %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_media(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifmediareq*, align 8
  %7 = alloca [80 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %10 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ifconfig_media_get_mediareq(i32* %8, i32 %11, %struct.ifmediareq** %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @ifconfig_err_errtype(i32* %15)
  %17 = load i64, i64* @OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %22

21:                                               ; preds = %14
  br label %117

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %25 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @ifconfig_media_get_type(i64 %26)
  %28 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %29 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @ifconfig_media_get_subtype(i64 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %31)
  %33 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %34 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %37 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %23
  %41 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %42 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @ifconfig_media_get_subtype(i64 %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %50 = call i32 @ifconfig_media_get_options_string(i64 %48, i8* %49, i32 80)
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %60

58:                                               ; preds = %40
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  br label %63

61:                                               ; preds = %23
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %65 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IFM_AVALID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %72 = call i8* @ifconfig_media_get_status(%struct.ifmediareq* %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %63
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %111, %74
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %79 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %84 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %83, i32 0, i32 4
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @ifconfig_media_get_subtype(i64 %89)
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %90)
  %92 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %93 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %92, i32 0, i32 4
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %100 = call i32 @ifconfig_media_get_options_string(i64 %98, i8* %99, i32 80)
  %101 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %82
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  br label %110

108:                                              ; preds = %82
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %76

114:                                              ; preds = %76
  %115 = load %struct.ifmediareq*, %struct.ifmediareq** %6, align 8
  %116 = call i32 @free(%struct.ifmediareq* %115)
  br label %117

117:                                              ; preds = %114, %21
  ret void
}

declare dso_local i64 @ifconfig_media_get_mediareq(i32*, i32, %struct.ifmediareq**) #1

declare dso_local i64 @ifconfig_err_errtype(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ifconfig_media_get_type(i64) #1

declare dso_local i8* @ifconfig_media_get_subtype(i64) #1

declare dso_local i32 @ifconfig_media_get_options_string(i64, i8*, i32) #1

declare dso_local i8* @ifconfig_media_get_status(%struct.ifmediareq*) #1

declare dso_local i32 @free(%struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
