; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_PRESERVE_PINNED.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_PRESERVE_PINNED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain**, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i64, i64, i64, %struct.evbuffer_chain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer_chain**, %struct.evbuffer_chain**)* @PRESERVE_PINNED to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PRESERVE_PINNED(%struct.evbuffer* %0, %struct.evbuffer_chain** %1, %struct.evbuffer_chain** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca %struct.evbuffer_chain**, align 8
  %7 = alloca %struct.evbuffer_chain**, align 8
  %8 = alloca %struct.evbuffer_chain*, align 8
  %9 = alloca %struct.evbuffer_chain**, align 8
  %10 = alloca %struct.evbuffer_chain*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store %struct.evbuffer_chain** %1, %struct.evbuffer_chain*** %6, align 8
  store %struct.evbuffer_chain** %2, %struct.evbuffer_chain*** %7, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %12 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %11)
  %13 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %14 = call i32 @HAS_PINNED_R(%struct.evbuffer* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %7, align 8
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %17, align 8
  %18 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %6, align 8
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %18, align 8
  store i32 0, i32* %4, align 4
  br label %107

19:                                               ; preds = %3
  %20 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %21 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %20, i32 0, i32 0
  %22 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %21, align 8
  store %struct.evbuffer_chain** %22, %struct.evbuffer_chain*** %9, align 8
  %23 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %23, align 8
  %25 = call i32 @CHAIN_PINNED_R(%struct.evbuffer_chain* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %29 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %28, align 8
  %30 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %29, i32 0, i32 3
  store %struct.evbuffer_chain** %30, %struct.evbuffer_chain*** %9, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %33 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %32, align 8
  %34 = call i32 @CHAIN_PINNED_R(%struct.evbuffer_chain* %33)
  %35 = call i32 @EVUTIL_ASSERT(i32 %34)
  %36 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %37 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %36, align 8
  %38 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %6, align 8
  store %struct.evbuffer_chain* %37, %struct.evbuffer_chain** %38, align 8
  store %struct.evbuffer_chain* %37, %struct.evbuffer_chain** %8, align 8
  %39 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %40 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %39, i32 0, i32 1
  %41 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %40, align 8
  %42 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %7, align 8
  store %struct.evbuffer_chain* %41, %struct.evbuffer_chain** %42, align 8
  %43 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %44 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %31
  %48 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %49 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %50 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %49, i32 0, i32 0
  %51 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %50, align 8
  %52 = icmp eq %struct.evbuffer_chain** %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @EVUTIL_ASSERT(i32 %53)
  %55 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %56 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %57)
  store %struct.evbuffer_chain* %58, %struct.evbuffer_chain** %10, align 8
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %60 = icmp ne %struct.evbuffer_chain* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %107

62:                                               ; preds = %47
  %63 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %64 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %67 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %70 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %74 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @memcpy(i64 %65, i64 %72, i64 %75)
  %77 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %78 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %81 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %83 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %84 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %83, i32 0, i32 0
  %85 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %84, align 8
  store %struct.evbuffer_chain* %82, %struct.evbuffer_chain** %85, align 8
  %86 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %87 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %88 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %87, i32 0, i32 1
  store %struct.evbuffer_chain* %86, %struct.evbuffer_chain** %88, align 8
  %89 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %90 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %93 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %97 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  br label %106

98:                                               ; preds = %31
  %99 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %100 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %99, i32 0, i32 0
  %101 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %100, align 8
  %102 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %101, align 8
  %103 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %104 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %103, i32 0, i32 1
  store %struct.evbuffer_chain* %102, %struct.evbuffer_chain** %104, align 8
  %105 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %105, align 8
  br label %106

106:                                              ; preds = %98, %62
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %61, %16
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @HAS_PINNED_R(%struct.evbuffer*) #1

declare dso_local i32 @CHAIN_PINNED_R(%struct.evbuffer_chain*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_chain_new(i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
