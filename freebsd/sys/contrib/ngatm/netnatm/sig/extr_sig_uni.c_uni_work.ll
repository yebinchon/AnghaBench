; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32 }
%struct.sig = type { i32, i32, i32, i32, i32, i32, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad signal type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_work(%struct.uni* %0) #0 {
  %2 = alloca %struct.uni*, align 8
  %3 = alloca %struct.sig*, align 8
  store %struct.uni* %0, %struct.uni** %2, align 8
  %4 = load %struct.uni*, %struct.uni** %2, align 8
  %5 = getelementptr inbounds %struct.uni, %struct.uni* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %110

9:                                                ; preds = %1
  %10 = load %struct.uni*, %struct.uni** %2, align 8
  %11 = getelementptr inbounds %struct.uni, %struct.uni* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %104, %9
  %13 = load %struct.uni*, %struct.uni** %2, align 8
  %14 = getelementptr inbounds %struct.uni, %struct.uni* %13, i32 0, i32 1
  %15 = call %struct.sig* @TAILQ_FIRST(i32* %14)
  store %struct.sig* %15, %struct.sig** %3, align 8
  %16 = icmp ne %struct.sig* %15, null
  br i1 %16, label %17, label %107

17:                                               ; preds = %12
  %18 = load %struct.uni*, %struct.uni** %2, align 8
  %19 = getelementptr inbounds %struct.uni, %struct.uni* %18, i32 0, i32 1
  %20 = load %struct.sig*, %struct.sig** %3, align 8
  %21 = load i32, i32* @link, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.sig* %20, i32 %21)
  %23 = load %struct.sig*, %struct.sig** %3, align 8
  %24 = getelementptr inbounds %struct.sig, %struct.sig* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %102 [
    i32 131, label %26
    i32 128, label %38
    i32 129, label %53
    i32 132, label %68
    i32 130, label %85
  ]

26:                                               ; preds = %17
  %27 = load %struct.uni*, %struct.uni** %2, align 8
  %28 = load %struct.sig*, %struct.sig** %3, align 8
  %29 = getelementptr inbounds %struct.sig, %struct.sig* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sig*, %struct.sig** %3, align 8
  %32 = getelementptr inbounds %struct.sig, %struct.sig* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sig*, %struct.sig** %3, align 8
  %35 = getelementptr inbounds %struct.sig, %struct.sig* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @uni_sig_coord(%struct.uni* %27, i32 %30, i32 %33, i32 %36)
  br label %104

38:                                               ; preds = %17
  %39 = load %struct.uni*, %struct.uni** %2, align 8
  %40 = load %struct.sig*, %struct.sig** %3, align 8
  %41 = getelementptr inbounds %struct.sig, %struct.sig* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sig*, %struct.sig** %3, align 8
  %44 = getelementptr inbounds %struct.sig, %struct.sig* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sig*, %struct.sig** %3, align 8
  %47 = getelementptr inbounds %struct.sig, %struct.sig* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sig*, %struct.sig** %3, align 8
  %50 = getelementptr inbounds %struct.sig, %struct.sig* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @uni_sig_start(%struct.uni* %39, i32 %42, i32 %45, i32 %48, i32 %51)
  br label %104

53:                                               ; preds = %17
  %54 = load %struct.uni*, %struct.uni** %2, align 8
  %55 = load %struct.sig*, %struct.sig** %3, align 8
  %56 = getelementptr inbounds %struct.sig, %struct.sig* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sig*, %struct.sig** %3, align 8
  %59 = getelementptr inbounds %struct.sig, %struct.sig* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sig*, %struct.sig** %3, align 8
  %62 = getelementptr inbounds %struct.sig, %struct.sig* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sig*, %struct.sig** %3, align 8
  %65 = getelementptr inbounds %struct.sig, %struct.sig* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @uni_sig_respond(%struct.uni* %54, i32 %57, i32 %60, i32 %63, i32 %66)
  br label %104

68:                                               ; preds = %17
  %69 = load %struct.sig*, %struct.sig** %3, align 8
  %70 = getelementptr inbounds %struct.sig, %struct.sig* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sig*, %struct.sig** %3, align 8
  %73 = getelementptr inbounds %struct.sig, %struct.sig* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sig*, %struct.sig** %3, align 8
  %76 = getelementptr inbounds %struct.sig, %struct.sig* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sig*, %struct.sig** %3, align 8
  %79 = getelementptr inbounds %struct.sig, %struct.sig* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sig*, %struct.sig** %3, align 8
  %82 = getelementptr inbounds %struct.sig, %struct.sig* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @uni_sig_call(i32 %71, i32 %74, i32 %77, i32 %80, i32 %83)
  br label %104

85:                                               ; preds = %17
  %86 = load %struct.sig*, %struct.sig** %3, align 8
  %87 = getelementptr inbounds %struct.sig, %struct.sig* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sig*, %struct.sig** %3, align 8
  %90 = getelementptr inbounds %struct.sig, %struct.sig* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sig*, %struct.sig** %3, align 8
  %93 = getelementptr inbounds %struct.sig, %struct.sig* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sig*, %struct.sig** %3, align 8
  %96 = getelementptr inbounds %struct.sig, %struct.sig* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sig*, %struct.sig** %3, align 8
  %99 = getelementptr inbounds %struct.sig, %struct.sig* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @uni_sig_party(i32 %88, i32 %91, i32 %94, i32 %97, i32 %100)
  br label %104

102:                                              ; preds = %17
  %103 = call i32 @ASSERT(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %85, %68, %53, %38, %26
  %105 = load %struct.sig*, %struct.sig** %3, align 8
  %106 = call i32 @SIG_FREE(%struct.sig* %105)
  br label %12

107:                                              ; preds = %12
  %108 = load %struct.uni*, %struct.uni** %2, align 8
  %109 = getelementptr inbounds %struct.uni, %struct.uni* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %8
  ret void
}

declare dso_local %struct.sig* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sig*, i32) #1

declare dso_local i32 @uni_sig_coord(%struct.uni*, i32, i32, i32) #1

declare dso_local i32 @uni_sig_start(%struct.uni*, i32, i32, i32, i32) #1

declare dso_local i32 @uni_sig_respond(%struct.uni*, i32, i32, i32, i32) #1

declare dso_local i32 @uni_sig_call(i32, i32, i32, i32, i32) #1

declare dso_local i32 @uni_sig_party(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @SIG_FREE(%struct.sig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
