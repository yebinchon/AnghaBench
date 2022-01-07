; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_expand(%struct.evbuffer* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %10 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %11, %14
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %19 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %32 = call i32 @evbuffer_align(%struct.evbuffer* %31)
  br label %77

33:                                               ; preds = %24
  %34 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %35 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %37, 256
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 256, i64* %8, align 8
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = shl i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %41

48:                                               ; preds = %41
  %49 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %50 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %53 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %58 = call i32 @evbuffer_align(%struct.evbuffer* %57)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %61 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i8* @realloc(i64 %62, i64 %63)
  store i8* %64, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %78

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %71 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %73 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %72, i32 0, i32 3
  store i64 %69, i64* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %76 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %30
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %66, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @evbuffer_align(%struct.evbuffer*) #1

declare dso_local i8* @realloc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
