; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dsetstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dsetstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { %struct.directory*, %struct.directory*, i64, i32 }
%struct.varent = type { i64** }

@STRdirstack = common dso_local global i32 0, align 4
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@dcwd = common dso_local global %struct.directory* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsetstack() #0 {
  %1 = alloca i64**, align 8
  %2 = alloca %struct.varent*, align 8
  %3 = alloca %struct.directory*, align 8
  %4 = alloca %struct.directory*, align 8
  %5 = load i32, i32* @STRdirstack, align 4
  %6 = call %struct.varent* @adrof(i32 %5)
  store %struct.varent* %6, %struct.varent** %2, align 8
  %7 = icmp eq %struct.varent* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load %struct.varent*, %struct.varent** %2, align 8
  %10 = getelementptr inbounds %struct.varent, %struct.varent* %9, i32 0, i32 0
  %11 = load i64**, i64*** %10, align 8
  %12 = icmp eq i64** %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %0
  br label %93

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %39, %14
  %16 = load %struct.directory*, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 0), align 8
  store %struct.directory* %16, %struct.directory** %3, align 8
  %17 = icmp ne %struct.directory* %16, @dhead
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.directory*, %struct.directory** %3, align 8
  %20 = getelementptr inbounds %struct.directory, %struct.directory* %19, i32 0, i32 0
  %21 = load %struct.directory*, %struct.directory** %20, align 8
  %22 = load %struct.directory*, %struct.directory** %3, align 8
  %23 = getelementptr inbounds %struct.directory, %struct.directory* %22, i32 0, i32 1
  %24 = load %struct.directory*, %struct.directory** %23, align 8
  %25 = getelementptr inbounds %struct.directory, %struct.directory* %24, i32 0, i32 0
  store %struct.directory* %21, %struct.directory** %25, align 8
  %26 = load %struct.directory*, %struct.directory** %3, align 8
  %27 = getelementptr inbounds %struct.directory, %struct.directory* %26, i32 0, i32 1
  %28 = load %struct.directory*, %struct.directory** %27, align 8
  %29 = load %struct.directory*, %struct.directory** %3, align 8
  %30 = getelementptr inbounds %struct.directory, %struct.directory* %29, i32 0, i32 0
  %31 = load %struct.directory*, %struct.directory** %30, align 8
  %32 = getelementptr inbounds %struct.directory, %struct.directory* %31, i32 0, i32 1
  store %struct.directory* %28, %struct.directory** %32, align 8
  %33 = load %struct.directory*, %struct.directory** %3, align 8
  %34 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %35 = icmp ne %struct.directory* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load %struct.directory*, %struct.directory** %3, align 8
  %38 = call i32 @dfree(%struct.directory* %37)
  br label %39

39:                                               ; preds = %36, %18
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.directory*, %struct.directory** @dcwd, align 8
  store %struct.directory* %41, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 1), align 8
  store %struct.directory* %41, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 0), align 8
  %42 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %43 = getelementptr inbounds %struct.directory, %struct.directory* %42, i32 0, i32 0
  store %struct.directory* @dhead, %struct.directory** %43, align 8
  %44 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %45 = getelementptr inbounds %struct.directory, %struct.directory* %44, i32 0, i32 1
  store %struct.directory* @dhead, %struct.directory** %45, align 8
  %46 = load %struct.varent*, %struct.varent** %2, align 8
  %47 = getelementptr inbounds %struct.varent, %struct.varent* %46, i32 0, i32 0
  %48 = load i64**, i64*** %47, align 8
  store i64** %48, i64*** %1, align 8
  br label %49

49:                                               ; preds = %88, %40
  %50 = load i64**, i64*** %1, align 8
  %51 = icmp ne i64** %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i64**, i64*** %1, align 8
  %54 = load i64*, i64** %53, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64**, i64*** %1, align 8
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %52, %49
  %62 = phi i1 [ false, %52 ], [ false, %49 ], [ %60, %56 ]
  br i1 %62, label %63, label %91

63:                                               ; preds = %61
  %64 = call %struct.directory* @xcalloc(i32 32, i32 1)
  store %struct.directory* %64, %struct.directory** %4, align 8
  %65 = load i64**, i64*** %1, align 8
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @Strsave(i64* %66)
  %68 = load %struct.directory*, %struct.directory** %4, align 8
  %69 = getelementptr inbounds %struct.directory, %struct.directory* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.directory*, %struct.directory** %4, align 8
  %71 = getelementptr inbounds %struct.directory, %struct.directory* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %73 = load %struct.directory*, %struct.directory** %4, align 8
  %74 = getelementptr inbounds %struct.directory, %struct.directory* %73, i32 0, i32 0
  store %struct.directory* %72, %struct.directory** %74, align 8
  %75 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %76 = getelementptr inbounds %struct.directory, %struct.directory* %75, i32 0, i32 1
  %77 = load %struct.directory*, %struct.directory** %76, align 8
  %78 = load %struct.directory*, %struct.directory** %4, align 8
  %79 = getelementptr inbounds %struct.directory, %struct.directory* %78, i32 0, i32 1
  store %struct.directory* %77, %struct.directory** %79, align 8
  %80 = load %struct.directory*, %struct.directory** %4, align 8
  %81 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %82 = getelementptr inbounds %struct.directory, %struct.directory* %81, i32 0, i32 1
  store %struct.directory* %80, %struct.directory** %82, align 8
  %83 = load %struct.directory*, %struct.directory** %4, align 8
  %84 = load %struct.directory*, %struct.directory** %4, align 8
  %85 = getelementptr inbounds %struct.directory, %struct.directory* %84, i32 0, i32 1
  %86 = load %struct.directory*, %struct.directory** %85, align 8
  %87 = getelementptr inbounds %struct.directory, %struct.directory* %86, i32 0, i32 0
  store %struct.directory* %83, %struct.directory** %87, align 8
  br label %88

88:                                               ; preds = %63
  %89 = load i64**, i64*** %1, align 8
  %90 = getelementptr inbounds i64*, i64** %89, i32 1
  store i64** %90, i64*** %1, align 8
  br label %49

91:                                               ; preds = %61
  %92 = call i32 (...) @dgetstack()
  br label %93

93:                                               ; preds = %91, %13
  ret void
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i32 @dfree(%struct.directory*) #1

declare dso_local %struct.directory* @xcalloc(i32, i32) #1

declare dso_local i32 @Strsave(i64*) #1

declare dso_local i32 @dgetstack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
