; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_modify_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_modify_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_modify_rej = type { i32, i32*, i32, i32 }

@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_modify_rej(%struct.uni_modify_rej* %0, %struct.uni_modify_rej* %1) #0 {
  %3 = alloca %struct.uni_modify_rej*, align 8
  %4 = alloca %struct.uni_modify_rej*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_modify_rej* %0, %struct.uni_modify_rej** %3, align 8
  store %struct.uni_modify_rej* %1, %struct.uni_modify_rej** %4, align 8
  %7 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %8 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %14 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %4, align 8
  %17 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %20 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %26 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %4, align 8
  %29 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %37 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IE_ISGOOD(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %46 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %4, align 8
  %52 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %44, %35
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %31

61:                                               ; preds = %31
  %62 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %63 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IE_ISGOOD(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %69 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %4, align 8
  %72 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
