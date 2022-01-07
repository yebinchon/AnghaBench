; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_program_directive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_program_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@program_directive.ttlfmt = internal constant [3 x i8] c"<?\00", align 1
@zCfgProg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"prog title\00", align 1
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @program_directive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @program_directive(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** @zCfgProg, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = sext i32 %9 to i64
  %11 = add i64 3, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @AGALOC(i64 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @memcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @program_directive.ttlfmt, i64 0, i64 0), i64 2)
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  %24 = load i8*, i8** @zCfgProg, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 2
  %27 = call i32 @memcpy(i8* %23, i8* %24, i64 %26)
  br label %28

28:                                               ; preds = %55, %2
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @SPN_WHITESPACE_CHARS(i8* %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @strneqvcmp(i8* %32, i8* %35, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @IS_END_XML_TOKEN_CHAR(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %4, align 8
  br label %58

51:                                               ; preds = %40, %28
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @strstr(i8* %52, i8* %53)
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %28, label %58

58:                                               ; preds = %55, %47
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @AGFREE(i8* %59)
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @NUL, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i8* null, i8** %4, align 8
  br label %80

72:                                               ; preds = %64
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 62
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %80

79:                                               ; preds = %72
  br label %64

80:                                               ; preds = %78, %71
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i8*, i8** %4, align 8
  ret i8* %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @AGALOC(i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i64 @strneqvcmp(i8*, i8*, i32) #1

declare dso_local i64 @IS_END_XML_TOKEN_CHAR(i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @AGFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
