; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_removeoldnodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_removeoldnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { %struct.entry*, i32* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Remove old nodes (directories).\0A\00", align 1
@removelist = common dso_local global %struct.entry* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot remove, non-empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @removeoldnodes() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = alloca %struct.entry**, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 @vprintf(i32 %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %34, %0
  store i64 0, i64* %3, align 8
  store %struct.entry** @removelist, %struct.entry*** %2, align 8
  %7 = load %struct.entry*, %struct.entry** @removelist, align 8
  store %struct.entry* %7, %struct.entry** %1, align 8
  br label %8

8:                                                ; preds = %30, %6
  %9 = load %struct.entry*, %struct.entry** %1, align 8
  %10 = icmp ne %struct.entry* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load %struct.entry*, %struct.entry** %1, align 8
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.entry*, %struct.entry** %1, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 0
  store %struct.entry** %18, %struct.entry*** %2, align 8
  br label %30

19:                                               ; preds = %11
  %20 = load %struct.entry*, %struct.entry** %1, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load %struct.entry*, %struct.entry** %21, align 8
  %23 = load %struct.entry**, %struct.entry*** %2, align 8
  store %struct.entry* %22, %struct.entry** %23, align 8
  %24 = load %struct.entry*, %struct.entry** %1, align 8
  %25 = call i32 @removenode(%struct.entry* %24)
  %26 = load %struct.entry*, %struct.entry** %1, align 8
  %27 = call i32 @freeentry(%struct.entry* %26)
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %19, %16
  %31 = load %struct.entry**, %struct.entry*** %2, align 8
  %32 = load %struct.entry*, %struct.entry** %31, align 8
  store %struct.entry* %32, %struct.entry** %1, align 8
  br label %8

33:                                               ; preds = %8
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %6, label %37

37:                                               ; preds = %34
  %38 = load %struct.entry*, %struct.entry** @removelist, align 8
  store %struct.entry* %38, %struct.entry** %1, align 8
  br label %39

39:                                               ; preds = %45, %37
  %40 = load %struct.entry*, %struct.entry** %1, align 8
  %41 = icmp ne %struct.entry* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.entry*, %struct.entry** %1, align 8
  %44 = call i32 @badentry(%struct.entry* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42
  %46 = load %struct.entry*, %struct.entry** %1, align 8
  %47 = getelementptr inbounds %struct.entry, %struct.entry* %46, i32 0, i32 0
  %48 = load %struct.entry*, %struct.entry** %47, align 8
  store %struct.entry* %48, %struct.entry** %1, align 8
  br label %39

49:                                               ; preds = %39
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i32 @removenode(%struct.entry*) #1

declare dso_local i32 @freeentry(%struct.entry*) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
