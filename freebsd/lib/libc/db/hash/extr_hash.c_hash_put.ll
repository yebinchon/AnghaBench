; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash.c_hash_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash.c_hash_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i8* }

@R_NOOVERWRITE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i8* null, align 8
@HASH_PUTNEW = common dso_local global i32 0, align 4
@HASH_PUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i64)* @hash_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_put(%struct.TYPE_6__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @R_NOOVERWRITE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8*, i8** @EINVAL, align 8
  store i8* %22, i8** @errno, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %53

26:                                               ; preds = %17, %4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @O_ACCMODE, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i8*, i8** @EPERM, align 8
  store i8* %35, i8** @errno, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @ERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @R_NOOVERWRITE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @HASH_PUTNEW, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @HASH_PUT, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @hash_access(%struct.TYPE_5__* %40, i32 %49, i32* %50, i32* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %34, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @hash_access(%struct.TYPE_5__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
