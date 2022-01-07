; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_deleteino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_deleteino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, %struct.entry* }

@UFS_WINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"deleteino: out of range %ju\0A\00", align 1
@entry = common dso_local global %struct.entry** null, align 8
@entrytblsize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"deleteino: %ju not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteino(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.entry*, align 8
  %4 = alloca %struct.entry**, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @UFS_WINO, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @maxino, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %1
  %13 = load i64, i64* %2, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.entry**, %struct.entry*** @entry, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @entrytblsize, align 8
  %20 = urem i64 %18, %19
  %21 = getelementptr inbounds %struct.entry*, %struct.entry** %17, i64 %20
  store %struct.entry** %21, %struct.entry*** %4, align 8
  %22 = load %struct.entry**, %struct.entry*** %4, align 8
  %23 = load %struct.entry*, %struct.entry** %22, align 8
  store %struct.entry* %23, %struct.entry** %3, align 8
  br label %24

24:                                               ; preds = %43, %16
  %25 = load %struct.entry*, %struct.entry** %3, align 8
  %26 = icmp ne %struct.entry* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.entry*, %struct.entry** %3, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.entry*, %struct.entry** %3, align 8
  %35 = getelementptr inbounds %struct.entry, %struct.entry* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.entry*, %struct.entry** %3, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 1
  %38 = load %struct.entry*, %struct.entry** %37, align 8
  %39 = load %struct.entry**, %struct.entry*** %4, align 8
  store %struct.entry* %38, %struct.entry** %39, align 8
  br label %51

40:                                               ; preds = %27
  %41 = load %struct.entry*, %struct.entry** %3, align 8
  %42 = getelementptr inbounds %struct.entry, %struct.entry* %41, i32 0, i32 1
  store %struct.entry** %42, %struct.entry*** %4, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load %struct.entry*, %struct.entry** %3, align 8
  %45 = getelementptr inbounds %struct.entry, %struct.entry* %44, i32 0, i32 1
  %46 = load %struct.entry*, %struct.entry** %45, align 8
  store %struct.entry* %46, %struct.entry** %3, align 8
  br label %24

47:                                               ; preds = %24
  %48 = load i64, i64* %2, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %33
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
