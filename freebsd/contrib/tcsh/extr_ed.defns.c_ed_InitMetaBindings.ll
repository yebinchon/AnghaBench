; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitMetaBindings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitMetaBindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@CcKeyMap = common dso_local global i64* null, align 8
@F_METANEXT = common dso_local global i64 0, align 8
@CcAltMap = common dso_local global i64* null, align 8
@VImode = common dso_local global i64 0, align 8
@F_INSERT = common dso_local global i64 0, align 8
@F_UNASSIGNED = common dso_local global i64 0, align 8
@F_XKEY = common dso_local global i64 0, align 8
@ASCII = common dso_local global i32 0, align 4
@XK_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ed_InitMetaBindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ed_InitMetaBindings() #0 {
  %1 = alloca [3 x i64], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64*, align 8
  %5 = load i64*, i64** @CcKeyMap, align 8
  store i64* %5, i64** %4, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %20, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 255
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i64*, i64** @CcKeyMap, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @CTL_ESC(i32 %11)
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @F_METANEXT, align 8
  %16 = icmp ne i64 %14, %15
  br label %17

17:                                               ; preds = %9, %6
  %18 = phi i1 [ false, %6 ], [ %16, %9 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %6

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp sle i32 %28, 255
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64*, i64** @CcAltMap, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @CTL_ESC(i32 %32)
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @F_METANEXT, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i1 [ false, %27 ], [ %37, %30 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %27

44:                                               ; preds = %38
  %45 = load i32, i32* %2, align 4
  %46 = icmp sgt i32 %45, 255
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  store i32 27, i32* %2, align 4
  %48 = load i64, i64* @VImode, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64*, i64** @CcAltMap, align 8
  store i64* %51, i64** %4, align 8
  br label %52

52:                                               ; preds = %50, %47
  br label %55

53:                                               ; preds = %44
  %54 = load i64*, i64** @CcAltMap, align 8
  store i64* %54, i64** %4, align 8
  br label %55

55:                                               ; preds = %53, %52
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32, i32* %2, align 4
  %58 = call i64 @CTL_ESC(i32 %57)
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  store i64 %58, i64* %59, align 16
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 2
  store i64 0, i64* %60, align 16
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64* %61, i64** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 2, i32* %63, align 8
  store i32 128, i32* %2, align 4
  br label %64

64:                                               ; preds = %107, %56
  %65 = load i32, i32* %2, align 4
  %66 = icmp sle i32 %65, 255
  br i1 %66, label %67, label %110

67:                                               ; preds = %64
  %68 = load i64*, i64** %4, align 8
  %69 = load i32, i32* %2, align 4
  %70 = call i64 @CTL_ESC(i32 %69)
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @F_INSERT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %67
  %76 = load i64*, i64** %4, align 8
  %77 = load i32, i32* %2, align 4
  %78 = call i64 @CTL_ESC(i32 %77)
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @F_UNASSIGNED, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %75
  %84 = load i64*, i64** %4, align 8
  %85 = load i32, i32* %2, align 4
  %86 = call i64 @CTL_ESC(i32 %85)
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @F_XKEY, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %83
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @ASCII, align 4
  %94 = and i32 %92, %93
  %95 = call i64 @CTL_ESC(i32 %94)
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 1
  store i64 %95, i64* %96, align 8
  %97 = load i64*, i64** %4, align 8
  %98 = load i32, i32* %2, align 4
  %99 = call i64 @CTL_ESC(i32 %98)
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @XmapCmd(i32 %102)
  %104 = load i32, i32* @XK_CMD, align 4
  %105 = call i32 @AddXkey(%struct.TYPE_3__* %3, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %91, %83, %75, %67
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %2, align 4
  br label %64

110:                                              ; preds = %64
  %111 = load i64, i64* @F_XKEY, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %114 = load i64, i64* %113, align 16
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %111, i64* %115, align 8
  ret void
}

declare dso_local i64 @CTL_ESC(i32) #1

declare dso_local i32 @AddXkey(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @XmapCmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
