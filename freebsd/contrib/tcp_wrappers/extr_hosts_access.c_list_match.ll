; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcp_wrappers/extr_hosts_access.c_list_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcp_wrappers/extr_hosts_access.c_list_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_info = type { i32 }

@sep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EXCEPT\00", align 1
@NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.request_info*, i32 (i8*, %struct.request_info*)*)* @list_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_match(i8* %0, %struct.request_info* %1, i32 (i8*, %struct.request_info*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.request_info*, align 8
  %7 = alloca i32 (i8*, %struct.request_info*)*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.request_info* %1, %struct.request_info** %6, align 8
  store i32 (i8*, %struct.request_info*)* %2, i32 (i8*, %struct.request_info*)** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @sep, align 4
  %11 = call i8* @strtok(i8* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @STR_EQ(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @NO, align 4
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %15
  %22 = load i32 (i8*, %struct.request_info*)*, i32 (i8*, %struct.request_info*)** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.request_info*, %struct.request_info** %6, align 8
  %25 = call i32 %22(i8* %23, %struct.request_info* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* @sep, align 4
  %30 = call i8* @strtok(i8* null, i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @STR_NE(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %28

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.request_info*, %struct.request_info** %6, align 8
  %44 = load i32 (i8*, %struct.request_info*)*, i32 (i8*, %struct.request_info*)** %7, align 8
  %45 = call i32 @list_match(i8* null, %struct.request_info* %43, i32 (i8*, %struct.request_info*)* %44)
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ true, %39 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* @sep, align 4
  %53 = call i8* @strtok(i8* null, i32 %52)
  store i8* %53, i8** %8, align 8
  br label %12

54:                                               ; preds = %12
  %55 = load i32, i32* @NO, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %47, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i64 @STR_EQ(i8*, i8*) #1

declare dso_local i64 @STR_NE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
