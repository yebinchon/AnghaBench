; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dogetpeers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_dogetpeers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varlist = type { i32 }

@CTL_OP_READVAR = common dso_local global i32 0, align 4
@numhosts = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"server=%s \00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"***No information returned for association %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varlist*, i32, i32*, i32)* @dogetpeers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dogetpeers(%struct.varlist* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.varlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.varlist* %0, %struct.varlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @CTL_OP_READVAR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @doquery(i32 %14, i32 %15, i32 0, i32 0, i32* null, i64* %13, i64* %12, i8** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load i64, i64* %12, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* @numhosts, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** @currenthost, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* %5, align 4
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.varlist*, %struct.varlist** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %13, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %12, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @doprintpeers(%struct.varlist* %35, i32 %36, i32 %38, i64 %39, i8* %40, i32* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %34, %30, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @doquery(i32, i32, i32, i32, i32*, i64*, i64*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @doprintpeers(%struct.varlist*, i32, i32, i64, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
