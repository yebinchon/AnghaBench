; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_slc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spc = type { i64*, i64, i32, i32 }

@spc_data = common dso_local global %struct.spc* null, align 8
@NSLC = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@SLC_NOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slc_check() #0 {
  %1 = alloca %struct.spc*, align 8
  %2 = call i32 (...) @slc_start_reply()
  %3 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %4 = getelementptr inbounds %struct.spc, %struct.spc* %3, i64 1
  store %struct.spc* %4, %struct.spc** %1, align 8
  br label %5

5:                                                ; preds = %65, %0
  %6 = load %struct.spc*, %struct.spc** %1, align 8
  %7 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %8 = load i32, i32* @NSLC, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.spc, %struct.spc* %7, i64 %10
  %12 = icmp ult %struct.spc* %6, %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %5
  %14 = load %struct.spc*, %struct.spc** %1, align 8
  %15 = getelementptr inbounds %struct.spc, %struct.spc* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %13
  %19 = load %struct.spc*, %struct.spc** %1, align 8
  %20 = getelementptr inbounds %struct.spc, %struct.spc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.spc*, %struct.spc** %1, align 8
  %23 = getelementptr inbounds %struct.spc, %struct.spc* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %18
  %28 = load %struct.spc*, %struct.spc** %1, align 8
  %29 = getelementptr inbounds %struct.spc, %struct.spc* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.spc*, %struct.spc** %1, align 8
  %33 = getelementptr inbounds %struct.spc, %struct.spc* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.spc*, %struct.spc** %1, align 8
  %35 = getelementptr inbounds %struct.spc, %struct.spc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @_POSIX_VDISABLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @SLC_NOSUPPORT, align 4
  %41 = load %struct.spc*, %struct.spc** %1, align 8
  %42 = getelementptr inbounds %struct.spc, %struct.spc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.spc*, %struct.spc** %1, align 8
  %45 = getelementptr inbounds %struct.spc, %struct.spc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spc*, %struct.spc** %1, align 8
  %48 = getelementptr inbounds %struct.spc, %struct.spc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.spc*, %struct.spc** %1, align 8
  %51 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %52 = ptrtoint %struct.spc* %50 to i64
  %53 = ptrtoint %struct.spc* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 24
  %56 = trunc i64 %55 to i32
  %57 = load %struct.spc*, %struct.spc** %1, align 8
  %58 = getelementptr inbounds %struct.spc, %struct.spc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.spc*, %struct.spc** %1, align 8
  %61 = getelementptr inbounds %struct.spc, %struct.spc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @slc_add_reply(i32 %56, i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %49, %18, %13
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.spc*, %struct.spc** %1, align 8
  %67 = getelementptr inbounds %struct.spc, %struct.spc* %66, i32 1
  store %struct.spc* %67, %struct.spc** %1, align 8
  br label %5

68:                                               ; preds = %5
  %69 = call i32 (...) @slc_end_reply()
  %70 = call i32 @setconnmode(i32 1)
  ret void
}

declare dso_local i32 @slc_start_reply(...) #1

declare dso_local i32 @slc_add_reply(i32, i32, i64) #1

declare dso_local i32 @slc_end_reply(...) #1

declare dso_local i32 @setconnmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
