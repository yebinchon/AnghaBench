; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [905 x i8] c"usage: hs20-osu-client [-dddqqKt] [-S<station ifname>] \\\0A    [-w<wpa_supplicant ctrl_iface dir>] [-r<result file>] [-f<debug file>] \\\0A    [-s<summary file>] \\\0A    [-x<spp.xsd file name>] \\\0A    <command> [arguments..]\0Acommands:\0A- to_tnds <XML MO> <XML MO in TNDS format> [URN]\0A- to_tnds2 <XML MO> <XML MO in TNDS format (Path) [URN]>\0A- from_tnds <XML MO in TNDS format> <XML MO>\0A- set_pps <PerProviderSubscription XML file name>\0A- get_fqdn <PerProviderSubscription XML file name>\0A- pol_upd [Server URL] [PPS] [CA cert]\0A- sub_rem <Server URL> [PPS] [CA cert]\0A- prov <Server URL> [CA cert]\0A- oma_dm_prov <Server URL> [CA cert]\0A- sim_prov <Server URL> [CA cert]\0A- oma_dm_sim_prov <Server URL> [CA cert]\0A- signup [CA cert]\0A- dl_osu_ca <PPS> <CA file>\0A- dl_polupd_ca <PPS> <CA file>\0A- dl_aaa_ca <PPS> <CA file>\0A- browser <URL>\0A- parse_cert <X.509 certificate (DER)>\0A- osu_select <OSU info directory> [CA cert]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([905 x i8], [905 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
