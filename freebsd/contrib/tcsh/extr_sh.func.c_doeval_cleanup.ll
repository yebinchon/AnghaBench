; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doeval_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doeval_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doeval_state = type { i64, i64, i64, i32, i32, i32, i64, i32, i32, i32 }

@evalvec = common dso_local global i32 0, align 4
@evalp = common dso_local global i32 0, align 4
@doneinp = common dso_local global i64 0, align 8
@didcch = common dso_local global i32 0, align 4
@didfds = common dso_local global i64 0, align 8
@SHIN = common dso_local global i64 0, align 8
@SHOUT = common dso_local global i64 0, align 8
@SHDIAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @doeval_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doeval_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.doeval_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.doeval_state*
  store %struct.doeval_state* %5, %struct.doeval_state** %3, align 8
  %6 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %7 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* @evalvec, align 4
  %9 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %10 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @evalp, align 4
  store i64 0, i64* @doneinp, align 8
  %12 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %13 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* @didcch, align 4
  %15 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %16 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @didfds, align 8
  %18 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %19 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SHIN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i64, i64* @SHIN, align 8
  %25 = call i32 @xclose(i64 %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %28 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SHOUT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* @SHOUT, align 8
  %34 = call i32 @xclose(i64 %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %37 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SHDIAG, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* @SHDIAG, align 8
  %43 = call i32 @xclose(i64 %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %46 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %49 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dmove(i64 %47, i32 %50)
  store i64 %51, i64* @SHIN, align 8
  %52 = call i32 @close_on_exec(i64 %51, i32 1)
  %53 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %54 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %57 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @dmove(i64 %55, i32 %58)
  store i64 %59, i64* @SHOUT, align 8
  %60 = call i32 @close_on_exec(i64 %59, i32 1)
  %61 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %62 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.doeval_state*, %struct.doeval_state** %3, align 8
  %65 = getelementptr inbounds %struct.doeval_state, %struct.doeval_state* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @dmove(i64 %63, i32 %66)
  store i64 %67, i64* @SHDIAG, align 8
  %68 = call i32 @close_on_exec(i64 %67, i32 1)
  %69 = load i64, i64* @didfds, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %44
  %72 = load i64, i64* @SHIN, align 8
  %73 = call i64 @dcopy(i64 %72, i32 0)
  %74 = call i32 @close_on_exec(i64 %73, i32 1)
  %75 = load i64, i64* @SHOUT, align 8
  %76 = call i64 @dcopy(i64 %75, i32 1)
  %77 = call i32 @close_on_exec(i64 %76, i32 1)
  %78 = load i64, i64* @SHDIAG, align 8
  %79 = call i64 @dcopy(i64 %78, i32 2)
  %80 = call i32 @close_on_exec(i64 %79, i32 1)
  br label %81

81:                                               ; preds = %71, %44
  ret void
}

declare dso_local i32 @xclose(i64) #1

declare dso_local i32 @close_on_exec(i64, i32) #1

declare dso_local i64 @dmove(i64, i32) #1

declare dso_local i64 @dcopy(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
