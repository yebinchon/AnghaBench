; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tac_handle* }

@MAXAVPAIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tac_close(%struct.tac_handle* %0) #0 {
  %2 = alloca %struct.tac_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %2, align 8
  %5 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %6 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %11 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @close(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %49, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %18 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %23 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %22, i32 0, i32 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.tac_handle*, %struct.tac_handle** %28, align 8
  %30 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %31 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %30, i32 0, i32 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.tac_handle*, %struct.tac_handle** %36, align 8
  %38 = call i32 @strlen(%struct.tac_handle* %37)
  %39 = call i32 @memset(%struct.tac_handle* %29, i32 0, i32 %38)
  %40 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %41 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %40, i32 0, i32 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.tac_handle*, %struct.tac_handle** %46, align 8
  %48 = call i32 @free(%struct.tac_handle* %47)
  br label %49

49:                                               ; preds = %21
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %54 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %53, i32 0, i32 7
  %55 = call i32 @free_str(i32* %54)
  %56 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %57 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %56, i32 0, i32 6
  %58 = call i32 @free_str(i32* %57)
  %59 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %60 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %59, i32 0, i32 5
  %61 = call i32 @free_str(i32* %60)
  %62 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %63 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %62, i32 0, i32 4
  %64 = call i32 @free_str(i32* %63)
  %65 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %66 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %65, i32 0, i32 3
  %67 = call i32 @free_str(i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %80, %52
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @MAXAVPAIRS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %74 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @free_str(i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %85 = call i32 @memset(%struct.tac_handle* %84, i32 0, i32 48)
  %86 = load %struct.tac_handle*, %struct.tac_handle** %2, align 8
  %87 = call i32 @free(%struct.tac_handle* %86)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.tac_handle*, i32, i32) #1

declare dso_local i32 @strlen(%struct.tac_handle*) #1

declare dso_local i32 @free(%struct.tac_handle*) #1

declare dso_local i32 @free_str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
