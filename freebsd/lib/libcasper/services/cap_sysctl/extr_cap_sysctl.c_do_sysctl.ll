; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_do_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_do_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_SYSCTL_READ = common dso_local global i64 0, align 8
@CAP_SYSCTL_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"justsize\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"oldlen\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"newp\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"oldp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64*, i8*, i64)* @do_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sysctl(i32* %0, i32* %1, i8* %2, i64* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i64, i64* @CAP_SYSCTL_READ, align 8
  %22 = load i64, i64* %17, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %17, align 8
  br label %24

24:                                               ; preds = %20, %6
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* @CAP_SYSCTL_WRITE, align 8
  %29 = load i64, i64* %17, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %17, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %17, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @nvlist_add_number(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @nvlist_add_null(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %54

44:                                               ; preds = %38, %31
  %45 = load i64*, i64** %11, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32*, i32** %9, align 8
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @nvlist_add_number(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %44
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @nvlist_add_binary(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32* @cap_xfer_nvlist(i32* %63, i32* %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %7, align 4
  br label %109

69:                                               ; preds = %62
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @dnvlist_get_number(i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @nvlist_destroy(i32* %76)
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %109

79:                                               ; preds = %69
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i64*, i64** %11, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %9, align 8
  %87 = call i64 @nvlist_get_number(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i64*, i64** %11, align 8
  store i64 %87, i64* %88, align 8
  br label %106

89:                                               ; preds = %82, %79
  %90 = load i8*, i8** %10, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = call i64* @nvlist_get_binary(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %15)
  store i64* %94, i64** %14, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @memcpy(i8* %95, i64* %96, i64 %97)
  %99 = load i64*, i64** %11, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %15, align 8
  %103 = load i64*, i64** %11, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %92
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %85
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @nvlist_destroy(i32* %107)
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %75, %68
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_null(i32*, i8*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i8*, i64) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @dnvlist_get_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i64* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
