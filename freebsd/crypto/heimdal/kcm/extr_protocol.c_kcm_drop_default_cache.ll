; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_drop_default_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_drop_default_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_default_cache = type { %struct.kcm_default_cache*, %struct.kcm_default_cache*, i32, i32 }

@default_caches = common dso_local global %struct.kcm_default_cache* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @kcm_drop_default_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_drop_default_cache(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kcm_default_cache**, align 8
  %8 = alloca %struct.kcm_default_cache*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.kcm_default_cache** @default_caches, %struct.kcm_default_cache*** %7, align 8
  br label %9

9:                                                ; preds = %49, %3
  %10 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %11 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %10, align 8
  %12 = icmp ne %struct.kcm_default_cache* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %16 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %15, align 8
  %17 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %20 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %19, align 8
  %21 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kcm_is_same_session(i32* %14, i32 %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %49

26:                                               ; preds = %13
  %27 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %28 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %27, align 8
  %29 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %28, i32 0, i32 0
  %30 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(%struct.kcm_default_cache* %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %36 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %35, align 8
  store %struct.kcm_default_cache* %36, %struct.kcm_default_cache** %8, align 8
  %37 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %38 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %37, align 8
  %39 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %38, i32 0, i32 1
  %40 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %39, align 8
  %41 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  store %struct.kcm_default_cache* %40, %struct.kcm_default_cache** %41, align 8
  %42 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %8, align 8
  %43 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %42, i32 0, i32 0
  %44 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %43, align 8
  %45 = call i32 @free(%struct.kcm_default_cache* %44)
  %46 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %8, align 8
  %47 = call i32 @free(%struct.kcm_default_cache* %46)
  br label %53

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.kcm_default_cache**, %struct.kcm_default_cache*** %7, align 8
  %51 = load %struct.kcm_default_cache*, %struct.kcm_default_cache** %50, align 8
  %52 = getelementptr inbounds %struct.kcm_default_cache, %struct.kcm_default_cache* %51, i32 0, i32 1
  store %struct.kcm_default_cache** %52, %struct.kcm_default_cache*** %7, align 8
  br label %9

53:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32 @kcm_is_same_session(i32*, i32, i32) #1

declare dso_local i64 @strcmp(%struct.kcm_default_cache*, i8*) #1

declare dso_local i32 @free(%struct.kcm_default_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
