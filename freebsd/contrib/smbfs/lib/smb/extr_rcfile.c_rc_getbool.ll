; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_getbool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_getbool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { i32 }
%struct.rcsection = type { i32 }
%struct.rckey = type { i8* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"invalid boolean value '%s' for key '%s' in section '%s' \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_getbool(%struct.rcfile* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rcsection*, align 8
  %11 = alloca %struct.rckey*, align 8
  %12 = alloca i8*, align 8
  store %struct.rcfile* %0, %struct.rcfile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.rcfile*, %struct.rcfile** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.rcsection* @rc_findsect(%struct.rcfile* %13, i8* %14)
  store %struct.rcsection* %15, %struct.rcsection** %10, align 8
  %16 = load %struct.rcsection*, %struct.rcsection** %10, align 8
  %17 = icmp ne %struct.rcsection* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %5, align 4
  br label %84

20:                                               ; preds = %4
  %21 = load %struct.rcsection*, %struct.rcsection** %10, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.rckey* @rc_sect_findkey(%struct.rcsection* %21, i8* %22)
  store %struct.rckey* %23, %struct.rckey** %11, align 8
  %24 = load %struct.rckey*, %struct.rckey** %11, align 8
  %25 = icmp ne %struct.rckey* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %5, align 4
  br label %84

28:                                               ; preds = %20
  %29 = load %struct.rckey*, %struct.rckey** %11, align 8
  %30 = getelementptr inbounds %struct.rckey, %struct.rckey* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  br label %32

32:                                               ; preds = %44, %28
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %12, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 48
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52, %47
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %84

62:                                               ; preds = %56
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 49
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @strcasecmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strcasecmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67, %62
  %76 = load i32*, i32** %9, align 8
  store i32 1, i32* %76, align 4
  store i32 0, i32* %5, align 4
  br label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %75, %60, %26, %18
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.rcsection* @rc_findsect(%struct.rcfile*, i8*) #1

declare dso_local %struct.rckey* @rc_sect_findkey(%struct.rcsection*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
