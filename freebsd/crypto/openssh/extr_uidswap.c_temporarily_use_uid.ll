; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_uidswap.c_temporarily_use_uid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_uidswap.c_temporarily_use_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i32 }

@privileged = common dso_local global i32 0, align 4
@temporarily_use_uid_effective = common dso_local global i32 0, align 4
@saved_egroupslen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"getgroups: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@saved_egroups = common dso_local global i32* null, align 8
@user_groupslen = common dso_local global i32 0, align 4
@user_groups_uid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"initgroups: %s: %.100s\00", align 1
@user_groups = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"setgroups: %.100s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"setgid %u: %.100s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"setuid %u: %.100s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"setegid %u: %.100s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"seteuid %u: %.100s\00", align 1
@saved_egid = common dso_local global i64 0, align 8
@saved_euid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @temporarily_use_uid(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %3 = call i64 (...) @geteuid()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, i32* @privileged, align 4
  br label %150

6:                                                ; preds = %1
  store i32 1, i32* @privileged, align 4
  store i32 1, i32* @temporarily_use_uid_effective, align 4
  %7 = call i8* @getgroups(i32 0, i32* null)
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* @saved_egroupslen, align 8
  %9 = load i64, i64* @saved_egroupslen, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load i64, i64* @saved_egroupslen, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32*, i32** @saved_egroups, align 8
  %20 = load i64, i64* @saved_egroupslen, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32* @xreallocarray(i32* %19, i32 %21, i32 4)
  store i32* %22, i32** @saved_egroups, align 8
  %23 = load i64, i64* @saved_egroupslen, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** @saved_egroups, align 8
  %26 = call i8* @getgroups(i32 %24, i32* %25)
  %27 = icmp ult i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %18
  br label %36

33:                                               ; preds = %15
  %34 = load i32*, i32** @saved_egroups, align 8
  %35 = call i32 @free(i32* %34)
  store i32* null, i32** @saved_egroups, align 8
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* @user_groupslen, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @user_groups_uid, align 8
  %41 = load %struct.passwd*, %struct.passwd** %2, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %39, %36
  %46 = load %struct.passwd*, %struct.passwd** %2, align 8
  %47 = getelementptr inbounds %struct.passwd, %struct.passwd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.passwd*, %struct.passwd** %2, align 8
  %50 = getelementptr inbounds %struct.passwd, %struct.passwd* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @initgroups(i32 %48, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.passwd*, %struct.passwd** %2, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %54, %45
  %62 = call i8* @getgroups(i32 0, i32* null)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* @user_groupslen, align 4
  %64 = load i32, i32* @user_groupslen, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @user_groupslen, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32*, i32** @user_groups, align 8
  %75 = load i32, i32* @user_groupslen, align 4
  %76 = call i32* @xreallocarray(i32* %74, i32 %75, i32 4)
  store i32* %76, i32** @user_groups, align 8
  %77 = load i32, i32* @user_groupslen, align 4
  %78 = load i32*, i32** @user_groups, align 8
  %79 = call i8* @getgroups(i32 %77, i32* %78)
  %80 = icmp ult i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @strerror(i32 %82)
  %84 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %73
  br label %89

86:                                               ; preds = %70
  %87 = load i32*, i32** @user_groups, align 8
  %88 = call i32 @free(i32* %87)
  store i32* null, i32** @user_groups, align 8
  br label %89

89:                                               ; preds = %86, %85
  %90 = load %struct.passwd*, %struct.passwd** %2, align 8
  %91 = getelementptr inbounds %struct.passwd, %struct.passwd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* @user_groups_uid, align 8
  br label %93

93:                                               ; preds = %89, %39
  %94 = load i32, i32* @user_groupslen, align 4
  %95 = load i32*, i32** @user_groups, align 8
  %96 = call i64 @setgroups(i32 %94, i32* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @strerror(i32 %99)
  %101 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = call i64 (...) @getegid()
  %104 = call i64 @setgid(i64 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = call i64 (...) @getegid()
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @strerror(i32 %109)
  %111 = call i32 (i8*, i32, i32, ...) @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %106, %102
  %113 = call i64 (...) @geteuid()
  %114 = call i64 @setuid(i64 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = call i64 (...) @geteuid()
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 @strerror(i32 %119)
  %121 = call i32 (i8*, i32, i32, ...) @debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load %struct.passwd*, %struct.passwd** %2, align 8
  %124 = getelementptr inbounds %struct.passwd, %struct.passwd* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @setegid(i64 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.passwd*, %struct.passwd** %2, align 8
  %130 = getelementptr inbounds %struct.passwd, %struct.passwd* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* @errno, align 4
  %134 = call i32 @strerror(i32 %133)
  %135 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %128, %122
  %137 = load %struct.passwd*, %struct.passwd** %2, align 8
  %138 = getelementptr inbounds %struct.passwd, %struct.passwd* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @seteuid(i64 %139)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load %struct.passwd*, %struct.passwd** %2, align 8
  %144 = getelementptr inbounds %struct.passwd, %struct.passwd* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 @strerror(i32 %147)
  %149 = call i32 (i8*, i32, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %146, i32 %148)
  br label %150

150:                                              ; preds = %5, %142, %136
  ret void
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i8* @getgroups(i32, i32*) #1

declare dso_local i32 @fatal(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @xreallocarray(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @initgroups(i32, i64) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i64 @getegid(...) #1

declare dso_local i32 @debug(i8*, i32, i32, ...) #1

declare dso_local i64 @setuid(i64) #1

declare dso_local i64 @setegid(i64) #1

declare dso_local i32 @seteuid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
