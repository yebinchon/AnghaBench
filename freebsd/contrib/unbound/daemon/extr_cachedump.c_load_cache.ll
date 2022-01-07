; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_cache(i32* %0, %struct.worker* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.worker*, %struct.worker** %5, align 8
  %8 = call i32 @load_rrset_cache(i32* %6, %struct.worker* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.worker*, %struct.worker** %5, align 8
  %14 = call i32 @load_msg_cache(i32* %12, %struct.worker* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.worker*, %struct.worker** %5, align 8
  %20 = getelementptr inbounds %struct.worker, %struct.worker* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @read_fixed(i32* %18, i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %16, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @load_rrset_cache(i32*, %struct.worker*) #1

declare dso_local i32 @load_msg_cache(i32*, %struct.worker*) #1

declare dso_local i32 @read_fixed(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
