; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_ptr_memcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_ptr_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64 }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i64, %struct.evbuffer_chain*, i64, i64 }

@EV_SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer_ptr*, i8*, i64)* @evbuffer_ptr_memcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evbuffer_ptr_memcmp(%struct.evbuffer* %0, %struct.evbuffer_ptr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca %struct.evbuffer_ptr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.evbuffer_chain*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %6, align 8
  store %struct.evbuffer_ptr* %1, %struct.evbuffer_ptr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %15 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %14)
  %16 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %17 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @EV_SIZE_MAX, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub i64 %21, %22
  %24 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %25 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %30 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %35 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28, %20, %4
  store i32 -1, i32* %5, align 4
  br label %100

39:                                               ; preds = %28
  %40 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %41 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %42, align 8
  store %struct.evbuffer_chain* %43, %struct.evbuffer_chain** %10, align 8
  %44 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %7, align 8
  %45 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %89, %39
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %53 = icmp ne %struct.evbuffer_chain* %52, null
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  br i1 %55, label %56, label %99

56:                                               ; preds = %54
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %61 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %66 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %67, %68
  store i64 %69, i64* %13, align 8
  br label %72

70:                                               ; preds = %56
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %74 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %77 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %79, %80
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @memcmp(i64 %81, i8* %82, i64 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %100

89:                                               ; preds = %72
  %90 = load i64, i64* %13, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 %90
  store i8* %92, i8** %8, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %9, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %96 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %97 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %96, i32 0, i32 1
  %98 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %97, align 8
  store %struct.evbuffer_chain* %98, %struct.evbuffer_chain** %10, align 8
  br label %48

99:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %87, %38
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @memcmp(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
