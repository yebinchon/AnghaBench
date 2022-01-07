; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_get_ext_sys_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_get_ext_sys_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_var = type { i32, i8* }

@ext_sys_var = common dso_local global %struct.ctl_var* null, align 8
@EOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_ext_sys_var(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_var*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.ctl_var*, %struct.ctl_var** @ext_sys_var, align 8
  store %struct.ctl_var* %8, %struct.ctl_var** %3, align 8
  br label %9

9:                                                ; preds = %59, %1
  %10 = load i32, i32* @EOV, align 4
  %11 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %62

17:                                               ; preds = %9
  %18 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* null, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @memcmp(i8* %23, i8* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %22
  %31 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 61, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %41 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %5, align 8
  br label %62

46:                                               ; preds = %30
  %47 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %48 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 0, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %62

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %22, %17
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ctl_var*, %struct.ctl_var** %3, align 8
  %61 = getelementptr inbounds %struct.ctl_var, %struct.ctl_var* %60, i32 1
  store %struct.ctl_var* %61, %struct.ctl_var** %3, align 8
  br label %9

62:                                               ; preds = %55, %39, %9
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
