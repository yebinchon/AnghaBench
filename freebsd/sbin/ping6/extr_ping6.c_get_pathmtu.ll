; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_get_pathmtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_get_pathmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.msghdr = type { i32 }

@F_VERBOSE = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_MMTU = common dso_local global i64 0, align 8
@IPV6_PATHMTU = common dso_local global i64 0, align 8
@dst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*)* @get_pathmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pathmtu(%struct.msghdr* %0) #0 {
  %2 = alloca %struct.msghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %2, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
