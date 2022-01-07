; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_release_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_release_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_release_compl = type { i32, i32, i32, i32*, i32* }

@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_release_compl(%struct.uni_release_compl* %0, %struct.uni_release_compl* %1) #0 {
  %3 = alloca %struct.uni_release_compl*, align 8
  %4 = alloca %struct.uni_release_compl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uni_release_compl* %0, %struct.uni_release_compl** %3, align 8
  store %struct.uni_release_compl* %1, %struct.uni_release_compl** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %12 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IE_ISGOOD(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %10
  %21 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %22 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uni_release_compl*, %struct.uni_release_compl** %4, align 8
  %29 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %27, i32* %34, align 4
  br label %35

35:                                               ; preds = %20, %10
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %70, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %46 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IE_ISGOOD(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %56 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.uni_release_compl*, %struct.uni_release_compl** %4, align 8
  %63 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %54, %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %40

73:                                               ; preds = %40
  %74 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %75 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IE_ISGOOD(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %81 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.uni_release_compl*, %struct.uni_release_compl** %4, align 8
  %84 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %87 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IE_ISGOOD(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %93 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.uni_release_compl*, %struct.uni_release_compl** %4, align 8
  %96 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %99 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IE_ISGOOD(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.uni_release_compl*, %struct.uni_release_compl** %3, align 8
  %105 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.uni_release_compl*, %struct.uni_release_compl** %4, align 8
  %108 = getelementptr inbounds %struct.uni_release_compl, %struct.uni_release_compl* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %97
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
