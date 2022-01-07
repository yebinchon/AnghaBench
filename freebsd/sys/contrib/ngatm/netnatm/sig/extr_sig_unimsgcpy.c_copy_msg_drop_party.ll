; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_drop_party.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_drop_party.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_drop_party = type { i32, i32*, i32, i32, i32, i32 }

@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_drop_party(%struct.uni_drop_party* %0, %struct.uni_drop_party* %1) #0 {
  %3 = alloca %struct.uni_drop_party*, align 8
  %4 = alloca %struct.uni_drop_party*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_drop_party* %0, %struct.uni_drop_party** %3, align 8
  store %struct.uni_drop_party* %1, %struct.uni_drop_party** %4, align 8
  %7 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %8 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %14 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %17 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %20 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %26 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %29 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %32 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IE_ISGOOD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %38 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %41 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %44 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IE_ISGOOD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %50 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %53 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %61 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IE_ISGOOD(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %70 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %76 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %68, %59
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %55

85:                                               ; preds = %55
  %86 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %87 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IE_ISGOOD(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.uni_drop_party*, %struct.uni_drop_party** %3, align 8
  %93 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %96 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
