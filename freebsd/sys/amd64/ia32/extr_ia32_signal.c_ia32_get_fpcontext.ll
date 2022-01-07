; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_get_fpcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_signal.c_ia32_get_fpcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ia32_mcontext = type { i8*, i64, i32, i32, i32 }

@use_xsave = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@_MC_IA32_HASFPXSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.ia32_mcontext*, i8*, i64)* @ia32_get_fpcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia32_get_fpcontext(%struct.thread* %0, %struct.ia32_mcontext* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.ia32_mcontext*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.ia32_mcontext* %1, %struct.ia32_mcontext** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = call i32 @fpugetregs(%struct.thread* %11)
  %13 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %6, align 8
  %14 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.thread*, %struct.thread** %5, align 8
  %16 = call i64 @get_pcb_user_save_td(%struct.thread* %15)
  %17 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %6, align 8
  %18 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = call i32 @bcopy(i64 %16, i8* %20, i64 8)
  %22 = call i32 (...) @fpuformat()
  %23 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %6, align 8
  %24 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @use_xsave, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %4
  br label %63

31:                                               ; preds = %27
  %32 = load i32, i32* @cpu_max_ext_state_size, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 4
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %44, %45
  %47 = call i32 @bzero(i8* %43, i64 %46)
  br label %48

48:                                               ; preds = %39, %31
  %49 = load i32, i32* @_MC_IA32_HASFPXSTATE, align 4
  %50 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %6, align 8
  %51 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.ia32_mcontext*, %struct.ia32_mcontext** %6, align 8
  %56 = getelementptr inbounds %struct.ia32_mcontext, %struct.ia32_mcontext* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.thread*, %struct.thread** %5, align 8
  %58 = call i64 @get_pcb_user_save_td(%struct.thread* %57)
  %59 = add nsw i64 %58, 1
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @bcopy(i64 %59, i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %48, %30
  ret void
}

declare dso_local i32 @fpugetregs(%struct.thread*) #1

declare dso_local i32 @bcopy(i64, i8*, i64) #1

declare dso_local i64 @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @fpuformat(...) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
