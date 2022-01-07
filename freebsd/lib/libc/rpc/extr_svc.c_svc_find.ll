; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_callout = type { i64, i64, i32*, %struct.svc_callout* }

@svc_head = common dso_local global %struct.svc_callout* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_callout* (i64, i64, %struct.svc_callout**, i8*)* @svc_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_callout* @svc_find(i64 %0, i64 %1, %struct.svc_callout** %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_callout**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.svc_callout*, align 8
  %10 = alloca %struct.svc_callout*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.svc_callout** %2, %struct.svc_callout*** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.svc_callout**, %struct.svc_callout*** %7, align 8
  %12 = icmp ne %struct.svc_callout** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store %struct.svc_callout* null, %struct.svc_callout** %10, align 8
  %15 = load %struct.svc_callout*, %struct.svc_callout** @svc_head, align 8
  store %struct.svc_callout* %15, %struct.svc_callout** %9, align 8
  br label %16

16:                                               ; preds = %49, %4
  %17 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  %18 = icmp ne %struct.svc_callout* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  %21 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  %27 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  %36 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  %42 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @strcmp(i8* %40, i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %34, %31
  br label %53

47:                                               ; preds = %39, %25, %19
  %48 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  store %struct.svc_callout* %48, %struct.svc_callout** %10, align 8
  br label %49

49:                                               ; preds = %47
  %50 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  %51 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %50, i32 0, i32 3
  %52 = load %struct.svc_callout*, %struct.svc_callout** %51, align 8
  store %struct.svc_callout* %52, %struct.svc_callout** %9, align 8
  br label %16

53:                                               ; preds = %46, %16
  %54 = load %struct.svc_callout*, %struct.svc_callout** %10, align 8
  %55 = load %struct.svc_callout**, %struct.svc_callout*** %7, align 8
  store %struct.svc_callout* %54, %struct.svc_callout** %55, align 8
  %56 = load %struct.svc_callout*, %struct.svc_callout** %9, align 8
  ret %struct.svc_callout* %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
