; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxHashFind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxHashFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_6__*, i8*, i32)* @idxHashFind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @idxHashFind(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @STRLEN(i8* %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @idxHashString(i8* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %9, align 8
  br label %30

30:                                               ; preds = %51, %15
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @STRLEN(i8* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @memcmp(i8* %43, i8* %44, i32 %45)
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %4, align 8
  br label %56

50:                                               ; preds = %40, %33
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %9, align 8
  br label %30

55:                                               ; preds = %30
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %57
}

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @idxHashString(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
