; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitMaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitMaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MapsAreInited = common dso_local global i32 0, align 4
@NT_NUM_KEYS = common dso_local global i32 0, align 4
@ed_InitMaps.list = internal constant [3 x i32*] [i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 128 to i32*), i32* inttoptr (i64 129 to i32*)], align 16
@_toebcdic = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ed_InitMaps() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MapsAreInited, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %66

8:                                                ; preds = %0
  %9 = load i32, i32* @NT_NUM_KEYS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %60, %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %63

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @NT_NUM_KEYS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32*], [3 x i32*]* @ed_InitMaps.list, i64 0, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %12, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %17

36:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @NT_NUM_KEYS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %12, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x i32*], [3 x i32*]* @ed_InitMaps.list, i64 0, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i64*, i64** @_toebcdic, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  store i32 %45, i32* %55, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %37

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %13

63:                                               ; preds = %13
  %64 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = call i32 (...) @ed_InitEmacsMaps()
  store i32 1, i32* @MapsAreInited, align 4
  br label %66

66:                                               ; preds = %63, %7
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ed_InitEmacsMaps(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
