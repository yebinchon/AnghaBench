; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [720 x i8] c"Usage: kexfuzz [-hcdrv] [-D direction] [-f data_file]\0A               [-K kex_alg] [-k private_key] [-i packet_index]\0A\0AOptions:\0A    -h               Display this help\0A    -c               Count packets sent during KEX\0A    -d               Dump mode: record KEX packet to data file\0A    -r               Replace mode: replace packet with data file\0A    -v               Turn on verbose logging\0A    -D S2C|C2S       Packet direction for replacement or dump\0A    -f data_file     Path to data file for replacement or dump\0A    -K kex_alg       Name of KEX algorithm to test (see below)\0A    -k private_key   Path to private key file\0A    -i packet_index  Index of packet to replace or dump (from 0)\0A\0AAvailable KEX algorithms: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i8* @kex_alg_list(i8 signext 32)
  %3 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([720 x i8], [720 x i8]* @.str, i64 0, i64 0), i8* %2)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @kex_alg_list(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
