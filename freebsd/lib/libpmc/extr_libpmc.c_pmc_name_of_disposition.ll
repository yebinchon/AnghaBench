; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_name_of_disposition.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_name_of_disposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMC_DISP_FIRST = common dso_local global i32 0, align 4
@PMC_DISP_LAST = common dso_local global i32 0, align 4
@pmc_disposition_names = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pmc_name_of_disposition(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PMC_DISP_FIRST, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PMC_DISP_LAST, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i8**, i8*** @pmc_disposition_names, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %19

17:                                               ; preds = %7, %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
