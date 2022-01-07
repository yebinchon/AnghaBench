; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/su/extr_su.c_verify_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/su/extr_su.c_verify_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s's password: \00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s to %s: incorrect password\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@GROUP_NOT_MEMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s to %s: not in group %s\00", align 1
@ROOT_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.passwd*, %struct.passwd*)* @verify_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_unix(%struct.passwd* %0, %struct.passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %11 = load %struct.passwd*, %struct.passwd** %5, align 8
  %12 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load %struct.passwd*, %struct.passwd** %5, align 8
  %17 = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %15
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %24 = load %struct.passwd*, %struct.passwd** %5, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @snprintf(i8* %23, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %30 = call i32 @UI_UTIL_read_pw_string(i8* %28, i32 1024, i8* %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %22
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %37 = load %struct.passwd*, %struct.passwd** %5, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @crypt(i8* %36, i8* %39)
  store i8* %40, i8** %8, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i32 0, i32 1024)
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.passwd*, %struct.passwd** %5, align 8
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %43, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %35
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i32, i32* @LOG_AUTH, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.passwd*, %struct.passwd** %4, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.passwd*, %struct.passwd** %5, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %58)
  store i32 1, i32* %3, align 4
  br label %87

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %15, %2
  %62 = load %struct.passwd*, %struct.passwd** %5, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.passwd*, %struct.passwd** %4, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @group_member_p(i32 ptrtoint ([6 x i8]* @.str.2 to i32), i8* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @GROUP_NOT_MEMBER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load i32, i32* @LOG_ERR, align 4
  %76 = load i32, i32* @LOG_AUTH, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.passwd*, %struct.passwd** %4, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.passwd*, %struct.passwd** %5, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %80, i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %87

85:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %74, %49
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @crypt(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @group_member_p(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
