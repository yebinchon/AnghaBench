; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_newstat_copyout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_newstat_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.l_newstat = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stat*, i8*)* @newstat_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newstat_copyout(%struct.stat* %0, i8* %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.l_newstat, align 4
  store %struct.stat* %0, %struct.stat** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @bzero(%struct.l_newstat* %5, i32 64)
  %7 = load %struct.stat*, %struct.stat** %3, align 8
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_to_ldev(i32 %9)
  %11 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 12
  store i32 %10, i32* %11, align 4
  %12 = load %struct.stat*, %struct.stat** %3, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 11
  store i32 %14, i32* %15, align 4
  %16 = load %struct.stat*, %struct.stat** %3, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 10
  store i32 %18, i32* %19, align 4
  %20 = load %struct.stat*, %struct.stat** %3, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 9
  store i32 %22, i32* %23, align 4
  %24 = load %struct.stat*, %struct.stat** %3, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.stat*, %struct.stat** %3, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 7
  store i32 %30, i32* %31, align 4
  %32 = load %struct.stat*, %struct.stat** %3, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = load %struct.stat*, %struct.stat** %3, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load %struct.stat*, %struct.stat** %3, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.stat*, %struct.stat** %3, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.stat*, %struct.stat** %3, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.stat*, %struct.stat** %3, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.stat*, %struct.stat** %3, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.stat*, %struct.stat** %3, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.stat*, %struct.stat** %3, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.stat*, %struct.stat** %3, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.l_newstat, %struct.l_newstat* %5, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @copyout(%struct.l_newstat* %5, i8* %84, i32 64)
  ret i32 %85
}

declare dso_local i32 @bzero(%struct.l_newstat*, i32) #1

declare dso_local i32 @dev_to_ldev(i32) #1

declare dso_local i32 @copyout(%struct.l_newstat*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
