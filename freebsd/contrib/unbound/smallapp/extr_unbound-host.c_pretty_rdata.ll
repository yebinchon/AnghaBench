; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_pretty_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-host.c_pretty_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" in class %s\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c" has address\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c" has IPv6 address\00", align 1
@LDNS_RR_TYPE_MX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c" mail is handled by\00", align 1
@LDNS_RR_TYPE_PTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c" domain name pointer\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" has %s record\00", align 1
@verb = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32, i8*, i8*, i64)* @pretty_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_rdata(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %7
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %53

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %52

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @LDNS_RR_TYPE_MX, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @LDNS_RR_TYPE_PTR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %45
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %27
  %54 = load i32, i32* %11, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @print_rd(i32 %54, i8* %55, i64 %56)
  %58 = load i64, i64* @verb, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %53
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_rd(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
