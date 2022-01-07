; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_yank.c_v_yank.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_yank.c_v_yank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_17__, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@VC_BUFFER = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4
@CUT_LINEMODE = common dso_local global i32 0, align 4
@L_YANKED = common dso_local global i64 0, align 8
@DBG_FATAL = common dso_local global i32 0, align 4
@VM_RCM_MASK = common dso_local global i32 0, align 4
@VM_RCM_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_yank(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %9 = load i32, i32* @VC_BUFFER, align 4
  %10 = call i64 @F_ISSET(%struct.TYPE_14__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32* [ %14, %12 ], [ null, %15 ]
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = load i32, i32* @VM_LMODE, align 4
  %24 = call i64 @F_ISSET(%struct.TYPE_14__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @CUT_LINEMODE, align 4
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = call i64 @cut(%struct.TYPE_15__* %7, i32* %17, %struct.TYPE_16__* %19, %struct.TYPE_17__* %21, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %95

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %38, %42
  %44 = add nsw i64 %43, 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @L_YANKED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %44
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DBG_FATAL, align 4
  %60 = call i64 @db_get(%struct.TYPE_15__* %54, i32 %58, i32 %59, i32* null, i64* %6)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %95

63:                                               ; preds = %34
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = load i32, i32* @VM_LMODE, align 4
  %66 = call i64 @F_ISSET(%struct.TYPE_14__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = load i32, i32* @VM_RCM_MASK, align 4
  %71 = call i32 @F_CLR(%struct.TYPE_14__* %69, i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = load i32, i32* @VM_RCM_SET, align 4
  %74 = call i32 @F_SET(%struct.TYPE_14__* %72, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %68
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* %6, align 8
  %86 = sub i64 %85, 1
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i64 [ %86, %84 ], [ 0, %87 ]
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %68
  br label %94

94:                                               ; preds = %93, %63
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %62, %33
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @cut(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @db_get(%struct.TYPE_15__*, i32, i32, i32*, i64*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
