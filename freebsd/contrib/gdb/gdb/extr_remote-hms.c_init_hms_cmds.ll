; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-hms.c_init_hms_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-hms.c_init_hms_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i32*, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i32*, i32*, i32*, i32*, i32* }

@MO_CLR_BREAK_USES_ADDR = common dso_local global i32 0, align 4
@MO_FILL_USES_ADDR = common dso_local global i32 0, align 4
@MO_GETMEM_NEEDS_RANGE = common dso_local global i32 0, align 4
@hms_cmds = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@hms_inits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"g\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"s\0D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\03\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"b %x\0D\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"b - %x\0D\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"b -\0D\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"f %x %x %x\0D\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"m.b %x=%x\0D\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"m.w %x=%x\0D\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"m.b %x %x\0D\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"m.w %x %x\0D\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"r %s=%x\0D\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"r %s\0D\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"r\0D\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"\\(\\w+\\)=\\([0-9a-fA-F]+\\)\00", align 1
@hms_supply_register = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"tl\0D\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@hms_ops = common dso_local global i32 0, align 4
@SERIAL_1_STOPBITS = common dso_local global i32 0, align 4
@hms_regnames = common dso_local global i32 0, align 4
@MONITOR_OPS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_hms_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hms_cmds() #0 {
  %1 = load i32, i32* @MO_CLR_BREAK_USES_ADDR, align 4
  %2 = load i32, i32* @MO_FILL_USES_ADDR, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @MO_GETMEM_NEEDS_RANGE, align 4
  %5 = or i32 %3, %4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 0), align 8
  %6 = load i32, i32* @hms_inits, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 25), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 7), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 0), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 24, i32 2), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 0), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 5), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 2), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 3), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 23, i32 4), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 22, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 22, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 22, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 22, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 21, i32 0), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 21, i32 1), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 21, i32 2), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 21, i32 3), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 9), align 8
  %7 = load i32, i32* @hms_supply_register, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 20), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 19), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 18), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 11), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 12), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 17), align 8
  store i32* @hms_ops, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 16), align 8
  %8 = load i32, i32* @SERIAL_1_STOPBITS, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 15), align 8
  %9 = load i32, i32* @hms_regnames, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 14), align 4
  %10 = load i32, i32* @MONITOR_OPS_MAGIC, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hms_cmds, i32 0, i32 13), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
