; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_sysctl_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_sysctl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"missing keyword to enable/disable\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"firewall\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"net.inet.ip.fw.enable\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"net.inet6.ip6.fw.enable\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"one_pass\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"net.inet.ip.fw.one_pass\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"net.inet.ip.fw.debug\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"net.inet.ip.fw.verbose\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"dyn_keepalive\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"net.inet.ip.fw.dyn_keepalive\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"altq\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"unrecognize enable/disable keyword: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_sysctl_handler(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8**, i8*** %3, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %6, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %67

13:                                               ; preds = %2
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @_substrcmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @sysctlbyname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32* %4, i32 4)
  %20 = call i32 @sysctlbyname(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32* %4, i32 4)
  br label %66

21:                                               ; preds = %13
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @_substrcmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @sysctlbyname(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0, i32* %4, i32 4)
  br label %65

28:                                               ; preds = %21
  %29 = load i8**, i8*** %3, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @_substrcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @sysctlbyname(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 0, i32* %4, i32 4)
  br label %64

35:                                               ; preds = %28
  %36 = load i8**, i8*** %3, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @_substrcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @sysctlbyname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 0, i32* %4, i32 4)
  br label %63

42:                                               ; preds = %35
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @_substrcmp(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @sysctlbyname(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0, i32* %4, i32 4)
  br label %62

49:                                               ; preds = %42
  %50 = load i8**, i8*** %3, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @_substrcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @altq_set_enabled(i32 %55)
  br label %61

57:                                               ; preds = %49
  %58 = load i8**, i8*** %3, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %33
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65, %18
  br label %67

67:                                               ; preds = %66, %11
  ret void
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @_substrcmp(i8*, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @altq_set_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
