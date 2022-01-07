; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_party_alerting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_party_alerting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_party_alerting = type { i32, i32*, i32, i32, i32 }

@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_party_alerting(%struct.uni_party_alerting* %0, %struct.uni_party_alerting* %1) #0 {
  %3 = alloca %struct.uni_party_alerting*, align 8
  %4 = alloca %struct.uni_party_alerting*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_party_alerting* %0, %struct.uni_party_alerting** %3, align 8
  store %struct.uni_party_alerting* %1, %struct.uni_party_alerting** %4, align 8
  %7 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %8 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %14 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %4, align 8
  %17 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %20 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %26 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %4, align 8
  %29 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %32 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IE_ISGOOD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %38 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %4, align 8
  %41 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %49 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IE_ISGOOD(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %58 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %4, align 8
  %64 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %56, %47
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %43

73:                                               ; preds = %43
  %74 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %75 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IE_ISGOOD(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %3, align 8
  %81 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.uni_party_alerting*, %struct.uni_party_alerting** %4, align 8
  %84 = getelementptr inbounds %struct.uni_party_alerting, %struct.uni_party_alerting* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
