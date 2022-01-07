; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_only.c_hash_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_only.c_hash_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hentry = type { i64, i32, %struct.hentry* }

@table = common dso_local global %struct.hentry** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @hash_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_find(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.hentry*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @hash_str(i8* %7)
  %9 = load %struct.hentry**, %struct.hentry*** @table, align 8
  %10 = call i64 @__arraycount(%struct.hentry** %9)
  %11 = urem i64 %8, %10
  %12 = load i64*, i64** %5, align 8
  store i64 %11, i64* %12, align 8
  %13 = load %struct.hentry**, %struct.hentry*** @table, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.hentry*, %struct.hentry** %13, i64 %15
  %17 = load %struct.hentry*, %struct.hentry** %16, align 8
  store %struct.hentry* %17, %struct.hentry** %6, align 8
  br label %18

18:                                               ; preds = %37, %2
  %19 = load %struct.hentry*, %struct.hentry** %6, align 8
  %20 = icmp ne %struct.hentry* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.hentry*, %struct.hentry** %6, align 8
  %23 = getelementptr inbounds %struct.hentry, %struct.hentry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.hentry*, %struct.hentry** %6, align 8
  %30 = getelementptr inbounds %struct.hentry, %struct.hentry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strcmp(i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %42

36:                                               ; preds = %28, %21
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.hentry*, %struct.hentry** %6, align 8
  %39 = getelementptr inbounds %struct.hentry, %struct.hentry* %38, i32 0, i32 2
  %40 = load %struct.hentry*, %struct.hentry** %39, align 8
  store %struct.hentry* %40, %struct.hentry** %6, align 8
  br label %18

41:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @hash_str(i8*) #1

declare dso_local i64 @__arraycount(%struct.hentry**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
