; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [648 x i8] c"\0Ausage: hostapd [-hdBKtv] [-P <PID file>] [-e <entropy file>] \\\0A         [-g <global ctrl_iface>] [-G <group>]\\\0A         [-i <comma-separated list of interface names>]\\\0A         <configuration file(s)>\0A\0Aoptions:\0A   -h   show this usage\0A   -d   show more debug messages (-dd for even more)\0A   -B   run daemon in the background\0A   -e   entropy file\0A   -g   global control interface path\0A   -G   group for control interfaces\0A   -P   PID file\0A   -K   include key data in debug messages\0A   -i   list of interface names to use\0A   -S   start all the interfaces synchronously\0A   -t   include timestamps in some debug messages\0A   -v   show hostapd version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 (...) @show_version()
  %2 = load i32, i32* @stderr, align 4
  %3 = call i32 @fprintf(i32 %2, i8* getelementptr inbounds ([648 x i8], [648 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @show_version(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
