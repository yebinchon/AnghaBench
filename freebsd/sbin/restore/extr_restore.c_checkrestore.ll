; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_checkrestore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_checkrestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i64, %struct.entry* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Check the symbol table.\0A\00", align 1
@UFS_WINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@KEEP = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8
@NEW = common dso_local global i32 0, align 4
@EXISTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"incomplete operations\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkrestore() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @vprintf(i32 %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* @UFS_WINO, align 8
  store i64 %5, i64* %2, align 8
  br label %6

6:                                                ; preds = %51, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @maxino, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = call %struct.entry* @lookupino(i64 %11)
  store %struct.entry* %12, %struct.entry** %1, align 8
  br label %13

13:                                               ; preds = %46, %10
  %14 = load %struct.entry*, %struct.entry** %1, align 8
  %15 = icmp ne %struct.entry* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i32, i32* @KEEP, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.entry*, %struct.entry** %1, align 8
  %20 = getelementptr inbounds %struct.entry, %struct.entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.entry*, %struct.entry** %1, align 8
  %24 = getelementptr inbounds %struct.entry, %struct.entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NODE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load i32, i32* @NEW, align 4
  %30 = load i32, i32* @EXISTED, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.entry*, %struct.entry** %1, align 8
  %34 = getelementptr inbounds %struct.entry, %struct.entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %28, %16
  %38 = load %struct.entry*, %struct.entry** %1, align 8
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.entry*, %struct.entry** %1, align 8
  %44 = call i32 @badentry(%struct.entry* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.entry*, %struct.entry** %1, align 8
  %48 = getelementptr inbounds %struct.entry, %struct.entry* %47, i32 0, i32 2
  %49 = load %struct.entry*, %struct.entry** %48, align 8
  store %struct.entry* %49, %struct.entry** %1, align 8
  br label %13

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %2, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %2, align 8
  br label %6

54:                                               ; preds = %6
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
