; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [873 x i8] c"HLR/AuC testing gateway for hostapd EAP-SIM/AKA database/authenticator\0ACopyright (c) 2005-2017, Jouni Malinen <j@w1.fi>\0A\0Ausage:\0Ahlr_auc_gw [-hu] [-s<socket path>] [-g<triplet file>] [-m<milenage file>] \\\0A        [-D<DB file>] [-i<IND len in bits>] [command]\0A\0Aoptions:\0A  -h = show this usage help\0A  -u = update SQN in Milenage file on exit\0A  -s<socket path> = path for UNIX domain socket\0A                    (default: %s)\0A  -g<triplet file> = path for GSM authentication triplets\0A  -m<milenage file> = path for Milenage keys\0A  -D<DB file> = path to SQLite database\0A  -i<IND len in bits> = IND length for SQN (default: 5)\0A\0AIf the optional command argument, like \22AKA-REQ-AUTH <IMSI>\22 is used, a single\0Acommand is processed with response sent to stdout. Otherwise, hlr_auc_gw opens\0Aa control interface and processes commands sent through it (e.g., by EAP server\0Ain hostapd).\0A\00", align 1
@default_socket_path = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i8*, i8** @default_socket_path, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([873 x i8], [873 x i8]* @.str, i64 0, i64 0), i8* %1)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
