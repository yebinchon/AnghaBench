; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dnewcwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dnewcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { i32, %struct.TYPE_2__*, %struct.directory* }
%struct.TYPE_2__ = type { %struct.directory* }

@STRdunique = common dso_local global i32 0, align 4
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@dcwd = common dso_local global %struct.directory* null, align 8
@printd = common dso_local global i32 0, align 4
@STRpushdsilent = common dso_local global i32 0, align 4
@DIR_PRINT = common dso_local global i32 0, align 4
@bequiet = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.directory*, i32)* @dnewcwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnewcwd(%struct.directory* %0, i32 %1) #0 {
  %3 = alloca %struct.directory*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.directory*, align 8
  store %struct.directory* %0, %struct.directory** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @STRdunique, align 4
  %8 = call i64 @adrof(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load %struct.directory*, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 2), align 8
  store %struct.directory* %11, %struct.directory** %6, align 8
  br label %12

12:                                               ; preds = %46, %10
  %13 = load %struct.directory*, %struct.directory** %6, align 8
  %14 = icmp ne %struct.directory* %13, @dhead
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.directory*, %struct.directory** %6, align 8
  %17 = load %struct.directory*, %struct.directory** %3, align 8
  %18 = icmp ne %struct.directory* %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.directory*, %struct.directory** %6, align 8
  %21 = getelementptr inbounds %struct.directory, %struct.directory* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.directory*, %struct.directory** %3, align 8
  %24 = getelementptr inbounds %struct.directory, %struct.directory* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @Strcmp(i32 %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load %struct.directory*, %struct.directory** %6, align 8
  %30 = getelementptr inbounds %struct.directory, %struct.directory* %29, i32 0, i32 2
  %31 = load %struct.directory*, %struct.directory** %30, align 8
  %32 = load %struct.directory*, %struct.directory** %6, align 8
  %33 = getelementptr inbounds %struct.directory, %struct.directory* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.directory* %31, %struct.directory** %35, align 8
  %36 = load %struct.directory*, %struct.directory** %6, align 8
  %37 = getelementptr inbounds %struct.directory, %struct.directory* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.directory*, %struct.directory** %6, align 8
  %40 = getelementptr inbounds %struct.directory, %struct.directory* %39, i32 0, i32 2
  %41 = load %struct.directory*, %struct.directory** %40, align 8
  %42 = getelementptr inbounds %struct.directory, %struct.directory* %41, i32 0, i32 1
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.directory*, %struct.directory** %6, align 8
  %44 = call i32 @dfree(%struct.directory* %43)
  br label %50

45:                                               ; preds = %19, %15
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.directory*, %struct.directory** %6, align 8
  %48 = getelementptr inbounds %struct.directory, %struct.directory* %47, i32 0, i32 2
  %49 = load %struct.directory*, %struct.directory** %48, align 8
  store %struct.directory* %49, %struct.directory** %6, align 8
  br label %12

50:                                               ; preds = %28, %12
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.directory*, %struct.directory** %3, align 8
  store %struct.directory* %52, %struct.directory** @dcwd, align 8
  %53 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %54 = getelementptr inbounds %struct.directory, %struct.directory* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dset(i32 %55)
  %57 = call i32 (...) @dgetstack()
  %58 = load i32, i32* @printd, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @STRpushdsilent, align 4
  %60 = call i64 @adrof(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DIR_PRINT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i64, i64* @bequiet, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @printdirs(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 (...) @cwd_cmd()
  ret void
}

declare dso_local i64 @adrof(i32) #1

declare dso_local i64 @Strcmp(i32, i32) #1

declare dso_local i32 @dfree(%struct.directory*) #1

declare dso_local i32 @dset(i32) #1

declare dso_local i32 @dgetstack(...) #1

declare dso_local i32 @printdirs(i32) #1

declare dso_local i32 @cwd_cmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
