; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_str_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_str_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@acl_allow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@acl_deny = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"refuse\00", align 1
@acl_refuse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"deny_non_local\00", align 1
@acl_deny_non_local = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"refuse_non_local\00", align 1
@acl_refuse_non_local = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"allow_snoop\00", align 1
@acl_allow_snoop = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"allow_setrd\00", align 1
@acl_allow_setrd = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"access control type %s unknown\00", align 1
@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"cannot parse access control: %s %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_list*, i8*, i8*, i32)* @acl_list_str_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_list_str_cfg(%struct.acl_list* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acl_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.acl_list* %0, %struct.acl_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @acl_allow, align 4
  store i32 %18, i32* %13, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @acl_deny, align 4
  store i32 %24, i32* %13, align 4
  br label %63

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @acl_refuse, align 4
  store i32 %30, i32* %13, align 4
  br label %62

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @acl_deny_non_local, align 4
  store i32 %36, i32* %13, align 4
  br label %61

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @acl_refuse_non_local, align 4
  store i32 %42, i32* %13, align 4
  br label %60

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @acl_allow_snoop, align 4
  store i32 %48, i32* %13, align 4
  br label %59

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @acl_allow_setrd, align 4
  store i32 %54, i32* %13, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  store i32 0, i32* %5, align 4
  br label %84

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %29
  br label %63

63:                                               ; preds = %62, %23
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %67 = call i32 @netblockstrtoaddr(i8* %65, i32 %66, %struct.sockaddr_storage* %10, i32* %12, i32* %11)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %70, i8* %71)
  store i32 0, i32* %5, align 4
  br label %84

73:                                               ; preds = %64
  %74 = load %struct.acl_list*, %struct.acl_list** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @acl_list_insert(%struct.acl_list* %74, %struct.sockaddr_storage* %10, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %84

83:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %81, %69, %55
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @netblockstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @acl_list_insert(%struct.acl_list*, %struct.sockaddr_storage*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
