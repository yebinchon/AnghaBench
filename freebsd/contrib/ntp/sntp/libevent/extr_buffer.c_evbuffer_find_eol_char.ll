; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_find_eol_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_find_eol_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_ptr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i32, %struct.evbuffer_chain*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer_ptr*)* @evbuffer_find_eol_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evbuffer_find_eol_char(%struct.evbuffer_ptr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evbuffer_ptr*, align 8
  %4 = alloca %struct.evbuffer_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.evbuffer_ptr* %0, %struct.evbuffer_ptr** %3, align 8
  %8 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %9 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  store %struct.evbuffer_chain* %11, %struct.evbuffer_chain** %4, align 8
  %12 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %13 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %69, %1
  %17 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %18 = icmp ne %struct.evbuffer_chain* %17, null
  br i1 %18, label %19, label %84

19:                                               ; preds = %16
  %20 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %21 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %25 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %33 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %34, %35
  %37 = call i8* @find_eol_char(i8* %31, i64 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %69

40:                                               ; preds = %19
  %41 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %42 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %43 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.evbuffer_chain* %41, %struct.evbuffer_chain** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %51 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %57, %58
  %60 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %61 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %67 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %19
  %70 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %71 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = sub i64 %72, %73
  %75 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %3, align 8
  %76 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  store i64 0, i64* %5, align 8
  %81 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %82 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %81, i32 0, i32 1
  %83 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %82, align 8
  store %struct.evbuffer_chain* %83, %struct.evbuffer_chain** %4, align 8
  br label %16

84:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @find_eol_char(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
