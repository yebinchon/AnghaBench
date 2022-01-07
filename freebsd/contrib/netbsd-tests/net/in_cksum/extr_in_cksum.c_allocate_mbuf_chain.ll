; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/in_cksum/extr_in_cksum.c_allocate_mbuf_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/in_cksum/extr_in_cksum.c_allocate_mbuf_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i8*, i32, %struct.mbuf* }

@random_aligned = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8**)* @allocate_mbuf_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @allocate_mbuf_chain(i8** %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %54

11:                                               ; preds = %1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @atoi(i8* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* @random_aligned, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = call i32 (...) @rand()
  %19 = srem i32 %18, 64
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.mbuf* @malloc(i32 %29)
  store %struct.mbuf* %30, %struct.mbuf** %6, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = icmp eq %struct.mbuf* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @err(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = bitcast %struct.mbuf* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = call %struct.mbuf* @allocate_mbuf_chain(i8** %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 2
  store %struct.mbuf* %50, %struct.mbuf** %52, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %53, %struct.mbuf** %2, align 8
  br label %54

54:                                               ; preds = %36, %10
  %55 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %55
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.mbuf* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
