; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_bus_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_bus_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_spec = type { i32, i32 }
%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_release_resources(i32 %0, %struct.resource_spec* %1, %struct.resource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_spec*, align 8
  %6 = alloca %struct.resource**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.resource_spec* %1, %struct.resource_spec** %5, align 8
  store %struct.resource** %2, %struct.resource*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %48, %3
  %9 = load %struct.resource_spec*, %struct.resource_spec** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %9, i64 %11
  %13 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %51

16:                                               ; preds = %8
  %17 = load %struct.resource**, %struct.resource*** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %17, i64 %19
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.resource_spec*, %struct.resource_spec** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %25, i64 %27
  %29 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.resource_spec*, %struct.resource_spec** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %31, i64 %33
  %35 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resource**, %struct.resource*** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.resource*, %struct.resource** %37, i64 %39
  %41 = load %struct.resource*, %struct.resource** %40, align 8
  %42 = call i32 @bus_release_resource(i32 %24, i32 %30, i32 %36, %struct.resource* %41)
  %43 = load %struct.resource**, %struct.resource*** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.resource*, %struct.resource** %43, i64 %45
  store %struct.resource* null, %struct.resource** %46, align 8
  br label %47

47:                                               ; preds = %23, %16
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %8

51:                                               ; preds = %8
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
