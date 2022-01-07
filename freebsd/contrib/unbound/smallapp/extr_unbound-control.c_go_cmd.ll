; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_go_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_go_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UBCT%d \00", align 1
@UNBOUND_CONTROL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"load_cache\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"local_zones\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"local_zones_remove\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"local_datas\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"view_local_datas\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"local_datas_remove\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8**)* @go_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go_cmd(i32* %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1024 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %19 = load i32, i32* @UNBOUND_CONTROL_VERSION, align 4
  %20 = call i32 @snprintf(i8* %18, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @remote_write(i32* %21, i32 %22, i8* %23, i32 %25)
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %52, %5
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @remote_write(i32* %32, i32 %33, i8* %34, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i8**, i8*** %10, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @remote_write(i32* %38, i32 %39, i8* %44, i32 %50)
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i32 @remote_write(i32* %56, i32 %57, i8* %58, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = load i8**, i8*** %10, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @stdin, align 4
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %75 = call i32 @send_file(i32* %71, i32 %72, i32 %73, i8* %74, i32 1024)
  br label %119

76:                                               ; preds = %64, %55
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %77, 1
  br i1 %78, label %79, label %118

79:                                               ; preds = %76
  %80 = load i8**, i8*** %10, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %79
  %86 = load i8**, i8*** %10, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %85
  %92 = load i8**, i8*** %10, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  %98 = load i8**, i8*** %10, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i8**, i8*** %10, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103, %97, %91, %85, %79
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @stdin, align 4
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %114 = call i32 @send_file(i32* %110, i32 %111, i32 %112, i8* %113, i32 1024)
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @send_eof(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %103, %76
  br label %119

119:                                              ; preds = %118, %70
  br label %120

120:                                              ; preds = %119, %144
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %124 = call i64 @remote_read(i32* %121, i32 %122, i8* %123, i32 1024)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %145

127:                                              ; preds = %120
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %132 = call i64 @strncmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %136 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %135)
  store i32 1, i32* %14, align 4
  br label %144

137:                                              ; preds = %130, %127
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %142 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %134
  store i32 0, i32* %15, align 4
  br label %120

145:                                              ; preds = %126
  %146 = load i32, i32* %14, align 4
  ret i32 %146
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @remote_write(i32*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @send_file(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @send_eof(i32*, i32) #1

declare dso_local i64 @remote_read(i32*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
