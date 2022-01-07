; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_ptr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @evbuffer_find(%struct.evbuffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evbuffer_ptr, align 8
  %9 = alloca %struct.evbuffer_ptr, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @evbuffer_search(%struct.evbuffer* %12, i8* %13, i64 %14, i32* null)
  %16 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %9, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = bitcast %struct.evbuffer_ptr* %8 to i8*
  %18 = bitcast %struct.evbuffer_ptr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* null, i8** %7, align 8
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %25 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %26, %27
  %29 = call i8* @evbuffer_pullup(%struct.evbuffer* %24, i64 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %32, %23
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %40 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %39)
  %41 = load i8*, i8** %7, align 8
  ret i8* %41
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i64 @evbuffer_search(%struct.evbuffer*, i8*, i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @evbuffer_pullup(%struct.evbuffer*, i64) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
