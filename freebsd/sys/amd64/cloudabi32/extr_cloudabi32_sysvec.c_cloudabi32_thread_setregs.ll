; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_thread_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_thread_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi32_thread_setregs(%struct.thread* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @TO_PTR(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 12
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.thread*, %struct.thread** %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @TO_PTR(i32 %25)
  %27 = call i32 @cpu_set_upcall(%struct.thread* %22, i32 %26, i32* null, %struct.TYPE_7__* %8)
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.thread*, %struct.thread** %5, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.thread*, %struct.thread** %5, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @copyout(i32* %44, i8* %45, i32 12)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %55

51:                                               ; preds = %3
  %52 = load %struct.thread*, %struct.thread** %5, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @cpu_set_user_tls(%struct.thread* %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @TO_PTR(i32) #1

declare dso_local i32 @cpu_set_upcall(%struct.thread*, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @cpu_set_user_tls(%struct.thread*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
