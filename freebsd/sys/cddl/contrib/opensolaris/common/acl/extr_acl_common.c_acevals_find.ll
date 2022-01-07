; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_acevals_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/acl/extr_acl_common.c_acevals_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i32*, i32*)* @acevals_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @acevals_find(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.TYPE_9__* @avl_find(i32* %15, %struct.TYPE_9__* %8, i32* %10)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %4, align 8
  br label %40

21:                                               ; preds = %3
  %22 = bitcast %struct.TYPE_9__** %9 to i8**
  %23 = call i64 @cacl_malloc(i8** %22, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %40

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @acevals_init(%struct.TYPE_9__* %27, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @avl_insert(i32* %32, %struct.TYPE_9__* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %4, align 8
  br label %40

40:                                               ; preds = %26, %25, %19
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %41
}

declare dso_local %struct.TYPE_9__* @avl_find(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @cacl_malloc(i8**, i32) #1

declare dso_local i32 @acevals_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
