; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_krb5_conf.c_check_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_verify_krb5_conf.c_check_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%d%c%d/\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: failed to parse \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CONSOLE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SYSLOG\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@syslogvals = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"%s: unknown syslog facility \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: unknown syslog severity \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: unknown log type: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @check_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_log(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca [128 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8, i8* %11, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load i8, i8* %11, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i8*, i8** %12, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @krb5_warnx(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %46)
  store i32 1, i32* %4, align 4
  br label %156

48:                                               ; preds = %38
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %12, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 58
  br i1 %68, label %85, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 61
  br i1 %74, label %85, label %75

75:                                               ; preds = %69, %59
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 6
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 61
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %69, %63, %55, %51
  store i32 0, i32* %4, align 4
  br label %156

86:                                               ; preds = %79, %75
  %87 = load i8*, i8** %12, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %151

90:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  %91 = bitcast [128 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %91, i8 0, i64 128, i1 false)
  %92 = bitcast [128 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %92, i8 0, i64 128, i1 false)
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 6
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %12, align 8
  br label %102

102:                                              ; preds = %99, %90
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %104 = call i32 @strsep_copy(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %103, i32 128)
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %108 = call i32 @strsep_copy(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %107, i32 128)
  br label %109

109:                                              ; preds = %106, %102
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %111 = load i8, i8* %110, align 16
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %116 = call i32 @strlcpy(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 128)
  br label %117

117:                                              ; preds = %114, %109
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %119 = load i8, i8* %118, align 16
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %124 = call i32 @strlcpy(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 128)
  br label %125

125:                                              ; preds = %122, %117
  %126 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %127 = load i32, i32* @syslogvals, align 4
  %128 = call i32 @find_value(i8* %126, i32 %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %5, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %134 = call i32 @krb5_warnx(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %132, i8* %133)
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %130, %125
  %138 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %139 = load i32, i32* @syslogvals, align 4
  %140 = call i32 @find_value(i8* %138, i32 %139)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i32, i32* %5, align 4
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %146 = call i32 @krb5_warnx(i32 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %142, %137
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %4, align 4
  br label %156

151:                                              ; preds = %86
  %152 = load i32, i32* %5, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @krb5_warnx(i32 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %153, i8* %154)
  store i32 1, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %149, %85, %43
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strsep_copy(i8**, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @find_value(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
