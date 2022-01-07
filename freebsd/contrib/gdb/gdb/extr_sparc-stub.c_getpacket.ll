; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-stub.c_getpacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-stub.c_getpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remcomInBuffer = common dso_local global i8* null, align 8
@BUFMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getpacket() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = load i8*, i8** @remcomInBuffer, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8* %8, i8** %2, align 8
  br label %9

9:                                                ; preds = %0, %98
  br label %10

10:                                               ; preds = %14, %9
  %11 = call signext i8 (...) @getDebugChar()
  store i8 %11, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 36
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %26, %15
  store i8 0, i8* %3, align 1
  store i8 -1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BUFMAX, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = call signext i8 (...) @getDebugChar()
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 36
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %16

27:                                               ; preds = %21
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %46

32:                                               ; preds = %27
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %3, align 1
  %39 = load i8, i8* %6, align 1
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %17

46:                                               ; preds = %31, %17
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 35
  br i1 %53, label %54, label %98

54:                                               ; preds = %46
  %55 = call signext i8 (...) @getDebugChar()
  store i8 %55, i8* %6, align 1
  %56 = load i8, i8* %6, align 1
  %57 = call zeroext i8 @hex(i8 signext %56)
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 4
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %4, align 1
  %61 = call signext i8 (...) @getDebugChar()
  store i8 %61, i8* %6, align 1
  %62 = load i8, i8* %6, align 1
  %63 = call zeroext i8 @hex(i8 signext %62)
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* %4, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %66, %64
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %4, align 1
  %69 = load i8, i8* %3, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %4, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = call i32 @putDebugChar(i8 zeroext 45)
  br label %97

76:                                               ; preds = %54
  %77 = call i32 @putDebugChar(i8 zeroext 43)
  %78 = load i8*, i8** %2, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @putDebugChar(i8 zeroext %86)
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @putDebugChar(i8 zeroext %90)
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %93, i8** %1, align 8
  br label %99

94:                                               ; preds = %76
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8* %96, i8** %1, align 8
  br label %99

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %97, %46
  br label %9

99:                                               ; preds = %94, %83
  %100 = load i8*, i8** %1, align 8
  ret i8* %100
}

declare dso_local signext i8 @getDebugChar(...) #1

declare dso_local zeroext i8 @hex(i8 signext) #1

declare dso_local i32 @putDebugChar(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
