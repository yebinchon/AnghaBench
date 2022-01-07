; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_create_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_create_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@GV_FLAG_V = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@GV_FLAG_S = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"raid5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"drive%d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"stripesize\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"gvinumvolume\00", align 1
@GV_TYPE_VOL = common dso_local global i32 0, align 4
@GV_MAXVOLNAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"creating %s volume failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i8*)* @create_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_volume(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gctl_req*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %12, align 8
  store i8 0, i8* %16, align 1
  %21 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %21, %struct.gctl_req** %7, align 8
  %22 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %23 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %24

24:                                               ; preds = %113, %3
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %116

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @GV_FLAG_F, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %112

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %12, align 8
  br label %111

55:                                               ; preds = %40
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @GV_FLAG_V, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %110

67:                                               ; preds = %55
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @GV_FLAG_S, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call signext i8 @gv_sizespec(i8* %88)
  store i8 %89, i8* %16, align 1
  br label %90

90:                                               ; preds = %82, %75
  br label %109

91:                                               ; preds = %67
  %92 = trunc i64 %18 to i32
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  %95 = call i32 @snprintf(i8* %20, i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @create_drive(i8* %100)
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %145

105:                                              ; preds = %91
  %106 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %106, i8* %20, i32 -1, i8* %107)
  br label %109

109:                                              ; preds = %105, %90
  br label %110

110:                                              ; preds = %109, %63
  br label %111

111:                                              ; preds = %110, %48
  br label %112

112:                                              ; preds = %111, %36
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %24

116:                                              ; preds = %24
  %117 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %118 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 1, i8* %16)
  %119 = load i8*, i8** %12, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @GV_TYPE_VOL, align 4
  %123 = load i32, i32* @GV_MAXVOLNAME, align 4
  %124 = call i8* @find_name(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %122, i32 %123)
  store i8* %124, i8** %12, align 8
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 -1, i8* %127)
  %129 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %130 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 4, i32* %14)
  %131 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %132 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 4, i32* %13)
  %133 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 -1, i8* %134)
  %136 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %137 = call i8* @gctl_issue(%struct.gctl_req* %136)
  store i8* %137, i8** %8, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i8*, i8** %6, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %141, i8* %142)
  br label %144

144:                                              ; preds = %140, %125
  br label %145

145:                                              ; preds = %144, %104
  %146 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %147 = call i32 @gctl_free(%struct.gctl_req* %146)
  %148 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #2

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local signext i8 @gv_sizespec(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @create_drive(i8*) #2

declare dso_local i8* @find_name(i8*, i32, i32) #2

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #2

declare dso_local i32 @warnx(i8*, i8*, i8*) #2

declare dso_local i32 @gctl_free(%struct.gctl_req*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
