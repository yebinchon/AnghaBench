; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_group/extr_pam_group.c_pam_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_group/extr_pam_group.c_pam_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i32 }
%struct.group = type { i8**, i64 }

@PAM_SUCCESS = common dso_local global i64 0, align 8
@PAM_AUTH_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"root_only\00", align 1
@PAM_IGNORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"luser\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ruser\00", align 1
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"(pam_group) the luser and ruser options are mutually exclusive\00", align 1
@PAM_SERVICE_ERR = common dso_local global i32 0, align 4
@PAM_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"(pam_group) neither luser nor ruser specified, assuming ruser\00", align 1
@PAM_RUSER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fail_safe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pam_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pam_group(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca %struct.group*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @pam_get_user(i32* %12, i8** %7, i32* null)
  %14 = load i64, i64* @PAM_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.passwd* @getpwnam(i8* %20)
  store %struct.passwd* %21, %struct.passwd** %10, align 8
  %22 = icmp eq %struct.passwd* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16, %1
  %24 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %24, i32* %2, align 4
  br label %158

25:                                               ; preds = %19
  %26 = load %struct.passwd*, %struct.passwd** %10, align 8
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @openpam_get_option(i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @PAM_IGNORE, align 4
  store i32 %35, i32* %2, align 4
  br label %158

36:                                               ; preds = %30, %25
  %37 = load i32*, i32** %3, align 8
  %38 = call i8* @openpam_get_option(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %4, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i8* @openpam_get_option(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @PAM_LOG_ERROR, align 4
  %54 = call i32 @openpam_log(i32 %53, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @PAM_SERVICE_ERR, align 4
  store i32 %55, i32* %2, align 4
  br label %158

56:                                               ; preds = %49, %36
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %82

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @PAM_LOG_NOTICE, align 4
  %65 = call i32 @openpam_log(i32 %64, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @PAM_RUSER, align 4
  %69 = call i64 @pam_get_item(i32* %67, i32 %68, i8** %8)
  %70 = load i64, i64* @PAM_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %8, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = call %struct.passwd* @getpwnam(i8* %76)
  store %struct.passwd* %77, %struct.passwd** %10, align 8
  %78 = icmp eq %struct.passwd* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %72, %66
  %80 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %80, i32* %2, align 4
  br label %158

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %3, align 8
  %85 = call i8* @openpam_get_option(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %85, i8** %6, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i8*, i8** %6, align 8
  %90 = call %struct.group* @getgrnam(i8* %89)
  store %struct.group* %90, %struct.group** %11, align 8
  %91 = icmp eq %struct.group* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load %struct.group*, %struct.group** %11, align 8
  %94 = getelementptr inbounds %struct.group, %struct.group* %93, i32 0, i32 0
  %95 = load i8**, i8*** %94, align 8
  %96 = icmp eq i8** %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %88
  br label %152

98:                                               ; preds = %92
  %99 = load %struct.passwd*, %struct.passwd** %10, align 8
  %100 = getelementptr inbounds %struct.passwd, %struct.passwd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.group*, %struct.group** %11, align 8
  %103 = getelementptr inbounds %struct.group, %struct.group* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %143

107:                                              ; preds = %98
  %108 = load %struct.group*, %struct.group** %11, align 8
  %109 = getelementptr inbounds %struct.group, %struct.group* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  store i8** %110, i8*** %9, align 8
  br label %111

111:                                              ; preds = %130, %107
  %112 = load i8**, i8*** %9, align 8
  %113 = icmp ne i8** %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8**, i8*** %9, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i1 [ false, %111 ], [ %117, %114 ]
  br i1 %119, label %120, label %133

120:                                              ; preds = %118
  %121 = load i8**, i8*** %9, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.passwd*, %struct.passwd** %10, align 8
  %124 = getelementptr inbounds %struct.passwd, %struct.passwd* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @strcmp(i8* %122, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %143

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129
  %131 = load i8**, i8*** %9, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %9, align 8
  br label %111

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %157, %133
  %135 = load i32*, i32** %3, align 8
  %136 = call i8* @openpam_get_option(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i64, i64* @PAM_SUCCESS, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %2, align 4
  br label %158

141:                                              ; preds = %134
  %142 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %142, i32* %2, align 4
  br label %158

143:                                              ; preds = %156, %128, %106
  %144 = load i32*, i32** %3, align 8
  %145 = call i8* @openpam_get_option(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %148, i32* %2, align 4
  br label %158

149:                                              ; preds = %143
  %150 = load i64, i64* @PAM_SUCCESS, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %2, align 4
  br label %158

152:                                              ; preds = %97
  %153 = load i32*, i32** %3, align 8
  %154 = call i8* @openpam_get_option(i32* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %143

157:                                              ; preds = %152
  br label %134

158:                                              ; preds = %149, %147, %141, %138, %79, %52, %34, %23
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @pam_get_user(i32*, i8**, i32*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i8* @openpam_get_option(i32*, i8*) #1

declare dso_local i32 @openpam_log(i32, i8*) #1

declare dso_local i64 @pam_get_item(i32*, i32, i8**) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
