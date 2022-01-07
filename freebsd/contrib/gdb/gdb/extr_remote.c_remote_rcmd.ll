; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_rcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_rcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.remote_state = type { i32 }

@remote_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"remote rcmd is only available after target open\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"qRcmd,\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\22monitor\22 command ``%s'' is too long\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Communication problem with target\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Target does not support this command\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Protocol error with Rcmd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ui_file*)* @remote_rcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_rcmd(i8* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.remote_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %10 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %10, %struct.remote_state** %5, align 8
  %11 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %12 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @alloca(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* @remote_desc, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8*, i8** %3, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 0)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %30, %33
  %35 = add nsw i32 %34, 8
  %36 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %37 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %24
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @bin2hex(i8* %44, i8* %45, i32 0)
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @putpkt(i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %80
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %58 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @getpkt(i8* %56, i32 %59, i32 0)
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %53
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 79
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 75
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i32 @remote_console_output(i8* %82)
  br label %53

84:                                               ; preds = %74, %68
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %148

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 69
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isdigit(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @isdigit(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105, %99, %93, %89
  %114 = load i8*, i8** %7, align 8
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %144, %113
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %121, %115
  %128 = phi i1 [ false, %115 ], [ %126, %121 ]
  br i1 %128, label %129, label %147

129:                                              ; preds = %127
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @fromhex(i8 signext %132)
  %134 = shl i32 %133, 4
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @fromhex(i8 signext %137)
  %139 = add nsw i32 %134, %138
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %9, align 1
  %141 = load i8, i8* %9, align 1
  %142 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %143 = call i32 @fputc_unfiltered(i8 signext %141, %struct.ui_file* %142)
  br label %144

144:                                              ; preds = %129
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8* %146, i8** %8, align 8
  br label %115

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %88
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bin2hex(i8*, i8*, i32) #1

declare dso_local i64 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @remote_console_output(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @fromhex(i8 signext) #1

declare dso_local i32 @fputc_unfiltered(i8 signext, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
