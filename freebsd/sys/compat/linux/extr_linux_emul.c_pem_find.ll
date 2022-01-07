; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_pem_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_pem_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_pemuldata = type { i32 }
%struct.proc = type { %struct.linux_pemuldata* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linux_pemuldata* @pem_find(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.linux_pemuldata*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load %struct.proc*, %struct.proc** %2, align 8
  %5 = getelementptr inbounds %struct.proc, %struct.proc* %4, i32 0, i32 0
  %6 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %5, align 8
  store %struct.linux_pemuldata* %6, %struct.linux_pemuldata** %3, align 8
  %7 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %3, align 8
  ret %struct.linux_pemuldata* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
