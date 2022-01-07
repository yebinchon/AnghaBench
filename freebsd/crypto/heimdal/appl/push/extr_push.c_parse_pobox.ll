; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_parse_pobox.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_parse_pobox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"USERNAME\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Who are you?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"po:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8**)* @parse_pobox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_pobox(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load i8**, i8*** %6, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = call i32 (...) @getuid()
  %22 = call %struct.passwd* @getpwuid(i32 %21)
  store %struct.passwd* %22, %struct.passwd** %11, align 8
  %23 = load %struct.passwd*, %struct.passwd** %11, align 8
  %24 = icmp eq %struct.passwd* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.passwd*, %struct.passwd** %11, align 8
  %29 = getelementptr inbounds %struct.passwd, %struct.passwd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @estrdup(i32 %30)
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  br label %33

33:                                               ; preds = %27, %14
  %34 = load i8**, i8*** %6, align 8
  %35 = call i8* @get_pobox(i8** %34)
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  br label %90

37:                                               ; preds = %3
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  store i8* %43, i8** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 64)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  store i8 0, i8* %52, align 1
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %7, align 8
  br label %57

55:                                               ; preds = %46
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 0, i8* %63, align 1
  %65 = load i8*, i8** %9, align 8
  store i8* %65, i8** %8, align 8
  br label %68

66:                                               ; preds = %57
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i8* @get_pobox(i8** %8)
  store i8* %76, i8** %7, align 8
  br label %84

77:                                               ; preds = %72
  %78 = call i8* (...) @get_default_username()
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i8*, i8** %7, align 8
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8**, i8*** %6, align 8
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %33
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @estrdup(i32) #1

declare dso_local i8* @get_pobox(i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @get_default_username(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
