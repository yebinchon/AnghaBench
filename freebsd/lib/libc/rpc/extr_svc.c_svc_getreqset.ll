; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_getreqset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_getreqset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@FD_SETSIZE = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_getreqset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FD_SETSIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %34, %19
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ffsl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @svc_getreq_common(i32 %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl i64 1, %37
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %23

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* @NFDBITS, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i32 @svc_getreq_common(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
