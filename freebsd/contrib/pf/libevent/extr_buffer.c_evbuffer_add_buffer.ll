; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_add_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i32, i32, i32 (%struct.evbuffer*, i64, i64, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_add_buffer(%struct.evbuffer* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer, align 8
  %8 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %5, align 8
  %9 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %10 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %2
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %18 = call i32 @SWAP(%struct.evbuffer* %7, %struct.evbuffer* %17)
  %19 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %20 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %21 = call i32 @SWAP(%struct.evbuffer* %19, %struct.evbuffer* %20)
  %22 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %23 = call i32 @SWAP(%struct.evbuffer* %22, %struct.evbuffer* %7)
  %24 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %25 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %13
  %30 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %31 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %30, i32 0, i32 3
  %32 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.evbuffer*, i64, i64, i32)* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %36 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %35, i32 0, i32 3
  %37 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %36, align 8
  %38 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %41 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %44 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %37(%struct.evbuffer* %38, i64 %39, i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %34, %29, %13
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %52 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %51, i32 0, i32 3
  %53 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.evbuffer*, i64, i64, i32)* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %57 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %56, i32 0, i32 3
  %58 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %57, align 8
  %59 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %62 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %58(%struct.evbuffer* %59, i64 0, i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %55, %50, %47
  store i32 0, i32* %3, align 4
  br label %85

66:                                               ; preds = %2
  %67 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %68 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %69 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %72 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @evbuffer_add(%struct.evbuffer* %67, i32 %70, i64 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %79 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %80 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @evbuffer_drain(%struct.evbuffer* %78, i64 %81)
  br label %83

83:                                               ; preds = %77, %66
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %65
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @SWAP(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i32, i64) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
