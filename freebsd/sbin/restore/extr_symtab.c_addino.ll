; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_addino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_addino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, %struct.entry* }

@UFS_WINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"addino: out of range %ju\0A\00", align 1
@entry = common dso_local global %struct.entry** null, align 8
@entrytblsize = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"duplicate inum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.entry*)* @addino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addino(i64 %0, %struct.entry* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca %struct.entry**, align 8
  store i64 %0, i64* %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @UFS_WINO, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @maxino, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.entry**, %struct.entry*** @entry, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @entrytblsize, align 8
  %21 = urem i64 %19, %20
  %22 = getelementptr inbounds %struct.entry*, %struct.entry** %18, i64 %21
  store %struct.entry** %22, %struct.entry*** %5, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.entry*, %struct.entry** %4, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.entry**, %struct.entry*** %5, align 8
  %27 = load %struct.entry*, %struct.entry** %26, align 8
  %28 = load %struct.entry*, %struct.entry** %4, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 1
  store %struct.entry* %27, %struct.entry** %29, align 8
  %30 = load %struct.entry*, %struct.entry** %4, align 8
  %31 = load %struct.entry**, %struct.entry*** %5, align 8
  store %struct.entry* %30, %struct.entry** %31, align 8
  %32 = load i64, i64* @dflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %17
  %35 = load %struct.entry*, %struct.entry** %4, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 1
  %37 = load %struct.entry*, %struct.entry** %36, align 8
  store %struct.entry* %37, %struct.entry** %4, align 8
  br label %38

38:                                               ; preds = %51, %34
  %39 = load %struct.entry*, %struct.entry** %4, align 8
  %40 = icmp ne %struct.entry* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.entry*, %struct.entry** %4, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.entry*, %struct.entry** %4, align 8
  %49 = call i32 @badentry(%struct.entry* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.entry*, %struct.entry** %4, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 1
  %54 = load %struct.entry*, %struct.entry** %53, align 8
  store %struct.entry* %54, %struct.entry** %4, align 8
  br label %38

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %17
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
