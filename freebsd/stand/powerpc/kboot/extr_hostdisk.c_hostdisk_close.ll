; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_hostdisk.c_hostdisk_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_hostdisk.c_hostdisk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.devdesc* }
%struct.devdesc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @hostdisk_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostdisk_close(%struct.open_file* %0) #0 {
  %2 = alloca %struct.open_file*, align 8
  %3 = alloca %struct.devdesc*, align 8
  store %struct.open_file* %0, %struct.open_file** %2, align 8
  %4 = load %struct.open_file*, %struct.open_file** %2, align 8
  %5 = getelementptr inbounds %struct.open_file, %struct.open_file* %4, i32 0, i32 0
  %6 = load %struct.devdesc*, %struct.devdesc** %5, align 8
  store %struct.devdesc* %6, %struct.devdesc** %3, align 8
  %7 = load %struct.devdesc*, %struct.devdesc** %3, align 8
  %8 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @host_close(i32 %9)
  ret i32 0
}

declare dso_local i32 @host_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
