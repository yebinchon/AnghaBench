; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftpd.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftpd.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.formats = type { i32* }

@PATH_MAX = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bad option - filename too long\00", align 1
@EBADOP = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Filename: '%s'\00", align 1
@formats = common dso_local global %struct.formats* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Bad option - Unknown transfer mode (%s)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Mode: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i8**, i8**)* @parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_header(i32 %0, i8* %1, i32 %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.formats*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %14 = load i8**, i8*** %10, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @get_field(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = call i32 (i32, i8*, ...) @tftp_log(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EBADOP, align 4
  %28 = call i32 @send_error(i32 %26, i32 %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %5
  %31 = load i8*, i8** %7, align 8
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @LOG_INFO, align 4
  %34 = load i8**, i8*** %9, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i32, i8*, ...) @tftp_log(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @get_field(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i8**, i8*** %10, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %11, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %68, %30
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isupper(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call signext i8 @tolower(i8 signext %64)
  %66 = load i8*, i8** %11, align 8
  store i8 %65, i8* %66, align 1
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  br label %53

71:                                               ; preds = %53
  %72 = load %struct.formats*, %struct.formats** @formats, align 8
  store %struct.formats* %72, %struct.formats** %13, align 8
  br label %73

73:                                               ; preds = %88, %71
  %74 = load %struct.formats*, %struct.formats** %13, align 8
  %75 = getelementptr inbounds %struct.formats, %struct.formats* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.formats*, %struct.formats** %13, align 8
  %80 = getelementptr inbounds %struct.formats, %struct.formats* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i8**, i8*** %10, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i32* %81, i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %91

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.formats*, %struct.formats** %13, align 8
  %90 = getelementptr inbounds %struct.formats, %struct.formats* %89, i32 1
  store %struct.formats* %90, %struct.formats** %13, align 8
  br label %73

91:                                               ; preds = %86, %73
  %92 = load %struct.formats*, %struct.formats** %13, align 8
  %93 = getelementptr inbounds %struct.formats, %struct.formats* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load i32, i32* @LOG_ERR, align 4
  %98 = load i8**, i8*** %10, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @tftp_log(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @EBADOP, align 4
  %103 = call i32 @send_error(i32 %101, i32 %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %91
  %106 = load i32, i32* @LOG_INFO, align 4
  %107 = load i8**, i8*** %10, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32, i8*, ...) @tftp_log(i32 %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  ret i8* %111
}

declare dso_local i32 @get_field(i32, i8*, i32) #1

declare dso_local i32 @tftp_log(i32, i8*, ...) #1

declare dso_local i32 @send_error(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
