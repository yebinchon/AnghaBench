; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_netgroup_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_netgroup_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NIS netgroup support disabled: no NIS domain\00", align 1
@NO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"NIS netgroup support disabled: invalid NIS domain\00", align 1
@YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @netgroup_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netgroup_match(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %11 = call i64 @getdomainname(i8* %10, i32 1024)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @NO, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, 1024
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %23

39:                                               ; preds = %34, %23
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %41, 1024
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = call i32 @syslog(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @NO, align 4
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %52 = call i32 @innetgr(i8* %48, i8* %49, i8* %50, i8* %51)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @YES, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @NO, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54, %43, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @getdomainname(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @innetgr(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
