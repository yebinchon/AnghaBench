; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_auth_timeok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_auth_timeok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_time = type { i32 }
%struct.tm = type { i32 }

@auth_timeok.ltimesno = internal global i32 0, align 4
@auth_timeok.ltimes = internal global %struct.login_time* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"times.allow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"times.deny\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_timeok(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca %struct.login_time*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, -1
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = call %struct.tm* @localtime(i64* %4)
  store %struct.tm* %17, %struct.tm** %6, align 8
  %18 = icmp ne %struct.tm* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.login_time* @login_timelist(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @auth_timeok.ltimesno, %struct.login_time** @auth_timeok.ltimes)
  store %struct.login_time* %21, %struct.login_time** %7, align 8
  %22 = load %struct.login_time*, %struct.login_time** %7, align 8
  %23 = icmp ne %struct.login_time* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.login_time*, %struct.login_time** %7, align 8
  %26 = load %struct.tm*, %struct.tm** %6, align 8
  %27 = call i32 @in_ltms(%struct.login_time* %25, %struct.tm* %26, i32* null)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %42

30:                                               ; preds = %24, %19
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.login_time* @login_timelist(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @auth_timeok.ltimesno, %struct.login_time** @auth_timeok.ltimes)
  store %struct.login_time* %32, %struct.login_time** %7, align 8
  %33 = load %struct.login_time*, %struct.login_time** %7, align 8
  %34 = icmp ne %struct.login_time* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.login_time*, %struct.login_time** %7, align 8
  %37 = load %struct.tm*, %struct.tm** %6, align 8
  %38 = call i32 @in_ltms(%struct.login_time* %36, %struct.tm* %37, i32* null)
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %35, %30
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.login_time*, %struct.login_time** @auth_timeok.ltimes, align 8
  %44 = icmp ne %struct.login_time* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.login_time*, %struct.login_time** @auth_timeok.ltimes, align 8
  %47 = call i32 @free(%struct.login_time* %46)
  store %struct.login_time* null, %struct.login_time** @auth_timeok.ltimes, align 8
  store i32 0, i32* @auth_timeok.ltimesno, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %16
  br label %50

50:                                               ; preds = %49, %13, %10, %2
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local %struct.login_time* @login_timelist(i32*, i8*, i32*, %struct.login_time**) #1

declare dso_local i32 @in_ltms(%struct.login_time*, %struct.tm*, i32*) #1

declare dso_local i32 @free(%struct.login_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
