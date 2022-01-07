; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_io_setbclient.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_io_setbclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i64, i64, i32, i32, i32, i32, i64, %struct.interface* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"io_setbclient: Broadcast Client disabled by build\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INT_BCASTOPEN = common dso_local global i32 0, align 4
@INT_BROADCAST = common dso_local global i32 0, align 4
@INT_LOOPBACK = common dso_local global i32 0, align 4
@INT_WILDCARD = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@ISC_FALSE = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@broadcast_client_enabled = common dso_local global i32 0, align 4
@ep_list = common dso_local global %struct.interface* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_setbclient() #0 {
  %1 = load i32, i32* @LOG_ERR, align 4
  %2 = call i32 (i32, i8*, ...) @msyslog(i32 %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @msyslog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
