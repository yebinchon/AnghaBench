; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_pnp.c_pnp_allocinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_pnp.c_pnp_allocinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnpinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pnpinfo* @pnp_allocinfo() #0 {
  %1 = alloca %struct.pnpinfo*, align 8
  %2 = call %struct.pnpinfo* @malloc(i32 4)
  store %struct.pnpinfo* %2, %struct.pnpinfo** %1, align 8
  %3 = load %struct.pnpinfo*, %struct.pnpinfo** %1, align 8
  %4 = call i32 @bzero(%struct.pnpinfo* %3, i32 4)
  %5 = load %struct.pnpinfo*, %struct.pnpinfo** %1, align 8
  %6 = getelementptr inbounds %struct.pnpinfo, %struct.pnpinfo* %5, i32 0, i32 0
  %7 = call i32 @STAILQ_INIT(i32* %6)
  %8 = load %struct.pnpinfo*, %struct.pnpinfo** %1, align 8
  ret %struct.pnpinfo* %8
}

declare dso_local %struct.pnpinfo* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.pnpinfo*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
