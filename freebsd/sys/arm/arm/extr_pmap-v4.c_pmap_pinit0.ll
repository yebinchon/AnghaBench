; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_pinit0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_pinit0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"pmap_pinit0: pmap = %08x\0A\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_pinit0(%struct.pmap* %0) #0 {
  %2 = alloca %struct.pmap*, align 8
  store %struct.pmap* %0, %struct.pmap** %2, align 8
  %3 = load %struct.pmap*, %struct.pmap** %2, align 8
  %4 = ptrtoint %struct.pmap* %3 to i32
  %5 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i32 @PDEBUG(i32 1, i32 %5)
  %7 = load i32, i32* @kernel_pmap, align 4
  %8 = load %struct.pmap*, %struct.pmap** %2, align 8
  %9 = call i32 @bcopy(i32 %7, %struct.pmap* %8, i32 4)
  %10 = load %struct.pmap*, %struct.pmap** %2, align 8
  %11 = getelementptr inbounds %struct.pmap, %struct.pmap* %10, i32 0, i32 0
  %12 = call i32 @bzero(i32* %11, i32 4)
  %13 = load %struct.pmap*, %struct.pmap** %2, align 8
  %14 = call i32 @PMAP_LOCK_INIT(%struct.pmap* %13)
  ret void
}

declare dso_local i32 @PDEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bcopy(i32, %struct.pmap*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_INIT(%struct.pmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
