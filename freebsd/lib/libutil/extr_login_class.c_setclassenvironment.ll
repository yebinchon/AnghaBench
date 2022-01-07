; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setclassenvironment.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_class.c_setclassenvironment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_vars = type { i8*, i32, i8*, i32* }
%struct.passwd = type { i8*, i8* }

@pathvars = common dso_local global %struct.login_vars* null, align 8
@envars = common dso_local global %struct.login_vars* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"setenv\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setclassenvironment(i32* %0, %struct.passwd* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.login_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.login_vars*, %struct.login_vars** @pathvars, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load %struct.login_vars*, %struct.login_vars** @envars, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi %struct.login_vars* [ %19, %18 ], [ %21, %20 ]
  store %struct.login_vars* %23, %struct.login_vars** %7, align 8
  %24 = load %struct.passwd*, %struct.passwd** %5, align 8
  %25 = icmp ne %struct.passwd* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.passwd*, %struct.passwd** %5, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ %30, %26 ], [ 0, %31 ]
  store i32 %33, i32* %8, align 4
  %34 = load %struct.passwd*, %struct.passwd** %5, align 8
  %35 = icmp ne %struct.passwd* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.passwd*, %struct.passwd** %5, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  store i32 %43, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.passwd*, %struct.passwd** %5, align 8
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i8, i8* %10, align 1
  %59 = add i8 %58, 1
  store i8 %59, i8* %10, align 1
  br label %60

60:                                               ; preds = %57, %46, %42
  br label %61

61:                                               ; preds = %116, %60
  %62 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %63 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %119

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %72 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i8* @login_getpath(i32* %70, i32* %73, i32* null)
  br label %81

75:                                               ; preds = %66
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %78 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i8* @login_getcapstr(i32* %76, i32* %79, i32* null, i32* null)
  br label %81

81:                                               ; preds = %75, %69
  %82 = phi i8* [ %74, %69 ], [ %80, %75 ]
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.passwd*, %struct.passwd** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i8, i8* %10, align 1
  %87 = load i32, i32* %9, align 4
  %88 = call i8* @substvar(i8* %83, %struct.passwd* %84, i32 %85, i8 signext %86, i32 %87)
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %93 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %97 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @setenv(i8* %94, i8* %95, i32 %98)
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @free(i8* %100)
  br label %116

102:                                              ; preds = %81
  %103 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %104 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %109 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %112 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @setenv(i8* %110, i8* %113, i32 0)
  br label %115

115:                                              ; preds = %107, %102
  br label %116

116:                                              ; preds = %115, %91
  %117 = load %struct.login_vars*, %struct.login_vars** %7, align 8
  %118 = getelementptr inbounds %struct.login_vars, %struct.login_vars* %117, i32 1
  store %struct.login_vars* %118, %struct.login_vars** %7, align 8
  br label %61

119:                                              ; preds = %61
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %161, label %122

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  %124 = call i8** @login_getcaplist(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8** %124, i8*** %13, align 8
  %125 = load i8**, i8*** %13, align 8
  %126 = icmp ne i8** %125, null
  br i1 %126, label %127, label %160

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %156, %127
  %129 = load i8**, i8*** %13, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = load i8**, i8*** %13, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @strchr(i8* %134, i8 signext 61)
  store i8* %135, i8** %14, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %14, align 8
  store i8 0, i8* %139, align 1
  %141 = load i8*, i8** %14, align 8
  %142 = load %struct.passwd*, %struct.passwd** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i8, i8* %10, align 1
  %145 = load i32, i32* %9, align 4
  %146 = call i8* @substvar(i8* %141, %struct.passwd* %142, i32 %143, i8 signext %144, i32 %145)
  store i8* %146, i8** %15, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = load i8**, i8*** %13, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 @setenv(i8* %150, i8* %151, i32 1)
  %153 = load i8*, i8** %15, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %148, %138
  br label %156

156:                                              ; preds = %155, %132
  %157 = load i8**, i8*** %13, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i32 1
  store i8** %158, i8*** %13, align 8
  br label %128

159:                                              ; preds = %128
  br label %160

160:                                              ; preds = %159, %122
  br label %161

161:                                              ; preds = %160, %119
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @login_getpath(i32*, i32*, i32*) #1

declare dso_local i8* @login_getcapstr(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @substvar(i8*, %struct.passwd*, i32, i8 signext, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8** @login_getcaplist(i32*, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
