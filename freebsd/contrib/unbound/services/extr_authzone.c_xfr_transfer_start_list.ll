; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_start_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_transfer_start_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.auth_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.auth_master*)* @xfr_transfer_start_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_transfer_start_list(%struct.auth_xfer* %0, %struct.auth_master* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.auth_master*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %3, align 8
  store %struct.auth_master* %1, %struct.auth_master** %4, align 8
  %5 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %6 = icmp ne %struct.auth_master* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.auth_master*, %struct.auth_master** %4, align 8
  %14 = getelementptr inbounds %struct.auth_master, %struct.auth_master* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_5__* @find_master_by_host(%struct.TYPE_6__* %12, i32 %15)
  %17 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %18 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %22 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %7
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %29 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %33 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %37 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %27
  %45 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %46 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %53 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32* %51, i32** %55, align 8
  br label %56

56:                                               ; preds = %44, %27
  br label %103

57:                                               ; preds = %7
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %60 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %68 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %73 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %75, align 8
  %76 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %77 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %58
  %83 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %84 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %82
  %92 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %93 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %100 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32* %98, i32** %102, align 8
  br label %103

103:                                              ; preds = %56, %91, %82, %58
  ret void
}

declare dso_local %struct.TYPE_5__* @find_master_by_host(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
