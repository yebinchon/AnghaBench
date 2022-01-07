; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_Help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"\0A\0ATime Code Generation - IRIG-B or WWV, v%d.%d, %s dmw\00", align 1
@VERSION = common dso_local global i32 0, align 4
@ISSUE = common dso_local global i32 0, align 4
@ISSUE_DATE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A\0ARCS Info:\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"\0A  $Header: /home/dmw/src/IRIG_generation/ntp-4.2.2p3/util/RCS/tg.c,v 1.28 2007/02/12 23:57:45 dmw Exp $\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A\0AUsage: %s [option]*\00", align 1
@CommandName = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [88 x i8] c"\0A\0AOptions: -a device_name                 Output audio device name (default /dev/audio)\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"\0A         -b yymmddhhmm                  Remove leap second at end of minute specified\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"\0A         -c seconds_to_send             Number of seconds to send (default 0 = forever)\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"\0A         -d                             Start with IEEE 1344 DST active\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"\0A         -f format_type                 i = Modulated IRIG-B 1998 (no year coded)\00", align 1
@.str.9 = private unnamed_addr constant [80 x i8] c"\0A                                        2 = Modulated IRIG-B 2002 (year coded)\00", align 1
@.str.10 = private unnamed_addr constant [107 x i8] c"\0A                                        3 = Modulated IRIG-B w/IEEE 1344 (year & control funcs) (default)\00", align 1
@.str.11 = private unnamed_addr constant [99 x i8] c"\0A                                        4 = Unmodulated IRIG-B w/IEEE 1344 (year & control funcs)\00", align 1
@.str.12 = private unnamed_addr constant [108 x i8] c"\0A                                        5 = Inverted unmodulated IRIG-B w/IEEE 1344 (year & control funcs)\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\0A                                        w = WWV(H)\00", align 1
@.str.14 = private unnamed_addr constant [97 x i8] c"\0A         -g yymmddhhmm                  Switch into/out of DST at beginning of minute specified\00", align 1
@.str.15 = private unnamed_addr constant [87 x i8] c"\0A         -i yymmddhhmm                  Insert leap second at end of minute specified\00", align 1
@.str.16 = private unnamed_addr constant [109 x i8] c"\0A         -j                             Disable time rate correction against system clock (default enabled)\00", align 1
@.str.17 = private unnamed_addr constant [111 x i8] c"\0A         -k nn                          Force rate correction for testing (+1 = add cycle, -1 = remove cycle)\00", align 1
@.str.18 = private unnamed_addr constant [105 x i8] c"\0A         -l time_offset                 Set offset of time sent to UTC as per computer, +/- float hours\00", align 1
@.str.19 = private unnamed_addr constant [97 x i8] c"\0A         -o time_offset                 Set IEEE 1344 time offset, +/-, to 0.5 hour (default 0)\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"\0A         -q quality_code_hex            Set IEEE 1344 quality code (default 0)\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"\0A         -r sample_rate                 Audio sample rate (default 8000)\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"\0A         -s                             Set leap warning bit (WWV[H] only)\00", align 1
@.str.23 = private unnamed_addr constant [92 x i8] c"\0A         -t sync_frequency              WWV(H) on-time pulse tone frequency (default 1200)\00", align 1
@.str.24 = private unnamed_addr constant [85 x i8] c"\0A         -u DUT1_offset                 Set WWV(H) DUT1 offset -7 to +7 (default 0)\00", align 1
@.str.25 = private unnamed_addr constant [97 x i8] c"\0A         -v initial_output_level        Set initial output level (default %d, must be 0 to 255)\00", align 1
@AUDIO_MAX_GAIN = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [78 x i8] c"\0A         -x                             Turn off verbose output (default on)\00", align 1
@.str.27 = private unnamed_addr constant [102 x i8] c"\0A         -y yymmddhhmmss                Set initial date and time as specified (default system time)\00", align 1
@.str.28 = private unnamed_addr constant [91 x i8] c"\0A\0AThis software licenced under the GPL, modifications performed 2006 & 2007 by Dean Weiten\00", align 1
@.str.29 = private unnamed_addr constant [113 x i8] c"\0AContact: Dean Weiten, Norscan Instruments Ltd., Winnipeg, MB, Canada, ph (204)-233-9138, E-mail dmw@norscan.com\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Help() #0 {
  %1 = load i32, i32* @VERSION, align 4
  %2 = load i32, i32* @ISSUE, align 4
  %3 = load i8*, i8** @ISSUE_DATE, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i8*, i8** @CommandName, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.10, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.11, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.12, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.14, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.15, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.16, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.17, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.19, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.22, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.23, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i64 0, i64 0))
  %30 = load i32, i32* @AUDIO_MAX_GAIN, align 4
  %31 = sdiv i32 %30, 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.25, i64 0, i64 0), i32 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.26, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.27, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.28, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.29, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
