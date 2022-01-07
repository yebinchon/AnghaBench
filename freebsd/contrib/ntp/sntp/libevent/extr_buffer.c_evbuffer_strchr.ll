; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_strchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_strchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_ptr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i32, %struct.evbuffer_chain*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer_ptr*, i8)* @evbuffer_strchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evbuffer_strchr(%struct.evbuffer_ptr* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer_ptr*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.evbuffer_chain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.evbuffer_ptr* %0, %struct.evbuffer_ptr** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %11 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  store %struct.evbuffer_chain* %13, %struct.evbuffer_chain** %6, align 8
  %14 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %15 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %72, %2
  %19 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %20 = icmp ne %struct.evbuffer_chain* %19, null
  br i1 %20, label %21, label %87

21:                                               ; preds = %18
  %22 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %23 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %27 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %5, align 1
  %35 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %36 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %37, %38
  %40 = call i8* @memchr(i8* %33, i8 signext %34, i64 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %21
  %44 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %45 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %46 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.evbuffer_chain* %44, %struct.evbuffer_chain** %47, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %54 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %60, %61
  %63 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %64 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  %69 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %70 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  br label %88

72:                                               ; preds = %21
  %73 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %74 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %75, %76
  %78 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %4, align 8
  %79 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  store i64 0, i64* %7, align 8
  %84 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %85 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %84, i32 0, i32 1
  %86 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %85, align 8
  store %struct.evbuffer_chain* %86, %struct.evbuffer_chain** %6, align 8
  br label %18

87:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
