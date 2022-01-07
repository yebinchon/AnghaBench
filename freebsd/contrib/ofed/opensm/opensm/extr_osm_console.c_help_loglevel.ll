; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_help_loglevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_help_loglevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"loglevel [<log-level>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"   log-level is OR'ed from the following\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_NONE             0x%02X\0A\00", align 1
@OSM_LOG_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_ERROR            0x%02X\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_INFO             0x%02X\0A\00", align 1
@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_VERBOSE          0x%02X\0A\00", align 1
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_DEBUG            0x%02X\0A\00", align 1
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_FUNCS            0x%02X\0A\00", align 1
@OSM_LOG_FUNCS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_FRAMES           0x%02X\0A\00", align 1
@OSM_LOG_FRAMES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_ROUTING          0x%02X\0A\00", align 1
@OSM_LOG_ROUTING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_SYS              0x%02X\0A\00", align 1
@OSM_LOG_SYS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"   OSM_LOG_DEFAULT_LEVEL    0x%02X\0A\00", align 1
@OSM_LOG_DEFAULT_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @help_loglevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_loglevel(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @OSM_LOG_NONE, align 4
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @OSM_LOG_ERROR, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @OSM_LOG_INFO, align 4
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @OSM_LOG_FUNCS, align 4
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @OSM_LOG_FRAMES, align 4
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @OSM_LOG_ROUTING, align 4
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @OSM_LOG_SYS, align 4
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @OSM_LOG_DEFAULT_LEVEL, align 4
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
