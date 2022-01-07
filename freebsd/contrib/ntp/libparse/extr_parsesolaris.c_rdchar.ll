; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_rdchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_parsesolaris.c_rdchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__**)* @rdchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rdchar(%struct.TYPE_4__** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  br label %5

5:                                                ; preds = %39, %1
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %13, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = inttoptr i64 %24 to i8*
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i64
  store i64 %28, i64* %2, align 8
  br label %41

29:                                               ; preds = %9
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = call i32 @freeb(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %29
  br label %5

40:                                               ; preds = %5
  store i64 -1, i64* %2, align 8
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @freeb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
