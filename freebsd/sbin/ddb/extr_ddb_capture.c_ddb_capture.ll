; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ddb/extr_ddb_capture.c_ddb_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"M:N:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ddb_capture: kvm_openfiles: %s\00", align 1
@namelist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ddb_capture: kvm_nlist\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddb_capture(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %9, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %26 [
    i32 77, label %22
    i32 78, label %24
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %5, align 8
  br label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %6, align 8
  br label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %24, %22
  br label %15

29:                                               ; preds = %15
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @O_RDONLY, align 4
  %49 = call i32* @kvm_openfiles(i8* %46, i8* %47, i32* null, i32 %48, i8* %14)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @namelist, align 4
  %57 = call i64 @kvm_nlist(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  br label %68

62:                                               ; preds = %42
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @ddb_capture_print_kvm(i32* %78)
  br label %82

80:                                               ; preds = %74
  %81 = call i32 (...) @ddb_capture_print_sysctl()
  br label %82

82:                                               ; preds = %80, %77
  br label %101

83:                                               ; preds = %68
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @ddb_capture_status_kvm(i32* %93)
  br label %97

95:                                               ; preds = %89
  %96 = call i32 (...) @ddb_capture_status_sysctl()
  br label %97

97:                                               ; preds = %95, %92
  br label %100

98:                                               ; preds = %83
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %98, %97
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32* @kvm_openfiles(i8*, i8*, i32*, i32, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @kvm_nlist(i32*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ddb_capture_print_kvm(i32*) #2

declare dso_local i32 @ddb_capture_print_sysctl(...) #2

declare dso_local i32 @ddb_capture_status_kvm(i32*) #2

declare dso_local i32 @ddb_capture_status_sysctl(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
