; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_set_filevars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_parser_set_filevars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FILENAME\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CURDIR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"undef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parser_set_filevars(%struct.ucl_parser* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @ucl_realpath(i8* %22, i8* %15)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %47

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = trunc i64 %13 to i32
  %30 = call i32 @ucl_strlcpy(i8* %15, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %33 = call i32 @ucl_parser_register_variable(%struct.ucl_parser* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %15)
  %34 = call i8* @dirname(i8* %15)
  store i8* %34, i8** %10, align 8
  %35 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @ucl_parser_register_variable(%struct.ucl_parser* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %46

38:                                               ; preds = %3
  %39 = trunc i64 %13 to i32
  %40 = call i8* @getcwd(i8* %15, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %42 = call i32 @ucl_parser_register_variable(%struct.ucl_parser* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @ucl_parser_register_variable(%struct.ucl_parser* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %38, %31
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ucl_realpath(i8*, i8*) #2

declare dso_local i32 @ucl_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @ucl_parser_register_variable(%struct.ucl_parser*, i8*, i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i8* @getcwd(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
