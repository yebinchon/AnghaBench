; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_user_host_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_parse_user_host_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_user_host_port(i8* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %17 = load i8**, i8*** %7, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i8**, i8*** %7, align 8
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i8**, i8*** %8, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8**, i8*** %8, align 8
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %12, align 8
  store i8* %33, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %108

36:                                               ; preds = %31
  %37 = load i8*, i8** %12, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 64)
  store i8* %38, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %12, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %100

47:                                               ; preds = %40
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @strdup(i8* %48)
  store i8* %49, i8** %13, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %100

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %12, align 8
  br label %55

55:                                               ; preds = %52, %36
  %56 = call i8* @hpdelim(i8** %12)
  store i8* %56, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %55
  br label %100

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @cleanhostname(i8* %65)
  %67 = call i8* @xstrdup(i32 %66)
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @a2port(i8* %76)
  store i32 %77, i32* %15, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %100

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %70, %64
  %82 = load i8**, i8*** %7, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** %13, align 8
  %86 = load i8**, i8*** %7, align 8
  store i8* %85, i8** %86, align 8
  store i8* null, i8** %13, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8**, i8*** %8, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %14, align 8
  %92 = load i8**, i8*** %8, align 8
  store i8* %91, i8** %92, align 8
  store i8* null, i8** %14, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %99, %79, %63, %51, %46
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %100, %35
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @hpdelim(i8**) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @cleanhostname(i8*) #1

declare dso_local i32 @a2port(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
