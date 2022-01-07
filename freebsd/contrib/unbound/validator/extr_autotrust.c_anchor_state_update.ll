; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_anchor_state_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_anchor_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.autr_ta = type { i32, i32, i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"first seen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.autr_ta*, i32*)* @anchor_state_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anchor_state_update(%struct.module_env* %0, %struct.autr_ta* %1, i32* %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.autr_ta*, align 8
  %6 = alloca i32*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.autr_ta* %1, %struct.autr_ta** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %8 = call i32 @log_assert(%struct.autr_ta* %7)
  %9 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %10 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %114 [
    i32 129, label %12
    i32 133, label %23
    i32 128, label %39
    i32 132, label %75
    i32 130, label %97
    i32 131, label %113
  ]

12:                                               ; preds = %3
  %13 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %14 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.module_env*, %struct.module_env** %4, align 8
  %19 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @do_newkey(%struct.module_env* %18, %struct.autr_ta* %19, i32* %20)
  br label %22

22:                                               ; preds = %17, %12
  br label %115

23:                                               ; preds = %3
  %24 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %25 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.module_env*, %struct.module_env** %4, align 8
  %30 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @do_keyrem(%struct.module_env* %29, %struct.autr_ta* %30, i32* %31)
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.module_env*, %struct.module_env** %4, align 8
  %35 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @do_addtime(%struct.module_env* %34, %struct.autr_ta* %35, i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %115

39:                                               ; preds = %3
  %40 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %41 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.module_env*, %struct.module_env** %4, align 8
  %46 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @do_revoked(%struct.module_env* %45, %struct.autr_ta* %46, i32* %47)
  br label %74

49:                                               ; preds = %39
  %50 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %51 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.module_env*, %struct.module_env** %4, align 8
  %56 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @do_keyrem(%struct.module_env* %55, %struct.autr_ta* %56, i32* %57)
  br label %73

59:                                               ; preds = %49
  %60 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %61 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %66 = load i32, i32* @VERB_ALGO, align 4
  %67 = call i32 @verbose_key(%struct.autr_ta* %65, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.module_env*, %struct.module_env** %4, align 8
  %69 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @reset_holddown(%struct.module_env* %68, %struct.autr_ta* %69, i32* %70)
  br label %72

72:                                               ; preds = %64, %59
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %44
  br label %115

75:                                               ; preds = %3
  %76 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %77 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.module_env*, %struct.module_env** %4, align 8
  %82 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @do_revoked(%struct.module_env* %81, %struct.autr_ta* %82, i32* %83)
  br label %96

85:                                               ; preds = %75
  %86 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %87 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.module_env*, %struct.module_env** %4, align 8
  %92 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @do_keypres(%struct.module_env* %91, %struct.autr_ta* %92, i32* %93)
  br label %95

95:                                               ; preds = %90, %85
  br label %96

96:                                               ; preds = %95, %80
  br label %115

97:                                               ; preds = %3
  %98 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %99 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.module_env*, %struct.module_env** %4, align 8
  %104 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @reset_holddown(%struct.module_env* %103, %struct.autr_ta* %104, i32* %105)
  br label %112

107:                                              ; preds = %97
  %108 = load %struct.module_env*, %struct.module_env** %4, align 8
  %109 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @do_remtime(%struct.module_env* %108, %struct.autr_ta* %109, i32* %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %115

113:                                              ; preds = %3
  br label %114

114:                                              ; preds = %3, %113
  br label %115

115:                                              ; preds = %114, %112, %96, %74, %38, %22
  ret void
}

declare dso_local i32 @log_assert(%struct.autr_ta*) #1

declare dso_local i32 @do_newkey(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @do_keyrem(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @do_addtime(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @do_revoked(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @verbose_key(%struct.autr_ta*, i32, i8*) #1

declare dso_local i32 @reset_holddown(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @do_keypres(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @do_remtime(%struct.module_env*, %struct.autr_ta*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
