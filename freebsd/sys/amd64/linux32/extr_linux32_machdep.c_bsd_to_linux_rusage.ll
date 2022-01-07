; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_bsd_to_linux_rusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_bsd_to_linux_rusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.l_rusage = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rusage*, %struct.l_rusage*)* @bsd_to_linux_rusage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsd_to_linux_rusage(%struct.rusage* %0, %struct.l_rusage* %1) #0 {
  %3 = alloca %struct.rusage*, align 8
  %4 = alloca %struct.l_rusage*, align 8
  store %struct.rusage* %0, %struct.rusage** %3, align 8
  store %struct.l_rusage* %1, %struct.l_rusage** %4, align 8
  %5 = load %struct.rusage*, %struct.rusage** %3, align 8
  %6 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 15
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %10 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.rusage*, %struct.rusage** %3, align 8
  %13 = getelementptr inbounds %struct.rusage, %struct.rusage* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %17 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %16, i32 0, i32 15
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.rusage*, %struct.rusage** %3, align 8
  %20 = getelementptr inbounds %struct.rusage, %struct.rusage* %19, i32 0, i32 14
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %24 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %23, i32 0, i32 14
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.rusage*, %struct.rusage** %3, align 8
  %27 = getelementptr inbounds %struct.rusage, %struct.rusage* %26, i32 0, i32 14
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %31 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %30, i32 0, i32 14
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.rusage*, %struct.rusage** %3, align 8
  %34 = getelementptr inbounds %struct.rusage, %struct.rusage* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %37 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  %38 = load %struct.rusage*, %struct.rusage** %3, align 8
  %39 = getelementptr inbounds %struct.rusage, %struct.rusage* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %42 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rusage*, %struct.rusage** %3, align 8
  %44 = getelementptr inbounds %struct.rusage, %struct.rusage* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %47 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rusage*, %struct.rusage** %3, align 8
  %49 = getelementptr inbounds %struct.rusage, %struct.rusage* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %52 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.rusage*, %struct.rusage** %3, align 8
  %54 = getelementptr inbounds %struct.rusage, %struct.rusage* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %57 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rusage*, %struct.rusage** %3, align 8
  %59 = getelementptr inbounds %struct.rusage, %struct.rusage* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %62 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rusage*, %struct.rusage** %3, align 8
  %64 = getelementptr inbounds %struct.rusage, %struct.rusage* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %67 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rusage*, %struct.rusage** %3, align 8
  %69 = getelementptr inbounds %struct.rusage, %struct.rusage* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %72 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rusage*, %struct.rusage** %3, align 8
  %74 = getelementptr inbounds %struct.rusage, %struct.rusage* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %77 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rusage*, %struct.rusage** %3, align 8
  %79 = getelementptr inbounds %struct.rusage, %struct.rusage* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %82 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rusage*, %struct.rusage** %3, align 8
  %84 = getelementptr inbounds %struct.rusage, %struct.rusage* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %87 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.rusage*, %struct.rusage** %3, align 8
  %89 = getelementptr inbounds %struct.rusage, %struct.rusage* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %92 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.rusage*, %struct.rusage** %3, align 8
  %94 = getelementptr inbounds %struct.rusage, %struct.rusage* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %97 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rusage*, %struct.rusage** %3, align 8
  %99 = getelementptr inbounds %struct.rusage, %struct.rusage* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.l_rusage*, %struct.l_rusage** %4, align 8
  %102 = getelementptr inbounds %struct.l_rusage, %struct.l_rusage* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
