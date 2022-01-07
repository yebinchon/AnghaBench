; ModuleID = '/home/carl/AnghaBench/freebsd/lib/csu/powerpc64/extr_crt1.c_init_cpu_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/csu/powerpc64/extr_crt1.c_init_cpu_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AT_NULL = common dso_local global i32 0, align 4
@cpu_features = common dso_local global i8* null, align 8
@cpu_features2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @init_cpu_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cpu_features(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load i8**, i8*** %2, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %6, i8*** %2, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %4

10:                                               ; preds = %4
  %11 = load i8**, i8*** %2, align 8
  %12 = bitcast i8** %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  br label %13

13:                                               ; preds = %38, %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AT_NULL, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %37 [
    i32 129, label %23
    i32 128, label %30
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @cpu_features, align 8
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @cpu_features2, align 8
  br label %37

37:                                               ; preds = %19, %30, %23
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %3, align 8
  br label %13

41:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
