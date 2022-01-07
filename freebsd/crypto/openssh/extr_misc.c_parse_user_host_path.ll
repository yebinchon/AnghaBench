; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_user_host_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_user_host_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_user_host_path(i8* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i8**, i8*** %6, align 8
  store i8* null, i8** %18, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8**, i8*** %7, align 8
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i8**, i8*** %8, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8**, i8*** %8, align 8
  store i8* null, i8** %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @xstrdup(i8* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i8* @colon(i8* %32)
  store i8* %33, i8** %13, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %88

36:                                               ; preds = %29
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %13, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i8*, i8** %13, align 8
  %46 = call i8* @xstrdup(i8* %45)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @strrchr(i8* %47, i8 signext 64)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %13, align 8
  store i8 0, i8* %52, align 1
  %54 = load i8*, i8** %13, align 8
  %55 = call i8* @cleanhostname(i8* %54)
  %56 = call i8* @xstrdup(i8* %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %12, align 8
  %63 = call i8* @xstrdup(i8* %62)
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %61, %51
  br label %69

65:                                               ; preds = %44
  %66 = load i8*, i8** %12, align 8
  %67 = call i8* @cleanhostname(i8* %66)
  %68 = call i8* @xstrdup(i8* %67)
  store i8* %68, i8** %10, align 8
  store i8* null, i8** %9, align 8
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i8**, i8*** %6, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = load i8**, i8*** %6, align 8
  store i8* %73, i8** %74, align 8
  store i8* null, i8** %9, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8**, i8*** %7, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = load i8**, i8*** %7, align 8
  store i8* %79, i8** %80, align 8
  store i8* null, i8** %10, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8**, i8*** %8, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %11, align 8
  %86 = load i8**, i8*** %8, align 8
  store i8* %85, i8** %86, align 8
  store i8* null, i8** %11, align 8
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %87, %35
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @colon(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @cleanhostname(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
