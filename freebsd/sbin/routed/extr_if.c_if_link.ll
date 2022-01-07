; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_if_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_if_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i32, %struct.interface*, %struct.interface**, i32, %struct.interface*, %struct.interface**, i32, %struct.interface*, %struct.interface**, i32 }

@ifnet = common dso_local global i32 0, align 4
@int_list = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IS_REMOTE = common dso_local global i32 0, align 4
@remote_if = common dso_local global i32 0, align 4
@remote_list = common dso_local global i32 0, align 4
@IS_ALIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_link(%struct.interface* %0) #0 {
  %2 = alloca %struct.interface*, align 8
  %3 = alloca %struct.interface**, align 8
  store %struct.interface* %0, %struct.interface** %2, align 8
  %4 = load %struct.interface*, %struct.interface** %2, align 8
  %5 = load i32, i32* @int_list, align 4
  %6 = call i32 @LIST_INSERT_HEAD(i32* @ifnet, %struct.interface* %4, i32 %5)
  %7 = load %struct.interface*, %struct.interface** %2, align 8
  %8 = getelementptr inbounds %struct.interface, %struct.interface* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.interface** @AHASH(i32 %9)
  store %struct.interface** %10, %struct.interface*** %3, align 8
  %11 = load %struct.interface**, %struct.interface*** %3, align 8
  %12 = load %struct.interface*, %struct.interface** %2, align 8
  %13 = getelementptr inbounds %struct.interface, %struct.interface* %12, i32 0, i32 9
  store %struct.interface** %11, %struct.interface*** %13, align 8
  %14 = load %struct.interface**, %struct.interface*** %3, align 8
  %15 = load %struct.interface*, %struct.interface** %14, align 8
  %16 = load %struct.interface*, %struct.interface** %2, align 8
  %17 = getelementptr inbounds %struct.interface, %struct.interface* %16, i32 0, i32 8
  store %struct.interface* %15, %struct.interface** %17, align 8
  %18 = icmp ne %struct.interface* %15, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.interface*, %struct.interface** %2, align 8
  %21 = getelementptr inbounds %struct.interface, %struct.interface* %20, i32 0, i32 8
  %22 = load %struct.interface**, %struct.interface*** %3, align 8
  %23 = load %struct.interface*, %struct.interface** %22, align 8
  %24 = getelementptr inbounds %struct.interface, %struct.interface* %23, i32 0, i32 9
  store %struct.interface** %21, %struct.interface*** %24, align 8
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.interface*, %struct.interface** %2, align 8
  %27 = load %struct.interface**, %struct.interface*** %3, align 8
  store %struct.interface* %26, %struct.interface** %27, align 8
  %28 = load %struct.interface*, %struct.interface** %2, align 8
  %29 = getelementptr inbounds %struct.interface, %struct.interface* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IFF_BROADCAST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load %struct.interface*, %struct.interface** %2, align 8
  %36 = getelementptr inbounds %struct.interface, %struct.interface* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.interface** @BHASH(i32 %37)
  store %struct.interface** %38, %struct.interface*** %3, align 8
  %39 = load %struct.interface**, %struct.interface*** %3, align 8
  %40 = load %struct.interface*, %struct.interface** %2, align 8
  %41 = getelementptr inbounds %struct.interface, %struct.interface* %40, i32 0, i32 6
  store %struct.interface** %39, %struct.interface*** %41, align 8
  %42 = load %struct.interface**, %struct.interface*** %3, align 8
  %43 = load %struct.interface*, %struct.interface** %42, align 8
  %44 = load %struct.interface*, %struct.interface** %2, align 8
  %45 = getelementptr inbounds %struct.interface, %struct.interface* %44, i32 0, i32 5
  store %struct.interface* %43, %struct.interface** %45, align 8
  %46 = icmp ne %struct.interface* %43, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.interface*, %struct.interface** %2, align 8
  %49 = getelementptr inbounds %struct.interface, %struct.interface* %48, i32 0, i32 5
  %50 = load %struct.interface**, %struct.interface*** %3, align 8
  %51 = load %struct.interface*, %struct.interface** %50, align 8
  %52 = getelementptr inbounds %struct.interface, %struct.interface* %51, i32 0, i32 6
  store %struct.interface** %49, %struct.interface*** %52, align 8
  br label %53

53:                                               ; preds = %47, %34
  %54 = load %struct.interface*, %struct.interface** %2, align 8
  %55 = load %struct.interface**, %struct.interface*** %3, align 8
  store %struct.interface* %54, %struct.interface** %55, align 8
  br label %56

56:                                               ; preds = %53, %25
  %57 = load %struct.interface*, %struct.interface** %2, align 8
  %58 = getelementptr inbounds %struct.interface, %struct.interface* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IS_REMOTE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.interface*, %struct.interface** %2, align 8
  %65 = load i32, i32* @remote_list, align 4
  %66 = call i32 @LIST_INSERT_HEAD(i32* @remote_if, %struct.interface* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.interface*, %struct.interface** %2, align 8
  %69 = getelementptr inbounds %struct.interface, %struct.interface* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.interface** @nhash(i32 %70)
  store %struct.interface** %71, %struct.interface*** %3, align 8
  %72 = load %struct.interface*, %struct.interface** %2, align 8
  %73 = getelementptr inbounds %struct.interface, %struct.interface* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IS_ALIAS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %83, %78
  %80 = load %struct.interface**, %struct.interface*** %3, align 8
  %81 = load %struct.interface*, %struct.interface** %80, align 8
  %82 = icmp ne %struct.interface* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.interface**, %struct.interface*** %3, align 8
  %85 = load %struct.interface*, %struct.interface** %84, align 8
  %86 = getelementptr inbounds %struct.interface, %struct.interface* %85, i32 0, i32 2
  store %struct.interface** %86, %struct.interface*** %3, align 8
  br label %79

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %67
  %89 = load %struct.interface**, %struct.interface*** %3, align 8
  %90 = load %struct.interface*, %struct.interface** %2, align 8
  %91 = getelementptr inbounds %struct.interface, %struct.interface* %90, i32 0, i32 3
  store %struct.interface** %89, %struct.interface*** %91, align 8
  %92 = load %struct.interface**, %struct.interface*** %3, align 8
  %93 = load %struct.interface*, %struct.interface** %92, align 8
  %94 = load %struct.interface*, %struct.interface** %2, align 8
  %95 = getelementptr inbounds %struct.interface, %struct.interface* %94, i32 0, i32 2
  store %struct.interface* %93, %struct.interface** %95, align 8
  %96 = icmp ne %struct.interface* %93, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.interface*, %struct.interface** %2, align 8
  %99 = getelementptr inbounds %struct.interface, %struct.interface* %98, i32 0, i32 2
  %100 = load %struct.interface**, %struct.interface*** %3, align 8
  %101 = load %struct.interface*, %struct.interface** %100, align 8
  %102 = getelementptr inbounds %struct.interface, %struct.interface* %101, i32 0, i32 3
  store %struct.interface** %99, %struct.interface*** %102, align 8
  br label %103

103:                                              ; preds = %97, %88
  %104 = load %struct.interface*, %struct.interface** %2, align 8
  %105 = load %struct.interface**, %struct.interface*** %3, align 8
  store %struct.interface* %104, %struct.interface** %105, align 8
  ret void
}

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.interface*, i32) #1

declare dso_local %struct.interface** @AHASH(i32) #1

declare dso_local %struct.interface** @BHASH(i32) #1

declare dso_local %struct.interface** @nhash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
