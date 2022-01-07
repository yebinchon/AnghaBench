; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_copyout_rusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_copyout_rusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i32 }
%struct.l_rusage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_copyout_rusage(%struct.rusage* %0, i8* %1) #0 {
  %3 = alloca %struct.rusage*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l_rusage, align 4
  store %struct.rusage* %0, %struct.rusage** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.rusage*, %struct.rusage** %3, align 8
  %7 = call i32 @bsd_to_linux_rusage(%struct.rusage* %6, %struct.l_rusage* %5)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @copyout(%struct.l_rusage* %5, i8* %8, i32 4)
  ret i32 %9
}

declare dso_local i32 @bsd_to_linux_rusage(%struct.rusage*, %struct.l_rusage*) #1

declare dso_local i32 @copyout(%struct.l_rusage*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
