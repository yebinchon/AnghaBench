; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_kern_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.khash = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"kern_add\00", align 1
@KS_NEW = common dso_local global i32 0, align 4
@now = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.khash* (i8*, i8*)* @kern_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.khash* @kern_add(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.khash*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.khash*, align 8
  %7 = alloca %struct.khash**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.khash* @kern_find(i8* %8, i8* %9, %struct.khash*** %7)
  store %struct.khash* %10, %struct.khash** %6, align 8
  %11 = load %struct.khash*, %struct.khash** %6, align 8
  %12 = icmp ne %struct.khash* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.khash*, %struct.khash** %6, align 8
  store %struct.khash* %14, %struct.khash** %3, align 8
  br label %35

15:                                               ; preds = %2
  %16 = call i64 @rtmalloc(i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = inttoptr i64 %16 to %struct.khash*
  store %struct.khash* %17, %struct.khash** %6, align 8
  %18 = load %struct.khash*, %struct.khash** %6, align 8
  %19 = call i32 @memset(%struct.khash* %18, i32 0, i32 24)
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.khash*, %struct.khash** %6, align 8
  %22 = getelementptr inbounds %struct.khash, %struct.khash* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.khash*, %struct.khash** %6, align 8
  %25 = getelementptr inbounds %struct.khash, %struct.khash* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @KS_NEW, align 4
  %27 = load %struct.khash*, %struct.khash** %6, align 8
  %28 = getelementptr inbounds %struct.khash, %struct.khash* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @now, i32 0, i32 0), align 4
  %30 = load %struct.khash*, %struct.khash** %6, align 8
  %31 = getelementptr inbounds %struct.khash, %struct.khash* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.khash*, %struct.khash** %6, align 8
  %33 = load %struct.khash**, %struct.khash*** %7, align 8
  store %struct.khash* %32, %struct.khash** %33, align 8
  %34 = load %struct.khash*, %struct.khash** %6, align 8
  store %struct.khash* %34, %struct.khash** %3, align 8
  br label %35

35:                                               ; preds = %15, %13
  %36 = load %struct.khash*, %struct.khash** %3, align 8
  ret %struct.khash* %36
}

declare dso_local %struct.khash* @kern_find(i8*, i8*, %struct.khash***) #1

declare dso_local i64 @rtmalloc(i32, i8*) #1

declare dso_local i32 @memset(%struct.khash*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
