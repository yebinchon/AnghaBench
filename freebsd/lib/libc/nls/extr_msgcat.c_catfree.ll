; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nls/extr_msgcat.c_catfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nls/extr_msgcat.c_catfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catentry = type { %struct.catentry*, %struct.catentry*, %struct.catentry*, %struct.catentry*, i64, i32 }

@NLERR = common dso_local global %struct.catentry* null, align 8
@cache = common dso_local global i32 0, align 4
@catentry = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.catentry*)* @catfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catfree(%struct.catentry* %0) #0 {
  %2 = alloca %struct.catentry*, align 8
  store %struct.catentry* %0, %struct.catentry** %2, align 8
  %3 = load %struct.catentry*, %struct.catentry** %2, align 8
  %4 = getelementptr inbounds %struct.catentry, %struct.catentry* %3, i32 0, i32 3
  %5 = load %struct.catentry*, %struct.catentry** %4, align 8
  %6 = icmp ne %struct.catentry* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.catentry*, %struct.catentry** %2, align 8
  %9 = getelementptr inbounds %struct.catentry, %struct.catentry* %8, i32 0, i32 3
  %10 = load %struct.catentry*, %struct.catentry** %9, align 8
  %11 = load %struct.catentry*, %struct.catentry** @NLERR, align 8
  %12 = icmp ne %struct.catentry* %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.catentry*, %struct.catentry** %2, align 8
  %15 = getelementptr inbounds %struct.catentry, %struct.catentry* %14, i32 0, i32 3
  %16 = load %struct.catentry*, %struct.catentry** %15, align 8
  %17 = getelementptr inbounds %struct.catentry, %struct.catentry* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.catentry*, %struct.catentry** %2, align 8
  %20 = getelementptr inbounds %struct.catentry, %struct.catentry* %19, i32 0, i32 3
  %21 = load %struct.catentry*, %struct.catentry** %20, align 8
  %22 = getelementptr inbounds %struct.catentry, %struct.catentry* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @munmap(i32 %18, i64 %23)
  %25 = load %struct.catentry*, %struct.catentry** %2, align 8
  %26 = getelementptr inbounds %struct.catentry, %struct.catentry* %25, i32 0, i32 3
  %27 = load %struct.catentry*, %struct.catentry** %26, align 8
  %28 = call i32 @free(%struct.catentry* %27)
  br label %29

29:                                               ; preds = %13, %7, %1
  %30 = load %struct.catentry*, %struct.catentry** %2, align 8
  %31 = load i32, i32* @catentry, align 4
  %32 = load i32, i32* @list, align 4
  %33 = call i32 @SLIST_REMOVE(i32* @cache, %struct.catentry* %30, i32 %31, i32 %32)
  %34 = load %struct.catentry*, %struct.catentry** %2, align 8
  %35 = getelementptr inbounds %struct.catentry, %struct.catentry* %34, i32 0, i32 2
  %36 = load %struct.catentry*, %struct.catentry** %35, align 8
  %37 = call i32 @free(%struct.catentry* %36)
  %38 = load %struct.catentry*, %struct.catentry** %2, align 8
  %39 = getelementptr inbounds %struct.catentry, %struct.catentry* %38, i32 0, i32 1
  %40 = load %struct.catentry*, %struct.catentry** %39, align 8
  %41 = call i32 @free(%struct.catentry* %40)
  %42 = load %struct.catentry*, %struct.catentry** %2, align 8
  %43 = getelementptr inbounds %struct.catentry, %struct.catentry* %42, i32 0, i32 0
  %44 = load %struct.catentry*, %struct.catentry** %43, align 8
  %45 = call i32 @free(%struct.catentry* %44)
  %46 = load %struct.catentry*, %struct.catentry** %2, align 8
  %47 = call i32 @free(%struct.catentry* %46)
  ret void
}

declare dso_local i32 @munmap(i32, i64) #1

declare dso_local i32 @free(%struct.catentry*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.catentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
