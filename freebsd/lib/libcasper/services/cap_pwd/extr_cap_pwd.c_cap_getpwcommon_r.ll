; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_cap_getpwcommon_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_cap_getpwcommon_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"getpwent_r\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"getpwnam_r\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"getpwuid_r\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pw_name\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@gbuffer = common dso_local global i8* null, align 8
@gbufsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, %struct.passwd*, i8*, i64, %struct.passwd**)* @cap_getpwcommon_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_getpwcommon_r(i32* %0, i8* %1, i8* %2, i64 %3, %struct.passwd* %4, i8* %5, i64 %6, %struct.passwd** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.passwd*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.passwd**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.passwd* %4, %struct.passwd** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.passwd** %7, %struct.passwd*** %17, align 8
  %21 = call i32* @nvlist_create(i32 0)
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @nvlist_add_string(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %8
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %8
  br label %62

33:                                               ; preds = %28
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** %18, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @nvlist_add_string(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  br label %61

45:                                               ; preds = %37
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %45
  %54 = load i32*, i32** %18, align 8
  %55 = load i64, i64* %13, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @nvlist_add_number(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  br label %60

58:                                               ; preds = %49
  %59 = call i32 (...) @abort() #3
  unreachable

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = call i32* @cap_xfer_nvlist(i32* %63, i32* %64)
  store i32* %65, i32** %18, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i64, i64* @errno, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.passwd**, %struct.passwd*** %17, align 8
  store %struct.passwd* null, %struct.passwd** %73, align 8
  %74 = load i64, i64* @errno, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  br label %153

76:                                               ; preds = %62
  %77 = load i32*, i32** %18, align 8
  %78 = call i64 @nvlist_get_number(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @nvlist_destroy(i32* %83)
  %85 = load %struct.passwd**, %struct.passwd*** %17, align 8
  store %struct.passwd* null, %struct.passwd** %85, align 8
  %86 = load i32, i32* %20, align 4
  store i32 %86, i32* %9, align 4
  br label %153

87:                                               ; preds = %76
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @nvlist_exists_string(i32* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @nvlist_destroy(i32* %92)
  %94 = load %struct.passwd**, %struct.passwd*** %17, align 8
  store %struct.passwd* null, %struct.passwd** %94, align 8
  store i32 0, i32* %9, align 4
  br label %153

95:                                               ; preds = %87
  %96 = load i8*, i8** %11, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %11, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %11, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br label %107

107:                                              ; preds = %103, %99, %95
  %108 = phi i1 [ true, %99 ], [ true, %95 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %138, %107
  %111 = load i32*, i32** %18, align 8
  %112 = load %struct.passwd*, %struct.passwd** %14, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i64, i64* %16, align 8
  %115 = call i32 @passwd_unpack(i32* %111, %struct.passwd* %112, i8* %113, i64 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @ERANGE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %110
  br label %141

123:                                              ; preds = %118
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** @gbuffer, align 8
  %126 = icmp eq i8* %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @gbufsize, align 8
  %131 = icmp eq i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = call i32 (...) @passwd_resize()
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %123
  br label %141

138:                                              ; preds = %123
  %139 = load i8*, i8** @gbuffer, align 8
  store i8* %139, i8** %15, align 8
  %140 = load i64, i64* @gbufsize, align 8
  store i64 %140, i64* %16, align 8
  br label %110

141:                                              ; preds = %137, %122
  %142 = load i32*, i32** %18, align 8
  %143 = call i32 @nvlist_destroy(i32* %142)
  %144 = load i32, i32* %20, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.passwd*, %struct.passwd** %14, align 8
  %148 = load %struct.passwd**, %struct.passwd*** %17, align 8
  store %struct.passwd* %147, %struct.passwd** %148, align 8
  br label %151

149:                                              ; preds = %141
  %150 = load %struct.passwd**, %struct.passwd*** %17, align 8
  store %struct.passwd* null, %struct.passwd** %150, align 8
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %151, %91, %82, %68
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @passwd_unpack(i32*, %struct.passwd*, i8*, i64) #1

declare dso_local i32 @passwd_resize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
