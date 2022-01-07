; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_dummynet_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_dummynet_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_id = type { i32 }

@DN_CMD_FLUSH = common dso_local global i32 0, align 4
@DN_API_VERSION = common dso_local global i32 0, align 4
@IP_DUMMYNET3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummynet_flush() #0 {
  %1 = alloca %struct.dn_id, align 4
  %2 = load i32, i32* @DN_CMD_FLUSH, align 4
  %3 = load i32, i32* @DN_API_VERSION, align 4
  %4 = call i32 @oid_fill(%struct.dn_id* %1, i32 4, i32 %2, i32 %3)
  %5 = load i32, i32* @IP_DUMMYNET3, align 4
  %6 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @do_cmd(i32 %5, %struct.dn_id* %1, i32 %7)
  ret void
}

declare dso_local i32 @oid_fill(%struct.dn_id*, i32, i32, i32) #1

declare dso_local i32 @do_cmd(i32, %struct.dn_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
