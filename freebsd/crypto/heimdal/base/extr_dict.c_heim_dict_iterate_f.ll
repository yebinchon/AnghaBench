; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c_heim_dict_iterate_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_dict.c_heim_dict_iterate_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.hashentry** }
%struct.hashentry = type { i32, i32, %struct.hashentry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heim_dict_iterate_f(%struct.TYPE_3__* %0, i32 (i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32 (i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hashentry**, align 8
  %8 = alloca %struct.hashentry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 (i32, i32, i8*)* %1, i32 (i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.hashentry**, %struct.hashentry*** %10, align 8
  store %struct.hashentry** %11, %struct.hashentry*** %7, align 8
  br label %12

12:                                               ; preds = %43, %3
  %13 = load %struct.hashentry**, %struct.hashentry*** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.hashentry**, %struct.hashentry*** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hashentry*, %struct.hashentry** %16, i64 %19
  %21 = icmp ult %struct.hashentry** %13, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %12
  %23 = load %struct.hashentry**, %struct.hashentry*** %7, align 8
  %24 = load %struct.hashentry*, %struct.hashentry** %23, align 8
  store %struct.hashentry* %24, %struct.hashentry** %8, align 8
  br label %25

25:                                               ; preds = %38, %22
  %26 = load %struct.hashentry*, %struct.hashentry** %8, align 8
  %27 = icmp ne %struct.hashentry* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %5, align 8
  %30 = load %struct.hashentry*, %struct.hashentry** %8, align 8
  %31 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hashentry*, %struct.hashentry** %8, align 8
  %34 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 %29(i32 %32, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %28
  %39 = load %struct.hashentry*, %struct.hashentry** %8, align 8
  %40 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %39, i32 0, i32 2
  %41 = load %struct.hashentry*, %struct.hashentry** %40, align 8
  store %struct.hashentry* %41, %struct.hashentry** %8, align 8
  br label %25

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.hashentry**, %struct.hashentry*** %7, align 8
  %45 = getelementptr inbounds %struct.hashentry*, %struct.hashentry** %44, i32 1
  store %struct.hashentry** %45, %struct.hashentry*** %7, align 8
  br label %12

46:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
