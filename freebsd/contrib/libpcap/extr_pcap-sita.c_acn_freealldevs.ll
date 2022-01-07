; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_freealldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_acn_freealldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@acn_if_list = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acn_freealldevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acn_freealldevs() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @acn_if_list, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  br label %6

6:                                                ; preds = %90, %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %92

9:                                                ; preds = %6
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  br label %16

16:                                               ; preds = %65, %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = call i32 @free(%struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @free(%struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_5__* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @free(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = call i32 @free(%struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %3, align 8
  br label %16

67:                                               ; preds = %16
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @free(%struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @free(%struct.TYPE_5__* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %89 = call i32 @free(%struct.TYPE_5__* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %1, align 8
  br label %6

92:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
