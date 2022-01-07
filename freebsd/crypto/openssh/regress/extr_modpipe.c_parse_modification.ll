; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_modpipe.c_parse_modification.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_modpipe.c_parse_modification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modification = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%16[^:]%*[:]%llu%*[:]%i%*[:]%i\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid modification spec \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid XOR modification value\00", align 1
@MOD_XOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"andor\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid AND modification value\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid OR modification value\00", align 1
@MOD_AND_OR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid modification type \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.modification*)* @parse_modification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_modification(i8* %0, %struct.modification* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.modification*, align 8
  %5 = alloca [17 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.modification* %1, %struct.modification** %4, align 8
  %9 = load %struct.modification*, %struct.modification** %4, align 8
  %10 = call i32 @bzero(%struct.modification* %9, i32 16)
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %13 = load %struct.modification*, %struct.modification** %4, align 8
  %14 = getelementptr inbounds %struct.modification, %struct.modification* %13, i32 0, i32 3
  %15 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %12, i32* %14, i32* %7, i32* %8)
  store i32 %15, i32* %6, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 255
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* @MOD_XOR, align 4
  %40 = load %struct.modification*, %struct.modification** %4, align 8
  %41 = getelementptr inbounds %struct.modification, %struct.modification* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.modification*, %struct.modification** %4, align 8
  %44 = getelementptr inbounds %struct.modification, %struct.modification* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %85

45:                                               ; preds = %20
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %47 = call i64 @strcasecmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 255
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %55
  %62 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 255
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* @MOD_AND_OR, align 4
  %73 = load %struct.modification*, %struct.modification** %4, align 8
  %74 = getelementptr inbounds %struct.modification, %struct.modification* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.modification*, %struct.modification** %4, align 8
  %77 = getelementptr inbounds %struct.modification, %struct.modification* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.modification*, %struct.modification** %4, align 8
  %80 = getelementptr inbounds %struct.modification, %struct.modification* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %45
  %82 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %83 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %71
  br label %85

85:                                               ; preds = %84, %38
  ret void
}

declare dso_local i32 @bzero(%struct.modification*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
