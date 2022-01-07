; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_utxdb.c_utx_to_futx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_utxdb.c_utx_to_futx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32 }
%struct.futx = type { i32 }

@user = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @utx_to_futx(%struct.utmpx* %0, %struct.futx* %1) #0 {
  %3 = alloca %struct.utmpx*, align 8
  %4 = alloca %struct.futx*, align 8
  store %struct.utmpx* %0, %struct.utmpx** %3, align 8
  store %struct.futx* %1, %struct.futx** %4, align 8
  %5 = load %struct.futx*, %struct.futx** %4, align 8
  %6 = call i32 @memset(%struct.futx* %5, i32 0, i32 4)
  %7 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %8 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %59 [
    i32 135, label %10
    i32 130, label %10
    i32 131, label %10
    i32 129, label %10
    i32 128, label %11
    i32 133, label %30
    i32 132, label %37
    i32 134, label %52
  ]

10:                                               ; preds = %2, %2, %2, %2
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %13 = load %struct.futx*, %struct.futx** %4, align 8
  %14 = call i32 @UTOF_ID(%struct.utmpx* %12, %struct.futx* %13)
  %15 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %16 = load %struct.futx*, %struct.futx** %4, align 8
  %17 = load i32, i32* @user, align 4
  %18 = call i32 @UTOF_STRING(%struct.utmpx* %15, %struct.futx* %16, i32 %17)
  %19 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %20 = load %struct.futx*, %struct.futx** %4, align 8
  %21 = load i32, i32* @line, align 4
  %22 = call i32 @UTOF_STRING(%struct.utmpx* %19, %struct.futx* %20, i32 %21)
  %23 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %24 = load %struct.futx*, %struct.futx** %4, align 8
  %25 = load i32, i32* @host, align 4
  %26 = call i32 @UTOF_STRING(%struct.utmpx* %23, %struct.futx* %24, i32 %25)
  %27 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %28 = load %struct.futx*, %struct.futx** %4, align 8
  %29 = call i32 @UTOF_PID(%struct.utmpx* %27, %struct.futx* %28)
  br label %63

30:                                               ; preds = %2
  %31 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %32 = load %struct.futx*, %struct.futx** %4, align 8
  %33 = call i32 @UTOF_ID(%struct.utmpx* %31, %struct.futx* %32)
  %34 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %35 = load %struct.futx*, %struct.futx** %4, align 8
  %36 = call i32 @UTOF_PID(%struct.utmpx* %34, %struct.futx* %35)
  br label %63

37:                                               ; preds = %2
  %38 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %39 = load %struct.futx*, %struct.futx** %4, align 8
  %40 = call i32 @UTOF_ID(%struct.utmpx* %38, %struct.futx* %39)
  %41 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %42 = load %struct.futx*, %struct.futx** %4, align 8
  %43 = load i32, i32* @user, align 4
  %44 = call i32 @UTOF_STRING(%struct.utmpx* %41, %struct.futx* %42, i32 %43)
  %45 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %46 = load %struct.futx*, %struct.futx** %4, align 8
  %47 = load i32, i32* @line, align 4
  %48 = call i32 @UTOF_STRING(%struct.utmpx* %45, %struct.futx* %46, i32 %47)
  %49 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %50 = load %struct.futx*, %struct.futx** %4, align 8
  %51 = call i32 @UTOF_PID(%struct.utmpx* %49, %struct.futx* %50)
  br label %63

52:                                               ; preds = %2
  %53 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %54 = load %struct.futx*, %struct.futx** %4, align 8
  %55 = call i32 @UTOF_ID(%struct.utmpx* %53, %struct.futx* %54)
  %56 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %57 = load %struct.futx*, %struct.futx** %4, align 8
  %58 = call i32 @UTOF_PID(%struct.utmpx* %56, %struct.futx* %57)
  br label %63

59:                                               ; preds = %2
  %60 = load i32, i32* @EMPTY, align 4
  %61 = load %struct.futx*, %struct.futx** %4, align 8
  %62 = getelementptr inbounds %struct.futx, %struct.futx* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %69

63:                                               ; preds = %52, %37, %30, %11, %10
  %64 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %65 = load %struct.futx*, %struct.futx** %4, align 8
  %66 = call i32 @UTOF_TYPE(%struct.utmpx* %64, %struct.futx* %65)
  %67 = load %struct.futx*, %struct.futx** %4, align 8
  %68 = call i32 @UTOF_TV(%struct.futx* %67)
  br label %69

69:                                               ; preds = %63, %59
  ret void
}

declare dso_local i32 @memset(%struct.futx*, i32, i32) #1

declare dso_local i32 @UTOF_ID(%struct.utmpx*, %struct.futx*) #1

declare dso_local i32 @UTOF_STRING(%struct.utmpx*, %struct.futx*, i32) #1

declare dso_local i32 @UTOF_PID(%struct.utmpx*, %struct.futx*) #1

declare dso_local i32 @UTOF_TYPE(%struct.utmpx*, %struct.futx*) #1

declare dso_local i32 @UTOF_TV(%struct.futx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
