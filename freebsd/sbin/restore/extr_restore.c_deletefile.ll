; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_deletefile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_deletefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, i32 }

@hflag = common dso_local global i64 0, align 8
@GOOD = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@dumpmap = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@REMOVED = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @deletefile(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @hflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @GOOD, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @FAIL, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @dumpmap, align 4
  %20 = call i64 @TSTINO(i32 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %4, align 8
  br label %52

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.entry* @lookupname(i8* %25)
  store %struct.entry* %26, %struct.entry** %9, align 8
  %27 = load %struct.entry*, %struct.entry** %9, align 8
  %28 = icmp ne %struct.entry* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i32, i32* @NEW, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.entry*, %struct.entry** %9, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @REMOVED, align 4
  %37 = load %struct.entry*, %struct.entry** %9, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.entry*, %struct.entry** %9, align 8
  %42 = getelementptr inbounds %struct.entry, %struct.entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NODE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load %struct.entry*, %struct.entry** %9, align 8
  %48 = call i32 @freeentry(%struct.entry* %47)
  br label %49

49:                                               ; preds = %46, %29
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %50, %22
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @TSTINO(i32, i32) #1

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local i32 @freeentry(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
