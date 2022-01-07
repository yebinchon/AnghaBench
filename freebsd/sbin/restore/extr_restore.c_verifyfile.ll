; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_verifyfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_verifyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, %struct.entry* }

@GOOD = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Warning: missing name %s\0A\00", align 1
@FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"missing inumber %ju\0A\00", align 1
@LEAF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"type should be LEAF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @verifyfile(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.entry*, align 8
  %9 = alloca %struct.entry*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @GOOD, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.entry* @lookupname(i8* %12)
  store %struct.entry* %13, %struct.entry** %9, align 8
  %14 = load %struct.entry*, %struct.entry** %9, align 8
  %15 = icmp eq %struct.entry* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i64, i64* @FAIL, align 8
  store i64 %20, i64* %4, align 8
  br label %65

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.entry* @lookupino(i64 %22)
  store %struct.entry* %23, %struct.entry** %8, align 8
  %24 = load %struct.entry*, %struct.entry** %8, align 8
  %25 = load %struct.entry*, %struct.entry** %9, align 8
  %26 = icmp ne %struct.entry* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @FAIL, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %21
  br label %30

30:                                               ; preds = %39, %29
  %31 = load %struct.entry*, %struct.entry** %8, align 8
  %32 = icmp ne %struct.entry* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.entry*, %struct.entry** %8, align 8
  %35 = load %struct.entry*, %struct.entry** %9, align 8
  %36 = icmp eq %struct.entry* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %43

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.entry*, %struct.entry** %8, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 1
  %42 = load %struct.entry*, %struct.entry** %41, align 8
  store %struct.entry* %42, %struct.entry** %8, align 8
  br label %30

43:                                               ; preds = %37, %30
  %44 = load %struct.entry*, %struct.entry** %8, align 8
  %45 = icmp eq %struct.entry* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.entry*, %struct.entry** %9, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LEAF, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @LEAF, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.entry*, %struct.entry** %9, align 8
  %62 = call i32 @badentry(%struct.entry* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56, %50
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %16
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
