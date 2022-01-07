; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_release = type { i32, i32, i32, i32, i32*, i32, i32* }

@UNI_NUM_IE_GIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_release(%struct.uni_release* %0, %struct.uni_release* %1) #0 {
  %3 = alloca %struct.uni_release*, align 8
  %4 = alloca %struct.uni_release*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uni_release* %0, %struct.uni_release** %3, align 8
  store %struct.uni_release* %1, %struct.uni_release** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %12 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IE_ISGOOD(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %10
  %21 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %22 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %29 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %28, i32 0, i32 6
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
  %40 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %41 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IE_ISGOOD(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %47 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %50 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %39
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @UNI_NUM_IE_GIT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %58 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IE_ISGOOD(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %56
  %67 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %68 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %75 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %66, %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %52

85:                                               ; preds = %52
  %86 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %87 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @IE_ISGOOD(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %93 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %96 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %99 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IE_ISGOOD(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %105 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %108 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %111 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @IE_ISGOOD(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %117 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %120 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %123 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @IE_ISGOOD(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.uni_release*, %struct.uni_release** %3, align 8
  %129 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.uni_release*, %struct.uni_release** %4, align 8
  %132 = getelementptr inbounds %struct.uni_release, %struct.uni_release* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %121
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
