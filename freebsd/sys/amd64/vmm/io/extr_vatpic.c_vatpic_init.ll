; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32, %struct.vm* }
%struct.vm = type { i32 }

@M_VATPIC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vatpic lock\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vatpic* @vatpic_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca %struct.vatpic*, align 8
  store %struct.vm* %0, %struct.vm** %2, align 8
  %4 = load i32, i32* @M_VATPIC, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.vatpic* @malloc(i32 16, i32 %4, i32 %7)
  store %struct.vatpic* %8, %struct.vatpic** %3, align 8
  %9 = load %struct.vm*, %struct.vm** %2, align 8
  %10 = load %struct.vatpic*, %struct.vatpic** %3, align 8
  %11 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %10, i32 0, i32 1
  store %struct.vm* %9, %struct.vm** %11, align 8
  %12 = load %struct.vatpic*, %struct.vatpic** %3, align 8
  %13 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %12, i32 0, i32 0
  %14 = load i32, i32* @MTX_SPIN, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14)
  %16 = load %struct.vatpic*, %struct.vatpic** %3, align 8
  ret %struct.vatpic* %16
}

declare dso_local %struct.vatpic* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
