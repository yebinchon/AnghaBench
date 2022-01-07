; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_doclearvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_doclearvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i64, i8* }

@MAXLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varlist*)* @doclearvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doclearvlist(%struct.varlist* %0) #0 {
  %2 = alloca %struct.varlist*, align 8
  %3 = alloca %struct.varlist*, align 8
  store %struct.varlist* %0, %struct.varlist** %2, align 8
  %4 = load %struct.varlist*, %struct.varlist** %2, align 8
  store %struct.varlist* %4, %struct.varlist** %3, align 8
  br label %5

5:                                                ; preds = %39, %1
  %6 = load %struct.varlist*, %struct.varlist** %3, align 8
  %7 = load %struct.varlist*, %struct.varlist** %2, align 8
  %8 = load i32, i32* @MAXLIST, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.varlist, %struct.varlist* %7, i64 %9
  %11 = icmp ult %struct.varlist* %6, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load %struct.varlist*, %struct.varlist** %3, align 8
  %14 = getelementptr inbounds %struct.varlist, %struct.varlist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi i1 [ false, %5 ], [ %16, %12 ]
  br i1 %18, label %19, label %42

19:                                               ; preds = %17
  %20 = load %struct.varlist*, %struct.varlist** %3, align 8
  %21 = getelementptr inbounds %struct.varlist, %struct.varlist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @free(i8* %23)
  %25 = load %struct.varlist*, %struct.varlist** %3, align 8
  %26 = getelementptr inbounds %struct.varlist, %struct.varlist* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.varlist*, %struct.varlist** %3, align 8
  %28 = getelementptr inbounds %struct.varlist, %struct.varlist* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.varlist*, %struct.varlist** %3, align 8
  %33 = getelementptr inbounds %struct.varlist, %struct.varlist* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.varlist*, %struct.varlist** %3, align 8
  %37 = getelementptr inbounds %struct.varlist, %struct.varlist* %36, i32 0, i32 1
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %19
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.varlist*, %struct.varlist** %3, align 8
  %41 = getelementptr inbounds %struct.varlist, %struct.varlist* %40, i32 1
  store %struct.varlist* %41, %struct.varlist** %3, align 8
  br label %5

42:                                               ; preds = %17
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
