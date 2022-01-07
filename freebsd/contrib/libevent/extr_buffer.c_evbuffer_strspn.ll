; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_strspn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_strspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_ptr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i32, i64, %struct.evbuffer_chain*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer_ptr*, i8*)* @evbuffer_strspn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evbuffer_strspn(%struct.evbuffer_ptr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer_ptr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer_chain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.evbuffer_ptr* %0, %struct.evbuffer_ptr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %12 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %13, align 8
  store %struct.evbuffer_chain* %14, %struct.evbuffer_chain** %7, align 8
  %15 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %16 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %20 = icmp ne %struct.evbuffer_chain* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %99
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %25 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %29 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %76, %23
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %36 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %57, %39
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %73

57:                                               ; preds = %45
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %60 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %61 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store %struct.evbuffer_chain* %59, %struct.evbuffer_chain** %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %65 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %69 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %103

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  br label %33

79:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  %80 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %81 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %80, i32 0, i32 2
  %82 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %81, align 8
  %83 = icmp ne %struct.evbuffer_chain* %82, null
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %86 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %87 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store %struct.evbuffer_chain* %85, %struct.evbuffer_chain** %88, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %91 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %95 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %103

99:                                               ; preds = %79
  %100 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %101 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %100, i32 0, i32 2
  %102 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %101, align 8
  store %struct.evbuffer_chain* %102, %struct.evbuffer_chain** %7, align 8
  br label %23

103:                                              ; preds = %84, %58, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
