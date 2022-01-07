; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_sig_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_sig_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccsig = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ccdata = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"signal %u/%u lost - ENOMEM\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccsig* (%struct.ccdata*, i8*, i8*, i8*, i8*, i8*, i8*)* @sig_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccsig* @sig_alloc(%struct.ccdata* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.ccsig*, align 8
  %9 = alloca %struct.ccdata*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ccsig*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load %struct.ccdata*, %struct.ccdata** %9, align 8
  %18 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %17, i32 0, i32 0
  %19 = call %struct.ccsig* @TAILQ_FIRST(i32* %18)
  store %struct.ccsig* %19, %struct.ccsig** %16, align 8
  %20 = icmp eq %struct.ccsig* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %7
  %22 = call %struct.ccsig* @CCZALLOC(i32 48)
  store %struct.ccsig* %22, %struct.ccsig** %16, align 8
  %23 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %24 = icmp eq %struct.ccsig* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.ccdata*, %struct.ccdata** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @cc_log(%struct.ccdata* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  store %struct.ccsig* null, %struct.ccsig** %8, align 8
  br label %57

30:                                               ; preds = %21
  br label %37

31:                                               ; preds = %7
  %32 = load %struct.ccdata*, %struct.ccdata** %9, align 8
  %33 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %32, i32 0, i32 0
  %34 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %35 = load i32, i32* @link, align 4
  %36 = call i32 @TAILQ_REMOVE(i32* %33, %struct.ccsig* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %40 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %43 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %46 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %49 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %52 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  %55 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ccsig*, %struct.ccsig** %16, align 8
  store %struct.ccsig* %56, %struct.ccsig** %8, align 8
  br label %57

57:                                               ; preds = %37, %25
  %58 = load %struct.ccsig*, %struct.ccsig** %8, align 8
  ret %struct.ccsig* %58
}

declare dso_local %struct.ccsig* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.ccsig* @CCZALLOC(i32) #1

declare dso_local i32 @cc_log(%struct.ccdata*, i8*, i8*, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccsig*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
