; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_find_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_find_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@GV_CFG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"getconfig\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"can't get configuration: %s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Invalid type given\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @find_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_name(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gctl_req*, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @GV_CFG_LEN, align 4
  %24 = sub nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %28, align 1
  %29 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %29, %struct.gctl_req** %8, align 8
  %30 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %31 = call i32 @gctl_ro_param(%struct.gctl_req* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %33 = call i32 @gctl_ro_param(%struct.gctl_req* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %36 = call i32 @gctl_ro_param(%struct.gctl_req* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 -1, i8* %35)
  %37 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %38 = trunc i64 %25 to i32
  %39 = call i32 @gctl_rw_param(%struct.gctl_req* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %38, i8* %27)
  %40 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %41 = call i8* @gctl_issue(%struct.gctl_req* %40)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %22, align 4
  br label %133

47:                                               ; preds = %3
  %48 = load %struct.gctl_req*, %struct.gctl_req** %8, align 8
  %49 = call i32 @gctl_free(%struct.gctl_req* %48)
  store i32 0, i32* %18, align 4
  %50 = call i32 @strlen(i8* %27)
  store i32 %50, i32* %19, align 4
  store i32 0, i32* %16, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %12, align 8
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %127, %47
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %55, 10000
  br i1 %56, label %57, label %130

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %60, i32 %61)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %118, %57
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %63
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %27, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %27, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %27, i64 %83
  store i8* %84, i8** %13, align 8
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %87, %88
  %90 = add nsw i32 %89, 1
  %91 = call i32 @strlcpy(i8* %85, i8* %86, i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %6, align 4
  switch i32 %94, label %104 [
    i32 131, label %95
    i32 128, label %98
    i32 130, label %101
    i32 129, label %101
  ]

95:                                               ; preds = %81
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %97 = call i8* @find_pattern(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %97, i8** %15, align 8
  br label %106

98:                                               ; preds = %81
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %100 = call i8* @find_pattern(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %100, i8** %15, align 8
  br label %106

101:                                              ; preds = %81, %81
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %103 = call i8* @find_pattern(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %103, i8** %15, align 8
  br label %106

104:                                              ; preds = %81
  %105 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %118

106:                                              ; preds = %101, %98, %95
  %107 = load i8*, i8** %15, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %118

110:                                              ; preds = %106
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @strcmp(i8* %111, i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 1, i32* %20, align 4
  br label %116

116:                                              ; preds = %115, %110
  br label %117

117:                                              ; preds = %116, %74
  br label %118

118:                                              ; preds = %117, %109, %104
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %63

121:                                              ; preds = %63
  %122 = load i32, i32* %20, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %12, align 8
  store i8* %125, i8** %4, align 8
  store i32 1, i32* %22, align 4
  br label %133

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %54

130:                                              ; preds = %54
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @free(i8* %131)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %22, align 4
  br label %133

133:                                              ; preds = %130, %124, %44
  %134 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i8*, i8** %4, align 8
  ret i8* %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i32 @gctl_rw_param(%struct.gctl_req*, i8*, i32, i8*) #2

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @gctl_free(%struct.gctl_req*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @find_pattern(i8*, i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
