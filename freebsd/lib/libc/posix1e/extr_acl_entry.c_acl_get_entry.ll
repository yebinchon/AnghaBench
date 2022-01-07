; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_entry.c_acl_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_entry.c_acl_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.acl }
%struct.acl = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_get_entry(%struct.TYPE_3__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.acl*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.acl* %15, %struct.acl** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %41 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %13, %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %43

30:                                               ; preds = %20
  %31 = load %struct.acl*, %struct.acl** %8, align 8
  %32 = getelementptr inbounds %struct.acl, %struct.acl* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32**, i32*** %7, align 8
  store i32* %39, i32** %40, align 8
  store i32 1, i32* %4, align 4
  br label %43

41:                                               ; preds = %13
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %30, %29, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
