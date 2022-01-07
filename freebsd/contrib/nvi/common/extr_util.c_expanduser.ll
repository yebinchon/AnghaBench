; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_util.c_expanduser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_util.c_expanduser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expanduser(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 126
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %108

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %31, %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 47
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %18

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = call i64 (...) @issetugid()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41, %38
  %45 = call i8* (...) @getlogin()
  store i8* %45, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = call %struct.passwd* @getpwnam(i8* %48)
  store %struct.passwd* %49, %struct.passwd** %4, align 8
  %50 = icmp ne %struct.passwd* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %44
  %52 = call i32 (...) @getuid()
  %53 = call %struct.passwd* @getpwuid(i32 %52)
  store %struct.passwd* %53, %struct.passwd** %4, align 8
  %54 = icmp ne %struct.passwd* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %47
  %56 = load %struct.passwd*, %struct.passwd** %4, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  br label %60

59:                                               ; preds = %51
  store i8* null, i8** %2, align 8
  br label %108

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %41
  br label %87

62:                                               ; preds = %34
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i8* @strndup(i8* %63, i32 %69)
  store i8* %70, i8** %7, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i8* null, i8** %2, align 8
  br label %108

73:                                               ; preds = %62
  %74 = load i8*, i8** %7, align 8
  %75 = call %struct.passwd* @getpwnam(i8* %74)
  store %struct.passwd* %75, %struct.passwd** %4, align 8
  %76 = icmp eq %struct.passwd* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @free(i8* %78)
  store i8* null, i8** %2, align 8
  br label %108

80:                                               ; preds = %73
  %81 = load %struct.passwd*, %struct.passwd** %4, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %61
  br label %88

88:                                               ; preds = %101, %87
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 47
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  br label %88

104:                                              ; preds = %98
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i8* @join(i8* %105, i8* %106)
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %104, %77, %72, %59, %13
  %109 = load i8*, i8** %2, align 8
  ret i8* %109
}

declare dso_local i64 @issetugid(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @getlogin(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @join(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
