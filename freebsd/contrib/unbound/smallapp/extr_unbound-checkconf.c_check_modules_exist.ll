; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_modules_exist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_modules_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"module_conf lists module '%s' but that module is not available.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_modules_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_modules_exist(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i8** (...) @module_list_avail()
  store i8** %9, i8*** %3, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %101, %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %111

15:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isspace(i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %16

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %111

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i8**, i8*** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load i8**, i8*** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8**, i8*** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @strncmp(i8* %49, i8* %50, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %63

60:                                               ; preds = %44
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %37

63:                                               ; preds = %59, %37
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %63
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %67, align 16
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 63
  store i8 0, i8* %68, align 1
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %95, %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %70, 63
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = call i64 @isspace(i8 zeroext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78, %72
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %86
  store i8 0, i8* %87, align 1
  br label %98

88:                                               ; preds = %78
  %89 = load i8*, i8** %4, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %93
  store i8 %92, i8* %94, align 1
  br label %95

95:                                               ; preds = %88
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %8, align 8
  br label %69

98:                                               ; preds = %85, %69
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %100 = call i32 @fatal_exit(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %63
  %102 = load i8**, i8*** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = load i8*, i8** %4, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %4, align 8
  br label %11

111:                                              ; preds = %35, %11
  ret void
}

declare dso_local i8** @module_list_avail(...) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fatal_exit(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
