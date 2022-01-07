; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_refresh.c_re_addc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_refresh.c_re_addc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@VISUAL_WIDTH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8)* @re_addc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_addc(%struct.TYPE_9__* %0, i8 signext %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8 %1, i8* %4, align 1
  %10 = load i8, i8* %4, align 1
  %11 = call i32 @ct_chr_class(i8 signext %10)
  switch i32 %11, label %49 [
    i32 128, label %12
    i32 130, label %26
    i32 129, label %45
  ]

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %24, %12
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @re_putc(%struct.TYPE_9__* %14, i8 signext 32, i32 1)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %25

24:                                               ; preds = %13
  br label %13

25:                                               ; preds = %23
  br label %72

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @re_putc(%struct.TYPE_9__* %32, i8 signext 0, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @re_nextline(%struct.TYPE_9__* %42)
  br label %44

44:                                               ; preds = %41, %26
  br label %72

45:                                               ; preds = %2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load i8, i8* %4, align 1
  %48 = call i32 @re_putc(%struct.TYPE_9__* %46, i8 signext %47, i32 1)
  br label %72

49:                                               ; preds = %2
  %50 = load i32, i32* @VISUAL_WIDTH_MAX, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %6, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %7, align 8
  %54 = load i32, i32* @VISUAL_WIDTH_MAX, align 4
  %55 = load i8, i8* %4, align 1
  %56 = call i64 @ct_visual_char(i8* %53, i32 %54, i8 signext %55)
  store i64 %56, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %67, %49
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %9, align 8
  %60 = icmp ugt i64 %58, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %53, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @re_putc(%struct.TYPE_9__* %62, i8 signext %65, i32 1)
  br label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %70, %45, %44, %25
  ret void
}

declare dso_local i32 @ct_chr_class(i8 signext) #1

declare dso_local i32 @re_putc(%struct.TYPE_9__*, i8 signext, i32) #1

declare dso_local i32 @re_nextline(%struct.TYPE_9__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ct_visual_char(i8*, i32, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
