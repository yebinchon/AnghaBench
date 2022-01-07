; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_boot.c_getbootfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_boot.c_getbootfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getbootfile.name = internal global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"bootfile\00", align 1
@default_bootfiles = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @getbootfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getbootfile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @getbootfile.name, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** @getbootfile.name, align 8
  %10 = call i32 @free(i8* %9)
  store i8* null, i8** @getbootfile.name, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** @default_bootfiles, align 8
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %14, %11
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %2, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 59)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %2, align 4
  br label %17

36:                                               ; preds = %23
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 59)
  store i8* %41, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %5, align 8
  br label %52

49:                                               ; preds = %39
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strlen(i8* %50)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  %55 = call i8* @malloc(i64 %54)
  store i8* %55, i8** @getbootfile.name, align 8
  %56 = load i8*, i8** @getbootfile.name, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @strncpy(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** @getbootfile.name, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %52, %36
  %64 = load i8*, i8** @getbootfile.name, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i8*, i8** @getbootfile.name, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** @getbootfile.name, align 8
  %74 = call i32 @free(i8* %73)
  store i8* null, i8** @getbootfile.name, align 8
  br label %75

75:                                               ; preds = %72, %66, %63
  %76 = load i8*, i8** @getbootfile.name, align 8
  ret i8* %76
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
