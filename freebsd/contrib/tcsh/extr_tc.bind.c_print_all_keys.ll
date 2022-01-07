; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_print_all_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.bind.c_print_all_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Standard key bindings\0A\00", align 1
@CcKeyMap = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Alternative key bindings\0A\00", align 1
@CcAltMap = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Multi-character bindings\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Arrow key bindings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_all_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_all_keys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = call i32 @CGETS(i32 20, i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %31, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i64*, i64** @CcKeyMap, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** @CcKeyMap, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %31

24:                                               ; preds = %11
  %25 = load i64*, i64** @CcKeyMap, align 8
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @printkeys(i64* %25, i32 %26, i32 %28)
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load i64*, i64** @CcKeyMap, align 8
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @printkeys(i64* %35, i32 %36, i32 %38)
  %40 = call i32 @CGETS(i32 20, i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %65, %34
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load i64*, i64** @CcAltMap, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** @CcAltMap, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %65

58:                                               ; preds = %45
  %59 = load i64*, i64** @CcAltMap, align 8
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %2, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @printkeys(i64* %59, i32 %60, i32 %62)
  %64 = load i32, i32* %2, align 4
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %58, %57
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %42

68:                                               ; preds = %42
  %69 = load i64*, i64** @CcAltMap, align 8
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* %2, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @printkeys(i64* %69, i32 %70, i32 %72)
  %74 = call i32 @CGETS(i32 20, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = call i32 @PrintXkey(i32* null)
  %77 = call i32 @CGETS(i32 20, i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = call i32 @PrintArrowKeys(%struct.TYPE_3__* %3)
  ret void
}

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @printkeys(i64*, i32, i32) #1

declare dso_local i32 @PrintXkey(i32*) #1

declare dso_local i32 @PrintArrowKeys(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
