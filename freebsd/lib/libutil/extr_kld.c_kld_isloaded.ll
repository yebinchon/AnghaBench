; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_kld.c_kld_isloaded.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_kld.c_kld_isloaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kld_file_stat = type { i32, i8* }
%struct.module_stat = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c".ko\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kld_isloaded(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kld_file_stat, align 8
  %5 = alloca %struct.module_stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = call i32 @kldnext(i32 0)
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %79, %1
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %82

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %4, i32 0, i32 0
  store i32 16, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @kldstat(i32 %15, %struct.kld_file_stat* %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %79

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %4, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %83

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %4, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strstr(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %4, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %34 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %4, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %4, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %45 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i64 @strncmp(i8* %43, i8* %44, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %83

55:                                               ; preds = %41, %31, %26
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @kldfirstmod(i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %75, %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %5, i32 0, i32 0
  store i32 16, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @modstat(i32 %63, %struct.module_stat* %5)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.module_stat, %struct.module_stat* %5, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i64 @strcmp(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %83

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @modfnext(i32 %76)
  store i32 %77, i32* %8, align 4
  br label %58

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %18
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @kldnext(i32 %80)
  store i32 %81, i32* %7, align 4
  br label %10

82:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %73, %54, %25
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @kldnext(i32) #1

declare dso_local i64 @kldstat(i32, %struct.kld_file_stat*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @kldfirstmod(i32) #1

declare dso_local i64 @modstat(i32, %struct.module_stat*) #1

declare dso_local i32 @modfnext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
