; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/compat/extr_pathfind.c_pathfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/compat/extr_pathfind.c_pathfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@AG_PATH_MAX = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @pathfind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pathfind(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %16 = load i32, i32* @AG_PATH_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strchr(i8* %21, i8 signext 114)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @R_OK, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strchr(i8* %29, i8 signext 119)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @W_OK, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strchr(i8* %37, i8 signext 120)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @X_OK, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %92, %56, %44
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @extract_colon_unit(i8* %20, i8* %46, i32* %7)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %93

51:                                               ; preds = %45
  %52 = load i8*, i8** %13, align 8
  %53 = call i32* @opendir(i8* %52)
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %45

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32*, i32** %12, align 8
  %60 = call %struct.dirent* @readdir(i32* %59)
  store %struct.dirent* %60, %struct.dirent** %14, align 8
  %61 = load %struct.dirent*, %struct.dirent** %14, align 8
  %62 = icmp eq %struct.dirent* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %86

64:                                               ; preds = %58
  %65 = load %struct.dirent*, %struct.dirent** %14, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strcmp(i32 %67, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i8* @make_absolute(i8* %72, i8* %73)
  store i8* %74, i8** %15, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @access(i8* %75, i32 %76)
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i8*, i8** %15, align 8
  %81 = call i8* @canonicalize_pathname(i8* %80)
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @free(i8* %83)
  br label %86

85:                                               ; preds = %64
  br label %58

86:                                               ; preds = %82, %63
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @closedir(i32* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %93

92:                                               ; preds = %86
  br label %45

93:                                               ; preds = %91, %50
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %95)
  ret i8* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i8* @extract_colon_unit(i8*, i8*, i32*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i8* @make_absolute(i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i8* @canonicalize_pathname(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
