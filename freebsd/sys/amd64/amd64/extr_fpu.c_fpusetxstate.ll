; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpusetxstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpusetxstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.xstate_hdr = type { i32 }

@use_xsave = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@xsave_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpusetxstate(%struct.thread* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xstate_hdr*, align 8
  %9 = alloca %struct.xstate_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load i32, i32* @use_xsave, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %21
  %28 = load i32, i32* @cpu_max_ext_state_size, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 4
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.xstate_hdr*
  store %struct.xstate_hdr* %38, %struct.xstate_hdr** %9, align 8
  %39 = load %struct.xstate_hdr*, %struct.xstate_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.xstate_hdr, %struct.xstate_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @xsave_mask, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %36
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = call i64 @get_pcb_user_save_td(%struct.thread* %50)
  %52 = add nsw i64 %51, 1
  %53 = inttoptr i64 %52 to %struct.xstate_hdr*
  store %struct.xstate_hdr* %53, %struct.xstate_hdr** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.xstate_hdr*, %struct.xstate_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.xstate_hdr, %struct.xstate_hdr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load %struct.xstate_hdr*, %struct.xstate_hdr** %8, align 8
  %60 = getelementptr inbounds %struct.xstate_hdr, %struct.xstate_hdr* %59, i64 1
  %61 = bitcast %struct.xstate_hdr* %60 to i8*
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %62, 4
  %64 = call i32 @bcopy(i8* %58, i8* %61, i64 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %49, %47, %34, %25, %19, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
