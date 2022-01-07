; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_setup_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_setup_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32 }

@_PATH_ETC_ENVIRONMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PATH=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"USER=%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"asprintf: out of memory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"HOME=%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SHELL=%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PATH=%s\00", align 1
@_PATH_DEFPATH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"SSH_CLIENT=only_to_make_bash_happy\00", align 1
@do_unique_tkfile = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"KRB5CCNAME=%s\00", align 1
@tkfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8***, %struct.passwd*)* @setup_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_environment(i8*** %0, %struct.passwd* %1) #0 {
  %3 = alloca i8***, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i8*** %0, i8**** %3, align 8
  store %struct.passwd* %1, %struct.passwd** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i8***, i8**** %3, align 8
  store i8** null, i8*** %9, align 8
  %10 = load i32, i32* @_PATH_ETC_ENVIRONMENT, align 4
  %11 = load i8***, i8**** %3, align 8
  %12 = call i32 @read_environment(i32 %10, i8*** %11)
  store i32 %12, i32* %5, align 4
  %13 = load i8***, i8**** %3, align 8
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i8**, i8*** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i8***, i8**** %3, align 8
  %34 = load i8**, i8*** %33, align 8
  store i8** %34, i8*** %8, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 7
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i8** @realloc(i8** %35, i32 %40)
  store i8** %41, i8*** %8, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load %struct.passwd*, %struct.passwd** %4, align 8
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8**, i8*, ...) @asprintf(i8** %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = call i32 @syslog_and_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %32
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load %struct.passwd*, %struct.passwd** %4, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8**, i8*, ...) @asprintf(i8** %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = call i32 @syslog_and_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i8**, i8*** %8, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load %struct.passwd*, %struct.passwd** %4, align 8
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8**, i8*, ...) @asprintf(i8** %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = call i32 @syslog_and_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %67
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load i8**, i8*** %8, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i32, i32* @_PATH_DEFPATH, align 4
  %90 = call i32 (i8**, i8*, ...) @asprintf(i8** %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 @syslog_and_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %83
  br label %95

95:                                               ; preds = %94, %80
  %96 = load i8**, i8*** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = call i32 (i8**, i8*, ...) @asprintf(i8** %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i64, i64* @do_unique_tkfile, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = load i8**, i8*** %8, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i32, i32* @tkfile, align 4
  %111 = call i32 (i8**, i8*, ...) @asprintf(i8** %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = call i32 @syslog_and_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %104
  br label %116

116:                                              ; preds = %115, %95
  %117 = load i8**, i8*** %8, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  store i8* null, i8** %121, align 8
  %122 = load i8**, i8*** %8, align 8
  %123 = load i8***, i8**** %3, align 8
  store i8** %122, i8*** %123, align 8
  ret void
}

declare dso_local i32 @read_environment(i32, i8***) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @syslog_and_die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
