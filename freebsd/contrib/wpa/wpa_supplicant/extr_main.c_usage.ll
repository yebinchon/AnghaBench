; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [415 x i8] c"%s\0A\0A%s\0Ausage:\0A  wpa_supplicant [-BddhKLqqtvW] [-P<pid file>] [-g<global ctrl>] \\\0A        [-G<group>] \\\0A        -i<ifname> -c<config file> [-C<ctrl>] [-D<driver>] [-p<driver_param>] \\\0A        [-b<br_ifname>] [-e<entropy file>] \\\0A        [-o<override driver>] [-O<override ctrl>] \\\0A        [-N -i<ifname> -c<conf> [-C<ctrl>] [-D<driver>] \\\0A        [-p<driver_param>] [-b<br_ifname>] [-I<config file>] ...]\0A\0Adrivers:\0A\00", align 1
@wpa_supplicant_version = common dso_local global i8* null, align 8
@wpa_supplicant_license = common dso_local global i8* null, align 8
@wpa_drivers = common dso_local global %struct.TYPE_2__** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"  %s = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [894 x i8] c"options:\0A  -b = optional bridge interface name\0A  -B = run daemon in the background\0A  -c = Configuration file\0A  -C = ctrl_interface parameter (only used if -c is not)\0A  -d = increase debugging verbosity (-dd even more)\0A  -D = driver name (can be multiple drivers: nl80211,wext)\0A  -e = entropy file\0A  -g = global ctrl_interface\0A  -G = global ctrl_interface group\0A  -h = show this help text\0A  -i = interface name\0A  -I = additional configuration file\0A  -K = include keys (passwords, etc.) in debug output\0A  -L = show license (BSD)\0A  -N = start describing new interface\0A  -o = override driver parameter for new interfaces\0A  -O = override ctrl_interface parameter for new interfaces\0A  -p = driver parameters\0A  -P = PID file\0A  -q = decrease debugging verbosity (-qq even less)\0A  -t = include timestamp in debug messages\0A  -v = show version\0A  -W = wait for a control interface monitor before starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"example:\0A  wpa_supplicant -D%s -iwlan0 -c/etc/wpa_supplicant.conf\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nl80211\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @wpa_supplicant_version, align 8
  %3 = load i8*, i8** @wpa_supplicant_license, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([415 x i8], [415 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %28, %0
  %6 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %6, i64 %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %5
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %26)
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %5

31:                                               ; preds = %5
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([894 x i8], [894 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i8* [ %42, %37 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %43 ]
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
