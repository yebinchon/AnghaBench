; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_apndReadMark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_apndReadMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i8*, i32, i32)* }

@APND_MARK_SIZE = common dso_local global i32 0, align 4
@APND_MARK_PREFIX = common dso_local global i32 0, align 4
@APND_MARK_PREFIX_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @apndReadMark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apndReadMark(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %12 = load i32, i32* @APND_MARK_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @APND_MARK_SIZE, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_6__*, i8*, i32, i32)*, i32 (%struct.TYPE_6__*, i8*, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i32, i32* @APND_MARK_SIZE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @APND_MARK_SIZE, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 %25(%struct.TYPE_6__* %26, i8* %15, i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

35:                                               ; preds = %20
  %36 = load i32, i32* @APND_MARK_PREFIX, align 4
  %37 = load i64, i64* @APND_MARK_PREFIX_SZ, align 8
  %38 = call i64 @memcmp(i8* %15, i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

41:                                               ; preds = %35
  %42 = load i64, i64* @APND_MARK_PREFIX_SZ, align 8
  %43 = getelementptr inbounds i8, i8* %15, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 127
  %47 = shl i32 %46, 56
  store i32 %47, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %65, %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i64, i64* @APND_MARK_PREFIX_SZ, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = getelementptr inbounds i8, i8* %15, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 8, %59
  %61 = sub nsw i32 56, %60
  %62 = shl i32 %58, %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %40, %34, %19
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
