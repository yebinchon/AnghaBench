; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_exec/extr_pam_exec.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_exec/extr_pam_exec.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pe_opts = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"no_warn\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"capture_stdout\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"capture_stderr\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"return_prog_exit_status\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"expose_authtok\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"use_first_pass\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@PAM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: option \22%s\22 enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8***, %struct.pe_opts*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i32* %1, i8*** %2, %struct.pe_opts* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.pe_opts*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store %struct.pe_opts* %3, %struct.pe_opts** %8, align 8
  %10 = load %struct.pe_opts*, %struct.pe_opts** %8, align 8
  %11 = call i32 @memset(%struct.pe_opts* %10, i32 0, i32 20)
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %128, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %131

17:                                               ; preds = %12
  %18 = load i8***, i8**** %7, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load i8***, i8**** %7, align 8
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26, %17
  br label %118

36:                                               ; preds = %26
  %37 = load i8***, i8**** %7, align 8
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.pe_opts*, %struct.pe_opts** %8, align 8
  %47 = getelementptr inbounds %struct.pe_opts, %struct.pe_opts* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %117

48:                                               ; preds = %36
  %49 = load i8***, i8**** %7, align 8
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.pe_opts*, %struct.pe_opts** %8, align 8
  %59 = getelementptr inbounds %struct.pe_opts, %struct.pe_opts* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %116

60:                                               ; preds = %48
  %61 = load i8***, i8**** %7, align 8
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.pe_opts*, %struct.pe_opts** %8, align 8
  %71 = getelementptr inbounds %struct.pe_opts, %struct.pe_opts* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  br label %115

72:                                               ; preds = %60
  %73 = load i8***, i8**** %7, align 8
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.pe_opts*, %struct.pe_opts** %8, align 8
  %83 = getelementptr inbounds %struct.pe_opts, %struct.pe_opts* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  br label %114

84:                                               ; preds = %72
  %85 = load i8***, i8**** %7, align 8
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.pe_opts*, %struct.pe_opts** %8, align 8
  %95 = getelementptr inbounds %struct.pe_opts, %struct.pe_opts* %94, i32 0, i32 4
  store i32 1, i32* %95, align 4
  br label %113

96:                                               ; preds = %84
  %97 = load i8***, i8**** %7, align 8
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load i8***, i8**** %7, align 8
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %109, align 8
  br label %112

112:                                              ; preds = %105, %96
  br label %131

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %81
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115, %57
  br label %117

117:                                              ; preds = %116, %45
  br label %118

118:                                              ; preds = %117, %35
  %119 = load i32, i32* @PAM_LOG_DEBUG, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = load i8***, i8**** %7, align 8
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @openpam_log(i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %120, i8* %126)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %12

131:                                              ; preds = %112, %12
  %132 = load i32, i32* %9, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i8***, i8**** %7, align 8
  %138 = load i8**, i8*** %137, align 8
  %139 = sext i32 %136 to i64
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139
  store i8** %140, i8*** %137, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.pe_opts*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @openpam_log(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
