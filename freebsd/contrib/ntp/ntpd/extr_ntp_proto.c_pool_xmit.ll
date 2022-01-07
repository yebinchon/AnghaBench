; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_pool_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_pool_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i64, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@MODE_CLIENT = common dso_local global i32 0, align 4
@POOL_SOLICIT_WINDOW = common dso_local global i64 0, align 8
@RES_FLAGS = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@pool_name_resolved = common dso_local global i32 0, align 4
@sys_leap = common dso_local global i32 0, align 4
@sys_precision = common dso_local global i32 0, align 4
@sys_refid = common dso_local global i32 0, align 4
@sys_reftime = common dso_local global i32 0, align 4
@sys_rootdelay = common dso_local global i32 0, align 4
@sys_rootdisp = common dso_local global i32 0, align 4
@sys_stratum = common dso_local global i32 0, align 4
@sys_ttl = common dso_local global i32* null, align 8
@sys_ttlmax = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.peer*)* @pool_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_xmit(%struct.peer* %0) #0 {
  %2 = alloca %struct.peer*, align 8
  store %struct.peer* %0, %struct.peer** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
