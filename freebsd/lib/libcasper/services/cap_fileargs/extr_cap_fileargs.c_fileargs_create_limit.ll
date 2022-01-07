; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_create_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_create_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_FLAG_NO_UNIQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"operations\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cap_rights\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@MAXPATHLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8**, i32, i64, i32*, i32)* @fileargs_create_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fileargs_create_limit(i32 %0, i8** %1, i32 %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @NV_FLAG_NO_UNIQUE, align 4
  %17 = call i32* @nvlist_create(i32 %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %75

21:                                               ; preds = %6
  %22 = load i32*, i32** %14, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @nvlist_add_number(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @nvlist_add_number(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @nvlist_add_binary(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %32, i32 4)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @O_CREAT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @nvlist_add_number(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i8**, i8*** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = load i64, i64* @MAXPATHLEN, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @nvlist_destroy(i32* %59)
  %61 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %61, i32* @errno, align 4
  store i32* null, i32** %7, align 8
  br label %75

62:                                               ; preds = %49
  %63 = load i32*, i32** %14, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @nvlist_add_null(i32* %63, i8* %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load i32*, i32** %14, align 8
  store i32* %74, i32** %7, align 8
  br label %75

75:                                               ; preds = %73, %58, %20
  %76 = load i32*, i32** %7, align 8
  ret i32* %76
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_add_null(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
