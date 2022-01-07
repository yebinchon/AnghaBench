; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_slc_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_slc_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spc = type { i64, i64, i64, i64* }

@spc_data = common dso_local global %struct.spc* null, align 8
@NSLC = common dso_local global i32 0, align 4
@SLC_NOSUPPORT = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slc_export() #0 {
  %1 = alloca %struct.spc*, align 8
  %2 = call i32 (...) @TerminalDefaultChars()
  %3 = call i32 (...) @slc_start_reply()
  %4 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %5 = getelementptr inbounds %struct.spc, %struct.spc* %4, i64 1
  store %struct.spc* %5, %struct.spc** %1, align 8
  br label %6

6:                                                ; preds = %64, %0
  %7 = load %struct.spc*, %struct.spc** %1, align 8
  %8 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %9 = load i32, i32* @NSLC, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.spc, %struct.spc* %8, i64 %11
  %13 = icmp ult %struct.spc* %7, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %6
  %15 = load %struct.spc*, %struct.spc** %1, align 8
  %16 = getelementptr inbounds %struct.spc, %struct.spc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SLC_NOSUPPORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  %21 = load %struct.spc*, %struct.spc** %1, align 8
  %22 = getelementptr inbounds %struct.spc, %struct.spc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @_POSIX_VDISABLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @SLC_NOSUPPORT, align 8
  %28 = load %struct.spc*, %struct.spc** %1, align 8
  %29 = getelementptr inbounds %struct.spc, %struct.spc* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.spc*, %struct.spc** %1, align 8
  %32 = getelementptr inbounds %struct.spc, %struct.spc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.spc*, %struct.spc** %1, align 8
  %35 = getelementptr inbounds %struct.spc, %struct.spc* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %26
  %37 = load %struct.spc*, %struct.spc** %1, align 8
  %38 = getelementptr inbounds %struct.spc, %struct.spc* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.spc*, %struct.spc** %1, align 8
  %43 = getelementptr inbounds %struct.spc, %struct.spc* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.spc*, %struct.spc** %1, align 8
  %47 = getelementptr inbounds %struct.spc, %struct.spc* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.spc*, %struct.spc** %1, align 8
  %50 = load %struct.spc*, %struct.spc** @spc_data, align 8
  %51 = ptrtoint %struct.spc* %49 to i64
  %52 = ptrtoint %struct.spc* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load %struct.spc*, %struct.spc** %1, align 8
  %57 = getelementptr inbounds %struct.spc, %struct.spc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.spc*, %struct.spc** %1, align 8
  %60 = getelementptr inbounds %struct.spc, %struct.spc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @slc_add_reply(i32 %55, i64 %58, i64 %61)
  br label %63

63:                                               ; preds = %48, %14
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.spc*, %struct.spc** %1, align 8
  %66 = getelementptr inbounds %struct.spc, %struct.spc* %65, i32 1
  store %struct.spc* %66, %struct.spc** %1, align 8
  br label %6

67:                                               ; preds = %6
  %68 = call i32 (...) @slc_end_reply()
  %69 = call i32 (...) @slc_update()
  %70 = call i32 @setconnmode(i32 1)
  ret void
}

declare dso_local i32 @TerminalDefaultChars(...) #1

declare dso_local i32 @slc_start_reply(...) #1

declare dso_local i32 @slc_add_reply(i32, i64, i64) #1

declare dso_local i32 @slc_end_reply(...) #1

declare dso_local i32 @slc_update(...) #1

declare dso_local i32 @setconnmode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
