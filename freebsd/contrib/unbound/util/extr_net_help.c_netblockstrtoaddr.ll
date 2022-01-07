; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_netblockstrtoaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_netblockstrtoaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"netblock too large: %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot parse netblock: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot parse ip address: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netblockstrtoaddr(i8* %0, i32 %1, %struct.sockaddr_storage* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @str_is_ip6(i8* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 128, i32 32
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 47)
  store i8* %21, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %5
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = call i32 @atoi(i8* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %6, align 4
  br label %89

33:                                               ; preds = %23
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i32 @atoi(i8* %35)
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 0, i32* %6, align 4
  br label %89

49:                                               ; preds = %41, %33
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strlcpy(i8* %50, i8* %51, i32 64)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %54 = call i8* @strchr(i8* %53, i8 signext 47)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i8*, i8** %13, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %49
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %59, %5
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i8*, i8** %13, align 8
  br label %68

66:                                               ; preds = %61
  %67 = load i8*, i8** %7, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i8* [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @ipstrtoaddr(i8* %69, i32 %70, %struct.sockaddr_storage* %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  store i32 0, i32* %6, align 4
  br label %89

78:                                               ; preds = %68
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @addr_mask(%struct.sockaddr_storage* %82, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %75, %46, %30
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @str_is_ip6(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @ipstrtoaddr(i8*, i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @addr_mask(%struct.sockaddr_storage*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
