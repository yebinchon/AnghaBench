; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_getstr.c_WipeOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_getstr.c_WipeOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32, i32, i8*, i8*, i32)* @WipeOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @WipeOut(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %6
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %20, i8** %11, align 8
  store i8 0, i8* %20, align 1
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @wmove(%struct.TYPE_7__* %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @waddstr(%struct.TYPE_7__* %34, i8* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @getyx(%struct.TYPE_7__* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %63, %23
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i1 [ false, %47 ], [ %58, %53 ]
  br label %61

61:                                               ; preds = %59, %41
  %62 = phi i1 [ true, %41 ], [ %60, %59 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = call i32 @waddch(%struct.TYPE_7__* %64, i32 32)
  br label %41

66:                                               ; preds = %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @wmove(%struct.TYPE_7__* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %18
  br label %72

72:                                               ; preds = %71, %6
  %73 = load i8*, i8** %11, align 8
  ret i8* %73
}

declare dso_local i32 @wmove(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @waddstr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @getyx(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @waddch(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
