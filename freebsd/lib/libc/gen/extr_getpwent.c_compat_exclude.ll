; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_exclude.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32)* }
%struct.TYPE_8__ = type { i8*, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@DB_HASH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__**)* @compat_exclude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_exclude(i8* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = load i32, i32* @DB_HASH, align 4
  %14 = call %struct.TYPE_9__* @dbopen(i32* null, i32 %12, i32 600, i32 %13, i32 0)
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %15, align 8
  %16 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %11, %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* null, i8** %26, align 8
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32)** %29, align 8
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 %30(%struct.TYPE_9__* %32, %struct.TYPE_8__* %6, %struct.TYPE_8__* %7, i32 0)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_9__* @dbopen(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
