; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login_access.c_user_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login_access.c_user_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.group = type { i64, i64* }

@YES = common dso_local global i32 0, align 4
@NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.login_info*)* @user_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_match(i8* %0, %struct.login_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.login_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.login_info, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.login_info* %1, %struct.login_info** %5, align 8
  %11 = load %struct.login_info*, %struct.login_info** %5, align 8
  %12 = getelementptr inbounds %struct.login_info, %struct.login_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i8* @strchr(i8* %17, i8 signext 64)
  store i8* %18, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i8*, i8** %10, align 8
  store i8 0, i8* %21, align 1
  %22 = call i32 (...) @myhostname()
  %23 = getelementptr inbounds %struct.login_info, %struct.login_info* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.login_info*, %struct.login_info** %5, align 8
  %26 = call i32 @user_match(i8* %24, %struct.login_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i64 @from_match(i8* %30, %struct.login_info* %7)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %20
  %34 = phi i1 [ false, %20 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %103

36:                                               ; preds = %2
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 64
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @netgroup_match(i8* %44, i8* null, i8* %45)
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %36
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @string_match(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @YES, align 4
  store i32 %53, i32* %3, align 4
  br label %103

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = call %struct.group* @getgrnam(i8* %55)
  store %struct.group* %56, %struct.group** %8, align 8
  %57 = icmp ne %struct.group* %56, null
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = load %struct.login_info*, %struct.login_info** %5, align 8
  %60 = getelementptr inbounds %struct.login_info, %struct.login_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.group*, %struct.group** %8, align 8
  %65 = getelementptr inbounds %struct.group, %struct.group* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @YES, align 4
  store i32 %69, i32* %3, align 4
  br label %103

70:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %94, %70
  %72 = load %struct.group*, %struct.group** %8, align 8
  %73 = getelementptr inbounds %struct.group, %struct.group* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %71
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.group*, %struct.group** %8, align 8
  %83 = getelementptr inbounds %struct.group, %struct.group* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @strcasecmp(i8* %81, i64 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @YES, align 4
  store i32 %92, i32* %3, align 4
  br label %103

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %71

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97, %54
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @NO, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %91, %68, %52, %42, %33
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @myhostname(...) #1

declare dso_local i64 @from_match(i8*, %struct.login_info*) #1

declare dso_local i32 @netgroup_match(i8*, i8*, i8*) #1

declare dso_local i64 @string_match(i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
